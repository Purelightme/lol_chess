import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import 'detail.dart';

class HeroIndex extends StatefulWidget {
  @override
  _HeroIndexState createState() => _HeroIndexState();
}

class _HeroIndexState extends State<HeroIndex> {

  List<Map<String,dynamic>> _races = [];
  List<Map<String,dynamic>> _jobs = [];
  List<Map<String,dynamic>> _heroes = [];
  List<Widget> _money = [];


  bool _isDisplay = false;
  int _selectType = 1;

  @override
  void initState() {
    super.initState();
    initData();
    initMoneyWidgets();
    initHeroes();
  }

  initMoneyWidgets(){
    setState(() {
      _money = [
        _buildColorItem(1,'1费', Colors.grey),
        _buildColorItem(2,'2费', Colors.green),
        _buildColorItem(3,'3费', Colors.blue),
        _buildColorItem(4,'4费', Colors.purple),
        _buildColorItem(5,'5费', Colors.orange),
      ];
    });
  }

  initHeroes()async{
    var databasesPath = await getDatabasesPath();
    var path = join(databasesPath,'chess.db');
    var db = await openDatabase(path, readOnly: true);
    List<Map<String,dynamic>> heroes = await db.query('heroes');
    var heroes_copy = List<Map<String,dynamic>>.from(heroes);
    var real_heroes = heroes_copy.map((item){
      Map<String,dynamic> item_copy = Map<String,dynamic>.from(item);
      item_copy['jbs'] = [];
      var sql2 = 'select job_races.* from hero_job_races left join job_races on hero_job_races.job_race_id = job_races.id where hero_id = ${item['id']}';
      db.rawQuery(sql2).then((item_job_races){
        print('种族职业：' + item_job_races.length.toString());
        var ijr = item_job_races.map((jr){
          if(jr['buffable_type'] == 'App\\Models\\Race'){
            var sql3 = 'select * from races where id=${jr['buffable_id']}';
            db.rawQuery(sql3).then((races){
              setState(() {
                _heroes.where((i){
                  return i['id'] == item_copy['id'];
                }).first['jbs'].add(races[0]['name']);
              });
            });
          }else{
            var sql3 = 'select * from jobs where id=${jr['buffable_id']}';
            db.rawQuery(sql3).then((jobs){
              setState(() {
                _heroes.where((i){
                  return i['id'] == item_copy['id'];
                }).first['jbs'].add(jobs[0]['name']);
              });
            });
          }
          return jr;
        });
        print(ijr);
      });
      setState(() {
        print(item_copy);
        _heroes.add(item_copy);
      });
      return item_copy;
    });
    print(real_heroes);
  }


  Widget _buildColorItem(int money,String text,Color color){
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
        decoration: BoxDecoration(
            border: Border.all(color: color,width: 1),
            borderRadius: BorderRadius.all(Radius.circular(5))
        ),
        child: Text(text,style: TextStyle(
            color: Colors.grey,
            fontSize: 16
        ),),
      ),
      onTap: (){
        _fetchMoneyHeroes(money);
        setState(() {
          _isDisplay = false;
        });
      },
    );
  }

  initData()async{
    var databasesPath = await getDatabasesPath();
    var path = join(databasesPath,'chess.db');
    var db = await openDatabase(path, readOnly: true);
    List<Map<String,dynamic>> races = await db.query('races');
    List<Map<String,dynamic>> jobs = await db.query('jobs');
    setState(() {
      _races = List<Map<String, dynamic>>.from(races);
      _jobs = List<Map<String,dynamic>>.from(jobs);
    });
  }
  
  Widget _buildItem(Map<String,dynamic> item){
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey,width: 1),
            borderRadius: BorderRadius.all(Radius.circular(5))
        ),
        child: Text(item['name'],style: TextStyle(
            color: Colors.grey,
            fontSize: 16
        ),),
      ),
      onTap: (){
        if(_selectType == 1){
          _fetchRaceHeroes(item['id']);
        }else{
          _fetchJobHeroes(item['id']);
        }
        setState(() {
          _isDisplay = false;
        });
      },
    );
  }

  _fetchRaceHeroes(String raceId)async{
    setState(() {
      _heroes.clear();
    });
    var databasesPath = await getDatabasesPath();
    var path = join(databasesPath,'chess.db');
    var db = await openDatabase(path, readOnly: true);
    var type = 'App\\Models\\Race';
    var sql1 = 'select * from job_races where buffable_id=${raceId} and buffable_type="${type}"';
    List<Map<String,dynamic>> job_races = await db.rawQuery(sql1);
    var job_race_id = job_races[0]['id'];
    var sql = 'select heroes.* from heroes left join hero_job_races on hero_job_races.hero_id = heroes.id where job_race_id=${job_race_id}';
    List<Map<String,dynamic>> heroes = await db.rawQuery(sql);
    var heroes_copy = List<Map<String,dynamic>>.from(heroes);
    var real_heroes = heroes_copy.map((item){
      Map<String,dynamic> item_copy = Map<String,dynamic>.from(item);
      item_copy['jbs'] = [];
      var sql2 = 'select job_races.* from hero_job_races left join job_races on hero_job_races.job_race_id = job_races.id where hero_id = ${item['id']}';
      db.rawQuery(sql2).then((item_job_races){
        print('种族职业：' + item_job_races.length.toString());
        var ijr = item_job_races.map((jr){
          if(jr['buffable_type'] == 'App\\Models\\Race'){
            var sql3 = 'select * from races where id=${jr['buffable_id']}';
            db.rawQuery(sql3).then((races){
              setState(() {
                _heroes.where((i){
                  return i['id'] == item_copy['id'];
                }).first['jbs'].add(races[0]['name']);
              });
            });
          }else{
            var sql3 = 'select * from jobs where id=${jr['buffable_id']}';
            db.rawQuery(sql3).then((jobs){
              setState(() {
                _heroes.where((i){
                  return i['id'] == item_copy['id'];
                }).first['jbs'].add(jobs[0]['name']);
              });
            });
          }
          return jr;
        });
        print(ijr);
      });
      setState(() {
        print(item_copy);
        _heroes.add(item_copy);
      });
      return item_copy;
    });
    print(real_heroes);
  }

  _fetchJobHeroes(String jobId)async{
    setState(() {
      _heroes.clear();
    });
    var databasesPath = await getDatabasesPath();
    var path = join(databasesPath,'chess.db');
    var db = await openDatabase(path, readOnly: true);
    var type = 'App\\Models\\Job';
    var sql1 = 'select * from job_races where buffable_id=${jobId} and buffable_type="${type}"';
    List<Map<String,dynamic>> job_races = await db.rawQuery(sql1);
    var job_race_id = job_races[0]['id'];
    print(job_race_id);
    var sql = 'select heroes.* from heroes left join hero_job_races on hero_job_races.hero_id = heroes.id where job_race_id=${job_race_id}';
    List<Map<String,dynamic>> heroes = await db.rawQuery(sql);
    var heroes_copy = List<Map<String,dynamic>>.from(heroes);
    var real_heroes = heroes_copy.map((item){
      Map<String,dynamic> item_copy = Map<String,dynamic>.from(item);
      item_copy['jbs'] = [];
      var sql2 = 'select job_races.* from hero_job_races left join job_races on hero_job_races.job_race_id = job_races.id where hero_id = ${item['id']}';
      db.rawQuery(sql2).then((item_job_races){
        print('种族职业：' + item_job_races.length.toString());
        var ijr = item_job_races.map((jr){
          if(jr['buffable_type'] == 'App\\Models\\Race'){
            var sql3 = 'select * from races where id=${jr['buffable_id']}';
            db.rawQuery(sql3).then((races){
              setState(() {
                _heroes.where((i){
                  return i['id'] == item_copy['id'];
                }).first['jbs'].add(races[0]['name']);
              });
            });
          }else{
            var sql3 = 'select * from jobs where id=${jr['buffable_id']}';
            db.rawQuery(sql3).then((jobs){
              setState(() {
                _heroes.where((i){
                  return i['id'] == item_copy['id'];
                }).first['jbs'].add(jobs[0]['name']);
              });
            });
          }
          return jr;
        });
        print(ijr);
      });
      setState(() {
        _heroes.add(item_copy);
      });
      return item_copy;
    });
    print(real_heroes);
  }

  _fetchMoneyHeroes(int money)async{
    setState(() {
      _heroes.clear();
    });
    var databasesPath = await getDatabasesPath();
    var path = join(databasesPath,'chess.db');
    var db = await openDatabase(path, readOnly: true);
    var sql = 'select * from heroes where price=${money}';
    List<Map<String,dynamic>> heroes = await db.rawQuery(sql);
    var heroes_copy = List<Map<String,dynamic>>.from(heroes);
    var real_heroes = heroes_copy.map((item){
      Map<String,dynamic> item_copy = Map<String,dynamic>.from(item);
      item_copy['jbs'] = [];
      var sql2 = 'select job_races.* from hero_job_races left join job_races on hero_job_races.job_race_id = job_races.id where hero_id = ${item['id']}';
      db.rawQuery(sql2).then((item_job_races){
        print('种族职业：' + item_job_races.length.toString());
        var ijr = item_job_races.map((jr){
          if(jr['buffable_type'] == 'App\\Models\\Race'){
            var sql3 = 'select * from races where id=${jr['buffable_id']}';
            db.rawQuery(sql3).then((races){
              setState(() {
                _heroes.where((i){
                  return i['id'] == item_copy['id'];
                }).first['jbs'].add(races[0]['name']);
              });
            });
          }else{
            var sql3 = 'select * from jobs where id=${jr['buffable_id']}';
            db.rawQuery(sql3).then((jobs){
              setState(() {
                _heroes.where((i){
                  return i['id'] == item_copy['id'];
                }).first['jbs'].add(jobs[0]['name']);
              });
            });
          }
          return jr;
        });
        print(ijr);
      });
      setState(() {
        print(item_copy);
        _heroes.add(item_copy);
      });
      return item_copy;
    });
    print(real_heroes);
  }

  Widget _buildHero(item,context){
    return InkWell(
      child: Container(
        height: 100,
        decoration: BoxDecoration(
            border: Border.all(color: item['price'] == '1' ? Colors.grey :
            item['price'] == '2' ? Colors.green :
            item['price'] == '3' ? Colors.blue :
            item['price'] == '4' ? Colors.purple : Colors.orange,width: 2),
            gradient: LinearGradient(colors: [Colors.white,Colors.black38])
        ),
        margin: EdgeInsets.only(top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            ExtendedImage.network(item['img'],cache: true,),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(item['name'],style: TextStyle(
                      color: Colors.white,
                      fontSize: 18
                  ),),
                  Text(item['jbs'] != null ? item['jbs'].join('/') : '',style: TextStyle(
                      color: Colors.white
                  ),)
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.monetization_on,color: Colors.orangeAccent,),
                SizedBox(
                  width: 5,
                ),
                Text(item['price'],style: TextStyle(
                    color: Colors.orange,
                    fontSize: 18
                ),),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
          ],
        ),
      ),
      onTap: (){
        HeroHeader hero_header = new HeroHeader(
          name: item['name'],
          img: item['img'],
          nickname: item['nickname'],
          jbs: item['jbs'].join('/'),
          color: item['price'] == '1' ? Colors.grey :
          item['price'] == '2' ? Colors.green :
          item['price'] == '3' ? Colors.blue :
          item['price'] == '4' ? Colors.purple : Colors.orange
        );
        Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
            HeroDetail(
              heroId: item['id'],
              heroHeader: hero_header,
            )));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('英雄资料'),
      ),
      body: Stack(
        children: <Widget>[
          ListView(
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                ..._heroes.map((item) {
                  return _buildHero(item,context);
                }).toList()
              ]
          ),
          Positioned(
            top: 0,
            child: Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(
                        child: Container(
                          height: 50,
                          padding: EdgeInsets.all(10),
                          width: MediaQuery.of(context).size.width/3,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey,width: 1)
                          ),
                          child: Row(
                            children: <Widget>[
                              Text('种族'),
                              Icon(Icons.keyboard_arrow_down)
                            ],
                          ),
                        ),
                        onTap: (){
                          setState(() {
                            if(_selectType != 1){
                              _isDisplay = true;
                              _selectType = 1;
                            }else{
                              _isDisplay = !_isDisplay;
                              _selectType = 1;
                            }
                          });
                        },
                      ),
                      GestureDetector(
                        child: Container(
                          height: 50,
                          padding: EdgeInsets.all(10),
                          width: MediaQuery.of(context).size.width/3,
                          decoration: BoxDecoration(
                              border: Border(
                                  top: BorderSide(color: Colors.grey,width: 1),
                                  right: BorderSide(color: Colors.grey,width: 1),
                                  bottom: BorderSide(color: Colors.grey,width: 1)
                              )
                          ),
                          child: Row(
                            children: <Widget>[
                              Text('职业'),
                              Icon(Icons.keyboard_arrow_down)
                            ],
                          ),
                        ),
                        onTap: (){
                          setState(() {
                            if(_selectType != 2){
                              _isDisplay = true;
                              _selectType = 2;
                            }else{
                              _isDisplay = !_isDisplay;
                              _selectType = 2;
                            }
                          });
                        },
                      ),
                      GestureDetector(
                        child: Container(
                          height: 50,
                          padding: EdgeInsets.all(10),
                          width: MediaQuery.of(context).size.width/3,
                          decoration: BoxDecoration(
                              border: Border(
                                  top: BorderSide(color: Colors.grey,width: 1),
                                  right: BorderSide(color: Colors.grey,width: 1),
                                  bottom: BorderSide(color: Colors.grey,width: 1)
                              )
                          ),
                          child: Row(
                            children: <Widget>[
                              Text('金币'),
                              Icon(Icons.keyboard_arrow_down)
                            ],
                          ),
                        ),
                        onTap: (){
                          setState(() {
                            if(_selectType != 3){
                              _isDisplay = true;
                              _selectType = 3;
                            }else{
                              _isDisplay = !_isDisplay;
                              _selectType = 3;
                            }
                          });
                        },
                      ),
                    ],
                  ),
                  Offstage(
                    offstage: !_isDisplay,
                    child: SizedBox(
                      height: 5,
                    ),
                  ),
                  Offstage(
                    offstage: !_isDisplay,
                    child: Wrap(
                      spacing: 10,
                      runSpacing: 6,
                      alignment: WrapAlignment.start,
                      children: _selectType == 1 ? _races.map((item){
                        return _buildItem(item);
                      }).toList() : _selectType == 2 ? _jobs.map((item){
                        return _buildItem(item);
                      }).toList() : _money
                    ),
                  ),
                  Offstage(
                    offstage: !_isDisplay,
                    child: SizedBox(
                      height: 5,
                    ),
                  ),
                ],
              )
            )
          ),
        ],
      )
    );
  }
}
