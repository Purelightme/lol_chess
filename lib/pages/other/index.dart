import 'package:flutter/material.dart';
import 'package:lol_chess/pages/other/player_damage/index.dart';
import 'package:lol_chess/pages/other/position.dart';
import 'package:lol_chess/pages/other/select_material.dart';

import 'kachi.dart';
import 'operation.dart';

class OtherIndex extends StatefulWidget {
  @override
  _OtherIndexState createState() => _OtherIndexState();
}

class _OtherIndexState extends State<OtherIndex> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('其他'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('玩家血量计算规则'),
            trailing: Icon(Icons.arrow_forward_ios,),
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => PlayerDamageIndex()));
            },
            leading: Icon(Icons.color_lens,),
          ),
          ListTile(
            title: Text('卡池规模与抽取概率'),
            trailing: Icon(Icons.arrow_forward_ios,),
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Kachi()));
            },
            leading: Icon(Icons.opacity,),
          ),
          ListTile(
            title: Text('选秀攻略'),
            trailing: Icon(Icons.arrow_forward_ios,),
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => SelectMaterial()));
            },
            leading: Icon(Icons.select_all,),
          ),
          ListTile(
            title: Text('站位技巧'),
            trailing: Icon(Icons.arrow_forward_ios,),
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Position()));
            },
            leading: Icon(Icons.event_seat,),
          ),
          ListTile(
            title: Text('运营思路'),
            trailing: Icon(Icons.arrow_forward_ios,),
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Operation()));
            },
            leading: Icon(Icons.room_service,),
          ),
        ],
      ),
    );
  }
}
