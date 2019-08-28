import 'package:flutter/material.dart';

import 'list.dart';

class BuffIndex extends StatefulWidget {
  @override
  _BuffIndexState createState() => _BuffIndexState();
}

class _TabData {
  final Widget tab;
  final Widget body;
  _TabData({this.tab, this.body});
}

final _tabDataList = <_TabData>[
  _TabData(tab: Text('种族羁绊',style: TextStyle(color: Colors.grey),), body: BuffList(type: 0,)),
  _TabData(tab: Text('职业羁绊',style: TextStyle(color: Colors.grey),), body: BuffList(type: 1,)),
];

class _BuffIndexState extends State<BuffIndex> {

  @override
  Widget build(BuildContext context) {

    final tabBarList = _tabDataList.map((item) => item.tab).toList();
    final tabBarViewList = _tabDataList.map((item) => item.body).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('羁绊'),
      ),
      body: DefaultTabController(
        length: 2,
        initialIndex: 0,
        child: Column(
          children: <Widget>[
            Container(
                width: double.infinity,
                padding: EdgeInsets.only(left: 10,top: 10),
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: <Widget>[
                    TabBar(
                        isScrollable: true,
                        indicatorSize: TabBarIndicatorSize.label,
                        unselectedLabelColor: Colors.grey,
                        unselectedLabelStyle: TextStyle(fontSize: 18),
                        labelColor: Colors.redAccent,
                        labelStyle: TextStyle(fontSize: 18),
                        tabs: tabBarList
                    ),
                    Divider(),
                  ],
                )
            ),
            Expanded(
                child: TabBarView(
                  children: tabBarViewList,
                )
            )
          ],
        ),
      )
    );
  }
}
