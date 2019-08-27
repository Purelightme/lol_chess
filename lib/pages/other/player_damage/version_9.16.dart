import 'package:flutter/material.dart';

class PlayerDamageVersion916 extends StatefulWidget {
  @override
  _PlayerDamageVersion916State createState() => _PlayerDamageVersion916State();
}

class _PlayerDamageVersion916State extends State<PlayerDamageVersion916> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width - 20,
          decoration: BoxDecoration(
            color: Color(0xff545A65),
            border: Border.all(color: Color(0xff545A65)),
            borderRadius: BorderRadius.all(Radius.circular(5))
          ),
          child: Text('''基础伤害现在会随当前阶段增长

阶段1-2：1伤害

阶段3-4：2伤害

阶段5：3伤害

阶段6：4伤害

阶段7+：5伤害''',style: TextStyle(
            color: Colors.white,
            fontSize: 14
          ),),
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}
