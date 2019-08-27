import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class HeroHeader{

  HeroHeader({this.img,this.name,this.nickname,this.jbs,this.color});

  String img;
  String name;
  String nickname;
  String jbs;
  Color color;
}

class HeroDetail extends StatefulWidget {

  HeroDetail({@required this.heroId,@required this.heroHeader});

  String heroId;
  HeroHeader heroHeader;

  @override
  _HeroDetailState createState() => _HeroDetailState();
}

class _HeroDetailState extends State<HeroDetail> {

  List<Map<String,dynamic>> _hero;
  HeroHeader _heroHeader;

  @override
  void initState() {
    super.initState();
    initHero();
  }

  initHero()async{
    setState(() {
      _heroHeader = widget.heroHeader;
    });
    var databasesPath = await getDatabasesPath();
    var path = join(databasesPath,'chess.db');
    var db = await openDatabase(path, readOnly: true);
    var sql = 'select heroes.*,hero_attributes.* from heroes left join hero_attributes on hero_attributes.hero_id = heroes.id where hero_id=${widget.heroId}';
    List<Map<String,dynamic>> hero = await db.rawQuery(sql);
    print(hero);
    setState(() {
      _hero = List<Map<String,dynamic>>.from(hero);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('英雄详情'),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 100,
            decoration: BoxDecoration(
//                border: Border.all(color: Colors.brown,width: 2),
                gradient: LinearGradient(colors: [Colors.white30,_heroHeader != null ? _heroHeader.color : Colors.transparent]),
              borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: ExtendedImage.network(_heroHeader != null ? _heroHeader.img : '',cache: true,),
                  )
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text('${_heroHeader != null ? _heroHeader.name : ''}/',style: TextStyle(
                            color: Colors.white,
                            fontSize: 16
                          ),),
                          Text(_heroHeader != null ? _heroHeader.nickname : '',style: TextStyle(
                            color: Colors.white
                          ),),
                        ],
                      ),
                      Text(_heroHeader != null ? _heroHeader.jbs : '',style: TextStyle(
                          color: Colors.white
                      ),),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 100,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.2),
              borderRadius: BorderRadius.all(Radius.circular(5))
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('技能：',style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),),
                Text('''${_hero != null ? _hero[0]['skill'] : ''}''')
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.all(Radius.circular(5))
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('属性：',style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                ),),
                SizedBox(
                  height: 10,
                ),
                ..._hero.where((one){
                  return one['star'] == '1';
                }).map((item){
                  return  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(Icons.star,color: Colors.orange,),
                          Icon(Icons.star_border,color: Colors.grey,),
                          Icon(Icons.star_border,color: Colors.grey,),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            child: Text('生命值：${item['life_value']}'),
                          ),
                          Text('护甲：${item['guard_value']}'),
                          SizedBox(
                            width: 100,
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Text('魔抗：${item['magic_resistance']}'),
                          ),
                          Text('攻击力：${item['damage_value']}'),
                          SizedBox(
                            width: 100,
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Text('攻速：${item['attack_speed']}'),
                          ),
                          Text('攻击距离：${item['attack_distance']}'),
                          SizedBox(
                            width: 100,
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Text('初始法力值：${item['init_magic_value']}'),
                          ),
                          Text('法力值上限：${item['max_magic_value']}'),
                          SizedBox(
                            width: 100,
                          )
                        ],
                      ),
                    ],
                  );
                }).toList(),
                SizedBox(
                  height: 10,
                ),
                ..._hero.where((one){
                  return one['star'] == '2';
                }).map((item){
                  return  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(Icons.star,color: Colors.orange,),
                          Icon(Icons.star,color: Colors.orange,),
                          Icon(Icons.star_border,color: Colors.grey,),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            child: Text('生命值：${item['life_value']}'),
                          ),
                          Text('护甲：${item['guard_value']}'),
                          SizedBox(
                            width: 100,
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Text('魔抗：${item['magic_resistance']}'),
                          ),
                          Text('攻击力：${item['damage_value']}'),
                          SizedBox(
                            width: 100,
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Text('攻速：${item['attack_speed']}'),
                          ),
                          Text('攻击距离：${item['attack_distance']}'),
                          SizedBox(
                            width: 100,
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Text('初始法力值：${item['init_magic_value']}'),
                          ),
                          Text('法力值上限：${item['max_magic_value']}'),
                          SizedBox(
                            width: 100,
                          )
                        ],
                      ),
                    ],
                  );
                }).toList(),
                SizedBox(
                  height: 10,
                ),
                ..._hero.where((one){
                  return one['star'] == '3';
                }).map((item){
                  return  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(Icons.star,color: Colors.orange,),
                          Icon(Icons.star,color: Colors.orange,),
                          Icon(Icons.star,color: Colors.orange,),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            child: Text('生命值：${item['life_value']}'),
                          ),
                          Text('护甲：${item['guard_value']}'),
                          SizedBox(
                            width: 100,
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Text('魔抗：${item['magic_resistance']}'),
                          ),
                          Text('攻击力：${item['damage_value']}'),
                          SizedBox(
                            width: 100,
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Text('攻速：${item['attack_speed']}'),
                          ),
                          Text('攻击距离：${item['attack_distance']}'),
                          SizedBox(
                            width: 100,
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Text('初始法力值：${item['init_magic_value']}'),
                          ),
                          Text('法力值上限：${item['max_magic_value']}'),
                          SizedBox(
                            width: 100,
                          )
                        ],
                      ),
                    ],
                  );
                }).toList(),
              ],
            ),
          ),
        ],
      )
    );
  }
}
