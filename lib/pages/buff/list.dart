import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:lol_chess/pages/hero/detail.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class BuffList extends StatefulWidget {

  BuffList({@required this.type});

  int type;

  @override
  _BuffListState createState() => _BuffListState();
}

class _BuffListState extends State<BuffList> with AutomaticKeepAliveClientMixin {

  @override
  bool get wantKeepAlive => true;

  List<Map<String,dynamic>> _races = [];
  List<Map<String,dynamic>> _jobs = [];
  int _type = 0;

  @override
  initState(){
    super.initState();
    if(widget.type == 0){
      _fetchRaceInfo();
    }else{
      _fetchJobInfo();
    }
    initType();
  }

  initType(){
    setState(() {
      _type = widget.type;
    });
  }

  _fetchRaceInfo()async{
    setState(() {
      _races = [];
    });
    var databasesPath = await getDatabasesPath();
    var path = join(databasesPath,'chess.db');
    var db = await openDatabase(path, readOnly: true);
    List<Map<String,dynamic>> races = await db.query('races');
    var __copy = races.map((race){
      Map<String,dynamic> race_copy = Map<String,dynamic>.from(race);
      race_copy['job_race_id'] = '';
      race_copy['buffs'] = [];
      race_copy['heroes'] = [];
      String _type = 'App\\Models\\Race';
      String sql1 = 'select * from job_races where buffable_id=${race['id']} and buffable_type="${_type}"';
      db.rawQuery(sql1).then((job_races){
        setState(() {
          _races.where((i){
            return i['id'] == job_races[0]['buffable_id'];
          }).first['job_race_id'] = job_races[0]['id'];
        });
        var __jr = job_races.map((jr){
          //获取buff信息
          String sql3 = 'select number,effect from buffs where job_race_id = ${jr['id']}';
          db.rawQuery(sql3).then((buffs){
            setState(() {
              _races.where((i){
                return i['id'] == jr['buffable_id'];
              }).first['buffs'] = buffs;
            });
          });
          //获取英雄信息
          var sql4 = 'select heroes.* from heroes left join hero_job_races on hero_job_races.hero_id = heroes.id where job_race_id=${jr['id']}';
          db.rawQuery(sql4).then((heroes){
            var __heroes_copy = heroes.map((copy){
              Map<String,dynamic> _copy = Map<String,dynamic>.from(copy);
              setState(() {
                _races.where((i){
                  return i['id'] == jr['buffable_id'];
                }).first['heroes'].add(_copy);
              });
            });
            print(__heroes_copy);
          });
        });
        print(__jr);
      });
      setState(() {
        _races.add(race_copy);
      });
      return race;
    });
    print(__copy);
  }

  _fetchJobInfo()async{
    setState(() {
      _jobs = [];
    });
    var databasesPath = await getDatabasesPath();
    var path = join(databasesPath,'chess.db');
    var db = await openDatabase(path, readOnly: true);
    List<Map<String,dynamic>> jobs = await db.query('jobs');
    var __copy = jobs.map((job){
      Map<String,dynamic> job_copy = Map<String,dynamic>.from(job);
      job_copy['job_race_id'] = '';
      job_copy['buffs'] = [];
      job_copy['heroes'] = [];
      String _type = 'App\\Models\\Job';
      String sql1 = 'select * from job_races where buffable_id=${job['id']} and buffable_type="${_type}"';
      db.rawQuery(sql1).then((job_races){
        setState(() {
          _jobs.where((i){
            return i['id'] == job_races[0]['buffable_id'];
          }).first['job_race_id'] = job_races[0]['id'];
        });
        var __jr = job_races.map((jr){
          //获取buff信息
          String sql3 = 'select number,effect from buffs where job_race_id = ${jr['id']}';
          db.rawQuery(sql3).then((buffs){
            setState(() {
              _jobs.where((i){
                return i['id'] == jr['buffable_id'];
              }).first['buffs'] = buffs;
            });
          });
          //获取英雄信息
          var sql4 = 'select heroes.* from heroes left join hero_job_races on hero_job_races.hero_id = heroes.id where job_race_id=${jr['id']}';
          db.rawQuery(sql4).then((heroes){
            var __heroes_copy = heroes.map((copy){
              Map<String,dynamic> _copy = Map<String,dynamic>.from(copy);
              setState(() {
                _jobs.where((i){
                  return i['id'] == jr['buffable_id'];
                }).first['heroes'].add(_copy);
              });
            });
            print(__heroes_copy);
          });
        });
        print(__jr);
      });
      setState(() {
        _jobs.add(job_copy);
      });
      return job;
    });
    print(__copy);
  }

  Widget _buildBuffItem(item,context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.2),
              borderRadius: BorderRadius.all(Radius.circular(10))
          ),
          width: MediaQuery
              .of(context)
              .size
              .width - 40,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Image.network(item['img'], width: 50, height: 50,),
                      Text(item['name'], style: TextStyle(
                          color: Colors.brown,
                        fontWeight: FontWeight.w400,
                        fontSize: 16
                      ),)
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[...item['buffs'].map((buff) => _buildBuffDescItem(buff)).toList()]
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Wrap(
                spacing: 2,
                runSpacing: 2,
                children: <Widget>[...item['heroes'].map((hero) => _buildHeroItem(hero, context)).toList(),]
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }

  Widget _buildBuffDescItem(buff){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
            child: Row(
              children: <Widget>[
                Text('${buff['number']}个',style: TextStyle(
                    color: Colors.orange
                ),),
                Expanded(
                  child: Text(buff['effect'],
                    softWrap: true, maxLines: 3,),
                ),
              ],
            )
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }

  Widget _buildHeroItem(hero,context){
    return GestureDetector(
      child: Container(
        width: 40,
        height: 40,
        margin: EdgeInsets.only(right: 2),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: ExtendedImage.network(hero['img'],cache: true,),
        ),
      ),
      onTap: ()async{
        print(_jobs);
        var databasesPath = await getDatabasesPath();
        var path = join(databasesPath,'chess.db');
        var db = await openDatabase(path, readOnly: true);
        var sql = 'select job_races.* from hero_job_races left join job_races on hero_job_races.job_race_id = job_races.id where hero_id = ${hero['id']}';
        List<String> jbs = [];
        db.rawQuery(sql).then((item_job_races){
          var ijr = item_job_races.map((jr){
            if(jr['buffable_type'] == 'App\\Models\\Race'){
              var sql2 = 'select * from races where id=${jr['buffable_id']}';
              db.rawQuery(sql2).then((races){
                jbs.add(races[0]['name']);
              });
            }else{
              var sql2 = 'select * from jobs where id=${jr['buffable_id']}';
              db.rawQuery(sql2).then((jobs){
                setState(() {
                  jbs.add(jobs[0]['name']);
                });
              });
            }
            return jr;
          });
          print(ijr);
        });
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => HeroDetail(
          heroId: hero['id'],
          heroHeader: HeroHeader(
            name: hero['name'],
            nickname: hero['nickname'],
            img: hero['img'],
            jbs: jbs.join('/'),
            color: hero['price'] == '1' ? Colors.grey :
            hero['price'] == '2' ? Colors.green :
            hero['price'] == '3' ? Colors.blue :
            hero['price'] == '4' ? Colors.purple : Colors.orange
          ),
        )));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _type == 0 ? _races.map((item) => _buildBuffItem(item,context)).toList() :
          _jobs.map((item) => _buildBuffItem(item,context)).toList()
    );
  }
}
