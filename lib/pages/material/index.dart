import 'dart:convert';
import 'dart:io';

import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class MaterialIndex extends StatefulWidget {
  @override
  _MaterialIndexState createState() => _MaterialIndexState();
}

class _MaterialIndexState extends State<MaterialIndex> {

  List<Map<String,dynamic>> _materials = [];
  List<Map<String,dynamic>> _equipments = [];


  @override
  void initState() {
    super.initState();
    _initData();
  }

  _initData()async{
    var databasesPath = await getDatabasesPath();
    var path = join(databasesPath,'chess.db');
    var db = await openDatabase(path, readOnly: true);
    List<Map<String,dynamic>> materials = await db.query('materials');
    List<Map<String,dynamic>> equipments = await db.query('equipments');
    setState(() {
      _materials = List<Map<String, dynamic>>.from(materials);
      _equipments = List<Map<String,dynamic>>.from(equipments);
    });
  }
  
  _buildImg(url,effect,BuildContext context,{basicAttribute = ''}){
    return GestureDetector(
      child: ExtendedImage.network(url,cache: true,),
      onTap: (){
        showDialog(context: context,builder: (context){
          return AlertDialog(
            title: Text('效果'),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text(basicAttribute),
                  Text(''),
                  Text(effect),
                ],
              ),
            ),
          );
        });
      },
    );
  }

  TableRow _buildItem(int index, item,BuildContext context) {

    List rows = new List<Map<String,dynamic>>.generate(8, (int index){
      return _equipments.firstWhere(
              (v) => ((v['first_material_id'] == item['id']) && (v['second_material_id'] == _materials[index]['id'])) ||
              ((v['second_material_id'] == item['id']) && (v['first_material_id'] == _materials[index]['id']))
      );
    });

    return TableRow(
        children: [
          _buildImg(item['img'], item['effect'],context),
          _buildImg(rows[0]['img'], rows[0]['effect'], context,basicAttribute: rows[0]['basic_attribute']),
          _buildImg(rows[1]['img'], rows[1]['effect'], context,basicAttribute: rows[1]['basic_attribute']),
          _buildImg(rows[2]['img'], rows[2]['effect'], context,basicAttribute: rows[2]['basic_attribute']),
          _buildImg(rows[3]['img'], rows[3]['effect'], context,basicAttribute: rows[3]['basic_attribute']),
          _buildImg(rows[4]['img'], rows[4]['effect'], context,basicAttribute: rows[4]['basic_attribute']),
          _buildImg(rows[5]['img'], rows[5]['effect'], context,basicAttribute: rows[5]['basic_attribute']),
          _buildImg(rows[6]['img'], rows[6]['effect'], context,basicAttribute: rows[6]['basic_attribute']),
          _buildImg(rows[7]['img'], rows[7]['effect'], context,basicAttribute: rows[7]['basic_attribute']),
        ]
    );
  }

  TableRow _buildHeader(BuildContext context){
    return TableRow(
      children: [
        Container(),
        ..._materials.map((item){
          return _buildImg(item['img'], item['effect'], context);
        }).toList()
      ]
    );
  }

  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width / 10;
    print(width);

    return Scaffold(
      appBar: AppBar(
        title: Text('装备'),
      ),
      body: ListView(
          children: <Widget>[
            SizedBox(
              height: 40,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Center(
                  child: Text('点击装备图标查看效果'),
                ),
              ),
            ),
            Container(
              child: Center(
                child: Table(
                    columnWidths: <int, TableColumnWidth>{
                      0: FixedColumnWidth(width),
                      1: FixedColumnWidth(width),
                      2: FixedColumnWidth(width),
                      3: FixedColumnWidth(width),
                      4: FixedColumnWidth(width),
                      5: FixedColumnWidth(width),
                      6: FixedColumnWidth(width),
                      7: FixedColumnWidth(width),
                      8: FixedColumnWidth(width),
                    },
                    //表格边框样式
                    border: TableBorder.all(
                      color: Colors.black,
                      width: 0.1,
                      style: BorderStyle.solid,
                    ),
                    children: <TableRow>[
                      _buildHeader(context),
                      ..._materials
                          .asMap()
                          .map((i, item) => MapEntry(i, _buildItem(i, item,context)))
                          .values
                          .toList()
                    ]
                ),
              ),
            )
          ]
      ),
    );
  }
}
