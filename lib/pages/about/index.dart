import 'package:flutter/material.dart';
import 'package:lol_chess/widgets/copyable_text.dart';

class AboutIndex extends StatefulWidget {
  @override
  _AboutIndexState createState() => _AboutIndexState();
}

class _AboutIndexState extends State<AboutIndex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('关于作者'),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300,
            child: Center(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                      'images/author.jpg',
                      width: 120,
                      height: 120)
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Text('作者：Purelightme'),
          ),
          CopyableText(text: '微信：scl990044',copyText: 'scl990044',msg: '微信号已复制',),
          CopyableText(text: 'Github：https://github.com/Purelightme/lol_chess',copyText: 'https://github.com/Purelightme/lol_chess',msg: 'github地址已复制',),
          Container(
            padding: EdgeInsets.all(20),
            child: Text('免责声明：本项目数据全部来源自互联网，仅做学习交流使用。'),
          ),
        ],
      ),
    );
  }
}
