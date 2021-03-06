import 'package:flutter/material.dart';

class Operation extends StatefulWidget {
  @override
  _OperationState createState() => _OperationState();
}

class _OperationState extends State<Operation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('运营'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Text('''lol云顶之弈模式怎么运营？云顶之弈模式中不能单纯的靠感觉玩，要学会运营，在金币、棋子 、血量、装备以及阵容上取舍搭配出吃鸡的方法，不知道云顶之弈怎么运营的玩家，下面小编为大家带来了云顶之弈运营技巧，一起来看看吧。

'''),
            Text('游戏的整体运营思路就是：',style: TextStyle(
              color: Colors.redAccent,
              fontSize: 16
            ),),
            Text('''运营总体来说就是金币、血量、装备的取舍。

前期，抓优质对子，和优质羁绊，不要先想着玩什么体系。如果比较胡，看情况考虑开人口保连胜。如果没连胜，建议就不要开人口了，安安心心存钱吃利息。根据装备和来牌，确定1到2套体系。

中期，是运营最关键的时候。如果没有连胜连败，经济会比较差，这种时候对利息要特别敏感，能贪则贪。有连胜就不要太贪利息。

甚至在听的对子比较多的时候，可以小搜，保证自己连胜。通过核心牌来确定自己的阵容体系。然后慢慢的用体系卡替换掉打工仔。让自己阵容成型。

后期，观察对手的阵容组合和装备，以及站位。如果你发现有一家是你的主要竞争者，他的阵容克制你，或者装备好，这时候就要劲量针对他。选择针对性的装备合成和针对的站位。还有针对的组合和精英卡。如果搜到他阵容的核心卡，可以选择买了卡他。后期决战的时候，就不要贪利息了，能花钱就花，任何一张卡的升星都是提升，后期的钱不是钱。

比如你发现后期对你威胁最大的一家他是6贵族，但是天使女坦都没2星，你如果搜到了，应该果断买下来卡他，就算对你来说一点用没有，放在替补席挂着，也要卡他。选秀的时候，如果没有对你质变的提升的卡和装备，也要去抢他的天使，或者天使的装备。'''),
            Text('棋子方面',style: TextStyle(
                color: Colors.redAccent,
                fontSize: 16
            ),),
            Text('''一星二星无大哥，打工不配三星。(体系内前排可追)

原因，一星二星输出追三和大哥抢装备，而且占据替补位，这时候势必会造成替补位格子不够的问题，还卡利息，卡利息的都滚滚滚!

'''),
            Image.asset('images/other/operation_1.jpg'),
            Text('阵容方面',style: TextStyle(
                color: Colors.redAccent,
                fontSize: 16
            ),),
            Text('''5-7人口是一个运营难点，这时候的天胡哥打人很疼，很容易在这个阶段暴毙。而且很多新手在这个阶段阵容出现问题，例如五贵族等天使，极地元素等火男，狂野龙法等龙。

所以在这个阶段一定一定要去嫖一些单卡能力强或者与阵容凑小羁绊的卡，不至于在阵容没成型的时候被别人血入，然后疯狂D想要锁血。

运气好能D出来，运气不好直接出门。所以说留一下强力打工仔很有必要。如果说一套阵容你已经很熟悉了就不会出现这个问题，如何在阵容未成型的时候让自己保持健康的血量是很关键的。

五人口开始大家基本都是二星，开始拼羁绊拼装备了。大家的阵容从上场棋子和替补席基本能看出来玩什么了。五人口时阵容体系一费棋子没二星血量较低可以考虑小D一下(六人口1费棋子概率降低)

六人口是这个游戏的一个关键点。六人口基本阵容有了雏形，可以白嫖大哥，每一轮每一个人都有可能大幅度提升自己的战力。

D还是F是个艰难的决定，如果自己血量健康，但是大哥装备还差点，可以用多余的钱全用来F;如果自己血量低，阵容质量低，可以D，至于D多少钱，这个就得看具体情况了。

六人口要学会灵活变通，我们常说的阵容都是七人口八人口成型，但是好多玩家六人口就乱上，什么三野兽，三极地，四贵族。这种完完全全就是浪费人口，可以把多出来的一个人口换成一个可以凑成新羁绊的棋子，来保证自己的连胜或者防止自己被血入。

六人口到七人口的选秀至关重要，这轮选秀之前一定要观察对手，那么选英雄还是选装备?大哥装备没满，血量健康选装备;血量危险，选大哥;有大哥装备拉满，自己先选，可以考虑卡别人一手装备或者棋子。

七人口开始就是小决赛了，阵容没成型or棋子质量不够or没大哥or大哥没装备的基本都会被淘汰，这时候一次基本都是十几滴血量的往下掉，命不好上20都有可能。

所以七人口就是开始疯狂D的时候，并不是意味着把钱用完，首先要保证自己大哥二星，保证自己的整个阵容拥有五六个二星(具体指基本可以锁血)就可以慢慢攒钱上人口，在D的同时观察对手，比如，一个玩家德莱文或者龙王马上二星了，自己刷出来买下来，卡他!削弱对手就是增强自己。

铲子的作用慢慢体现出来了，板命哥可以用来升人口，金币用来提升质量。也可以合成幽梦这种能增加棋子职业羁绊的装备，都是可以大幅度提升自己战斗力的方法(幽梦德莱文刺客体系了解一下)。

八人口就基本进去决赛了，决赛就是拼血量容错率的时候了。

容错率：一，棋子的职业水平，同样的站位同样的棋子同样的装备，有时候能赢有时候就输;

二，站位脸对脸打极地这不是送吗，缩在一起碰到巨九小炮让人家疯狂输出……;

三，机器人，面对单核心阵容，机器人有时候出奇效。当然大部分玩家会防范机器人，但是如果对面血量低，再开始比赛前两秒把机器人放上去，我想对手没有时间去改变阵容，一波带走。

每一套体系都有不同的运营方法，也有与之对应的强力打工仔。每一套体系都有key牌和炮灰，哪些棋子有必要追三，哪些没必要追三都是需要了解的。

几个比较强力的羁绊，帝国，极地，贵族，狂野，换形，新手可以围绕这几个羁绊去组阵容。枪手和游侠也是不错的羁绊，但是玩起来难度比较高。'''),
            Text('装备方面',style: TextStyle(
                color: Colors.redAccent,
                fontSize: 16
            ),),
            Image.asset('images/other/operation_2.jpg'),
            Text('''成装里，鬼书，火炮，青龙刀，羊刀，基克的使徒，鸟盾我认为是最强的几件装备。

小件里面，反曲弓>大棒>大剑>其他。

铲子是特殊的存在，根据自己的需要随机应变。

鬼书无视魔免，法师打龙神器。

有很肥的刺客的时候，一定要做幻影之舞给你的前排最肉的人，最好是纳尔。

法师肥同理，要做巨龙之牙。

救赎其实挺不错的(只不过水滴和大腰带能合成的好东西很多)，但是要给对人。给个混子上去送给大哥回血。

神圣之剑这件装备要谨慎合成，谨慎给。比如你给了德莱文，对面如果有个个带绿叉的，你叠满了暴率打他会无限miss。

四枪手配合，肃静，诅咒之刃，折戟短剑，特别厉害。'''),
          ],
        ),
      ),
    );
  }
}
