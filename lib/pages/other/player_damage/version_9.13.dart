import 'package:flutter/material.dart';

class PlayerDamageVersion913 extends StatefulWidget {
  @override
  _PlayerDamageVersion913State createState() => _PlayerDamageVersion913State();
}

class _PlayerDamageVersion913State extends State<PlayerDamageVersion913> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.asset('images/other/hero_damage.png'),
        Container(
          margin: EdgeInsets.only(top: 1),
          padding: EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width - 20,
          decoration: BoxDecoration(
              color: Color(0xff545A65),
              border: Border.all(color: Color(0xff545A65)),
              borderRadius: BorderRadius.all(Radius.circular(5))
          ),
          child: Text(
              '''比如五级的亚索在升到三星时，如果他能够在一次战斗中存活下来，就能够对敌人造成8点伤害。因此，云顶之弈在游戏后期时，是有机会一回合输出超过30点伤害，让对手遭遇突然死亡。这也能够减少游戏的整体时间，毕竟设计师希望这个游戏的长度大概是在30分钟左右。但通常玩家都是两星的英雄较多，而且要考虑到阵容搭配，所以极少有这种极限输出的情况。''',style: TextStyle(
            color: Colors.white,
            fontSize: 14
          ),),
        ),
      ],
    );
  }
}
