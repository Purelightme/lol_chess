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

//class _IndexPageState extends State<IndexPage> {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      body: Container(
//        padding: EdgeInsets.all(10),
//        width: MediaQuery.of(context).size.width - 20,
//        height: MediaQuery.of(context).size.height - 20,
//        child: ExtendedImage.asset(
//          'images/material.jpg',
//          mode: ExtendedImageMode.Gesture,
//          initGestureConfigHandler: (state) {
//            return GestureConfig(
//                minScale: 0.9,
//                animationMinScale: 0.7,
//                maxScale: 3.0,
//                animationMaxScale: 3.5,
//                speed: 1.0,
//                inertialSpeed: 100.0,
//                initialScale: 1.0,
//                inPageView: true);
//          },
//        ),
//      ),
//    );
//  }
//}

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
              height: 180,
              color: Colors.redAccent.withOpacity(0.2),
              child: Center(
                child: Text('英雄'),
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
              height: 180,
              color: Colors.blueAccent.withOpacity(0.2),
              child: Center(
                child: Text('装备'),
              ),
            ),
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return MaterialIndex();
              }));
            },
          ),
//          GestureDetector(
//            child: Container(
//              height: 180,
//
//              child: Center(
//                child: Text('羁绊'),
//              ),
//            ),
//            onTap: (){
//              Navigator.of(context).push(MaterialPageRoute(builder: (context){
//                return BuffIndex();
//              }));
//            },
//          ),
          GestureDetector(
            child: Container(
              height: 180,
              color: Colors.purpleAccent.withOpacity(0.1),
              child: Center(
                child: Text('其他'),
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