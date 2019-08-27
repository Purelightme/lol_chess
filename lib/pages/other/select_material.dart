import 'package:flutter/material.dart';

class SelectMaterial extends StatefulWidget {
  @override
  _SelectMaterialState createState() => _SelectMaterialState();
}

class _SelectMaterialState extends State<SelectMaterial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('选秀'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Text('云顶之弈与其他自走棋的最大区别就是，一，只要你赢，别人就会掉血;二，选秀。决定了前中期不管连胜还是连败都很蠢(欧皇除外)。'),
            Image.asset('images/other/backgroud.jpg'),
            Text('第一轮',style: TextStyle(
              color: Colors.redAccent,
              fontSize: 18
            ),),
            Text('''从开局选秀来说，铲子大于一切，但是不必强求。我一般会在自己信使周围的四五个英雄进行选择，选择顺序铲子>二费棋子+大棒/反曲弓/大剑>二费棋子+水滴/腰带。

第一轮的选秀挺关键的，第一轮抢铲子是不错的选择，如果不行，就拿带好装备的2费怪。后面的选秀，个人认为：C位的装备>你体系的关键牌>不错的装备>高费牌>体系挂件。

还有一个细节，选秀拿挂件的时候，如果你已经有两个这个1星的挂件，劲量就不要去拿这个挂件了，因为拿了之后自动合成，那么你选秀的那个装备就在挂件的身上，装备在挂件身上很浪费。

前三轮野怪，我们选卡主要围绕三贵族，双野兽，双骑士，这几个都没有可以考虑双枪手，还有卡萨丁卡兹克也可以考虑。根据装备掉落和阵容考虑连败/假赛，不推荐连胜。连胜的代价就是没有好的装备，选秀完容易被断。'''),
            Text('第二轮',style: TextStyle(
                color: Colors.redAccent,
                fontSize: 18
            ),),
            Text('''第二轮选秀前一定不要升人口，一定不要升人口，一定不要升人口!一方面不追求连胜，另一方面前期花费4金币升人口，意味着你选择方向的局限性。

第二轮选秀结束，基本上天胡选手3-4二星带小羁绊，正常玩家有2个左右二星带小羁绊，天谴玩家五六个对子，场上全一星，天谴玩家如果是我还是愿意等待白嫖不会去D。

不推荐赌狗，赌狗没有什么好下场!虽然说赌狗流是个没有办法的办法，但是我这辈子都不会赌狗，哪怕我带着50块进棺材，我也不会去赌!

第二轮选秀到打野期间，不断观察对手的牌(包括替补席)，大致判断场上局势，选择一/两个只有一个人或者没人玩(留牌)的阵容，期间选卡可以留一下牌，当然了，利息是最重要的，谁卡利息谁滚!

第二轮选秀到打野结束，能合成火炮/青龙刀/羊刀/鬼书这些，合了让打工仔带着，不然一堆乞丐二星还是不好赢。'''),
            Text('后期选秀',style: TextStyle(
                color: Colors.redAccent,
                fontSize: 18
            ),),
            Text('''围绕着自己的核心输出英雄选，即C位的装备>你体系的关键牌>不错的装备>高费牌>体系挂件。若都没有就根据对手的阵容，拿别人需要的。

不推荐拿已有两个1星的英雄，为拿了之后自动合成，若英雄上也有装备也会自动合成，会出现合错装备的问题或是部分不卖英雄的情况。

'''),
          ],
        ),
      ),
    );
  }
}
