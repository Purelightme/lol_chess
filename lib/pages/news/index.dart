import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsIndex extends StatefulWidget {
  @override
  _NewsIndexState createState() => _NewsIndexState();
}

class _NewsIndexState extends State<NewsIndex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('攻略'),
      ),
      body: WebView(
        initialUrl: 'http://www.honghanda.com/index/zt/game_en/game/id/yundingzhiyi/p/1.html',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
