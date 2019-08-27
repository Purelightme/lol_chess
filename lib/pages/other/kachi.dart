import 'package:flutter/material.dart';

class Kachi extends StatefulWidget {
  @override
  _KachiState createState() => _KachiState();
}

class _KachiState extends State<Kachi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('卡池'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width - 20,
              decoration: BoxDecoration(
                  color: Color(0xff545A65),
                  border: Border.all(color: Color(0xff545A65)),
                  borderRadius: BorderRadius.all(Radius.circular(5))
              ),
              child: Text('''云顶之弈模式的特性在于它可以使用英雄联盟中的任意英雄，来作为棋子进行操控，玩家不断在商店中购买和升级棋子，打造最强的阵容来挑战其他的对手。棋子的等级根据他们的售价一共分成五级，目前看起来，高级的棋子自然是更强一些，能够打出更多配合。而棋子在商店中的刷新机率，则是取决于玩家的角色等级。在云顶之弈模式中，玩家暂时最高只能升到9级。''',style: TextStyle(
                  color: Colors.white
              ),),
            ),

            Container(
              margin: EdgeInsets.all(2),
              child: Image.asset('images/other/kachi.png',),
            ),

            Container(
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width - 20,
              decoration: BoxDecoration(
                  color: Color(0xff545A65),
                  border: Border.all(color: Color(0xff545A65)),
                  borderRadius: BorderRadius.all(Radius.circular(5))
              ),
              child: Text('''玩家在1-2级时，只能购买到一级的棋子。而在玩家升到3-4级后，商店中有机会刷新出二级的棋子。当玩家升到5级后，商店里就有机会刷新出四级的棋子，虽然几率只有5%。因此，有很多玩家选择在角色等级升到5级后，就暂时不再主动升级，而是存钱吃利息来快速增加金币收入，如果有机会刷新出高级棋子的话就考虑购买。

如果玩家想要购买到五级的棋子，就必须升到6级，但6级只有0.5%的几率刷新到五级棋子，基本上是天选之人了。而随着玩家的角色等级不断提高，找到五级棋子的几率也会不断增高，最多可以来到10%了。但随着玩家的等级提升，你在高等级时想要寻找一级棋子的几率也会大幅下滑，因此，如果玩家想凑阵容羁绊的话，最好在中期时将需要的低级棋子直接买下。''',style: TextStyle(
                  color: Colors.white
              ),),
            ),
          ]
        ),
      ),
    );
  }
}
