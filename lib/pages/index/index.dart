import 'dart:ui';

import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:lol_chess/pages/buff/index.dart';
import 'package:lol_chess/pages/hero/index.dart';
import 'package:lol_chess/pages/material/index.dart';
import 'package:lol_chess/pages/other/index.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
      ),
      body: ListView(
        children: <Widget>[
          GestureDetector(
            child: Container(
              height: 140,
              color: Colors.redAccent.withOpacity(0.2),
              child: Center(
                child: Text('英雄',style: TextStyle(
                    fontSize: 18
                ),),
              ),
            ),
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return HeroIndex();
              }));
            },
          ),
          GestureDetector(
            child: Container(
              height: 140,
              color: Colors.blueAccent.withOpacity(0.2),
              child: Center(
                child: Text('装备',style: TextStyle(
                  fontSize: 18
                ),),
              ),
            ),
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return MaterialIndex();
              }));
            },
          ),
          GestureDetector(
            child: Container(
              height: 140,
              color: Colors.orangeAccent.withOpacity(0.2),
              child: Center(
                child: Text('羁绊',style: TextStyle(
                    fontSize: 18
                ),),
              ),
            ),
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return BuffIndex();
              }));
            },
          ),
          GestureDetector(
            child: Container(
              height: 140,
              color: Colors.purpleAccent.withOpacity(0.1),
              child: Center(
                child: Text('其他',style: TextStyle(
                    fontSize: 18
                ),),
              ),
            ),
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return OtherIndex();
              }));
            },
          ),
        ],
      ),
    );
  }
}