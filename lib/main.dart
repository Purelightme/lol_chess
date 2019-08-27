import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lol_chess/pages/about/index.dart';
import 'package:lol_chess/pages/index/index.dart';
import 'package:lol_chess/pages/news/index.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  int _currentIndex = 0;
  List<Widget> _pages = List<Widget>();

  @override
  void initState() {
    super.initState();
    _pages
    ..add(IndexPage())
    ..add(NewsIndex())
    ..add(AboutIndex());
    //初始化本地数据库
    initDb();
  }

  initDb()async{
    var databasesPath = await getDatabasesPath();
    var path = join(databasesPath,'chess.db');
    await deleteDatabase(path);
    try {
      await Directory(dirname(path)).create(recursive: true);
    } catch (_) {}
    ByteData data = await rootBundle.load(join('assets','chess.db'));
    List<int> bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
    await new File(path).writeAsBytes(bytes, flush: true);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '云顶助手',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            type: BottomNavigationBarType.fixed,
            onTap: (int index){
              setState(() {
                _currentIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  title: Text('首页')
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.book),
                  title: Text('攻略')
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle),
                  title: Text('关于')
              ),
            ],
          ),
          body: _pages[_currentIndex],
        )
    );
  }
}




