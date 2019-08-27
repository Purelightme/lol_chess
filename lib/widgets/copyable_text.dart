import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:toast/toast.dart';

class CopyableText extends StatelessWidget {

  CopyableText({@required this.text,@required this.copyText,this.msg = '复制成功'});

  String text;
  String copyText;
  String msg;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Text(text),
      ),
      onTap: (){
        Clipboard.setData(new ClipboardData(text: copyText)).then((value){
          Toast.show(msg, context);
        });
      },
    );
  }
}
