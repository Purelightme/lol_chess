import 'package:flutter/material.dart';

class PlayerDamageVersion915 extends StatefulWidget {
  @override
  _PlayerDamageVersion915State createState() => _PlayerDamageVersion915State();
}

class _PlayerDamageVersion915State extends State<PlayerDamageVersion915> {
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
          child: Text('''蜘蛛和元素之灵的伤害由2降低至1

4费1星英雄的伤害由3降低至2

5费1星英雄的伤害由4降低至3

3费2星英雄的伤害由4降低至3

4费2星英雄的伤害由5降低至4

5费1星英雄的伤害由6降低至5

4费3星英雄的伤害由7降低至6''',style: TextStyle(
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
