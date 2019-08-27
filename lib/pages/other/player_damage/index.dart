import 'package:flutter/material.dart';
import 'package:lol_chess/pages/other/player_damage/version_9.13.dart';
import 'package:lol_chess/pages/other/player_damage/version_9.15.dart';
import 'package:lol_chess/pages/other/player_damage/version_9.16.dart';

class Item {
  Item({
    this.expandedWidget,
    this.headerValue,
    this.isExpanded = false,
  });

  Widget expandedWidget;
  String headerValue;
  bool isExpanded;
}

class PlayerDamageIndex extends StatefulWidget {
  @override
  _PlayerDamageIndexState createState() => _PlayerDamageIndexState();
}

class _PlayerDamageIndexState extends State<PlayerDamageIndex> {


  List<Item> _data = [
    new Item(headerValue: '9.13-9.14版本', expandedWidget: PlayerDamageVersion913(),isExpanded: true),
    new Item(headerValue: '9.15版本改动', expandedWidget: PlayerDamageVersion915()),
    new Item(headerValue: '9.16版本改动', expandedWidget: PlayerDamageVersion916()),
  ];

  Widget _buildPanel() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _data[index].isExpanded = !isExpanded;
        });
      },
      children: _data.map<ExpansionPanel>((Item item) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(item.headerValue),
            );
          },
          body: Container(
            child: item.expandedWidget,
          ),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('版本变化'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: _buildPanel(),
        ),
      )
    );
  }
}
