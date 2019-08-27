import 'package:flutter/material.dart';

class Position extends StatefulWidget {
  @override
  _PositionState createState() => _PositionState();
}

class _PositionState extends State<Position> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('站位'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Text('基础站位',style: TextStyle(
              color: Colors.redAccent,
              fontSize: 16
            ),),
            Text('云顶之弈模式的站位其实就像是玩大型多人游戏，一般的阵容都有近战输出、坦克、远程输出和刺客英雄。大部分情况下，坦克都是放在最前面吸收伤害(如科加斯)。而近战输出也需要放在前面才能打出最多伤害，但由于他们很脆，不能放在第一时间就冲锋陷阵的位置(如普朗克)。而远程输出英雄，则是应该放在一个能够被保护的后排位置，确保他们不会被刺客跳脸(如崔丝塔娜)。'),
            Image.asset('images/other/position_1.jpg'),
            Text('''那么，怎样的站位才能让坦克英雄吸收最多的伤害呢。我们在考虑站位之前，一般都会考虑到对手的英雄站位。大部分情况下，玩家都不会将英雄放在中间，而是放在左右两侧，所以我们只需要预判攻击手来自于左侧还是右侧。因此，我们放在最前面的英雄，无论在任何情况下，都会是第一个被攻击到的英雄。而大部分玩家前期都是将英雄放在左侧，而棋盘是镜像的，意味着敌人是从右侧出现。

在这种情况下，坦克英雄尽量放在阵容的最左侧或者最右侧(如盖伦)。这样一来，他们就是对手首当其冲的攻击对象。而近战输出英雄，一般是放在坦克英雄的旁边或者后面(如菲奥娜)，确保他们不会像坦克一样在战斗开始时就吃到技能或者承受伤害，因为我们希望在坦克英雄吸收火力时，比较脆的近战英雄也能够打出伤害，而不是让他们花时间浪费在移动或者发呆上。'''),
            Image.asset('images/other/position_2.jpg'),
            Text('刺客站位',style: TextStyle(
                color: Colors.redAccent,
                fontSize: 16
            ),),
            Text('''目前虚空刺客流是最强的吃鸡阵容质疑，成型速度很快，就算不能吃鸡也能稳定前四。因此，我们需要考虑到刺客阵容的站位。刺客英雄在游戏开始时，会自动跳到离他们对角线位置最远的单位上(如卡兹克)。所以，我们要将地图的站位分成两半来思考，刺客英雄会跳到距离他们最远的那个单位上。

而刺客英雄在战斗开始时，是先潜行才跳后排，所以当你摆放刺客英雄时，你希望他们跳进后排去击杀对手的脆皮或者远程输出英雄，而对手的刺客英雄也是一样。即使是龙王这种强力输出英雄，本质上也是一个脆皮，很容易被刺客英雄秒杀。'''),
            Image.asset('images/other/position_3.jpg'),
            Text('Y构成阵容',style: TextStyle(
                color: Colors.redAccent,
                fontSize: 16
            ),),
            Text('''而在阵容的站位上，我们引入了一种基础的构成——Y构成阵容，因为在四级后我们就要考虑站位的问题，而Y构成要求至少4个单位。三个放在同一条直线上，最后一个放在左侧前端，看起来就像是一个Y字。

坦克英雄放在右上角，迎接右侧进攻的敌人。近战英雄放在左上角，因为你希望坦克英雄先吸收伤害，让近战英雄能够快速找到输出位置。中间放远程输出英雄，他们在坦克英雄的掩护下，能够争取更多的输出空间。为什么不将脆皮英雄放在最下角呢，这就要考虑到另一个问题，目前刺客阵容泛滥导致卡兹克十分流行。

'''),
            Image.asset('images/other/position_4.jpg'),

            Text('''卡兹克是前期很难处理的英雄，他的技能会在远程英雄输出时触发孤立无援的效果，从而造成额外伤害。基本上，卡兹克能够在前期的大部分单挑中，击败任何的其他英雄。因此，Y构成需要有一个英雄来拦截对手跳过来的刺客英雄，尤其是卡兹克。因为当战斗开始时，后排英雄会往前压，后排英雄会在刺客英雄的附近。虽然后排英雄不一定会攻击刺客英雄，但由于远程英雄距离前排或者其他英雄较近，不至于触发孤立无援然后被秒杀。

当然，Y构成阵容也不是万能的，这个站位非常害怕龙法。因为龙法阵容拥有龙王、阿狸这种群体输出的法师英雄，能够快速摧毁你的阵容，因此，你在对阵龙法时，并不会想要将远程输出英雄放得那么靠前。除此之外，像格雷福斯这种具有AOE能力的英雄，他们的攻击会穿透前排的盖伦，也能够打到后排的薇恩。'''),
            Image.asset('images/other/position_5.jpg'),

            Text('因此，如果我们将薇恩和最后面的菲奥娜换一个位置的话，对手就攻击不到。否则的话，遇到暴击装的格雷福斯，薇恩很容易被误伤带走。虽然Y构成阵容有一些缺点和害怕的阵容，但依然是目前游戏中最好的站位之一，因为能够很好地克制刺客英雄。'),
            Text('游戏中期站位：',style: TextStyle(
                color: Colors.redAccent,
                fontSize: 16
            ),),
            Text('中期不进考虑前排和后排dps的站位，还要考虑对面aoe的范围，比如狐狸和龙王的直线aoe，可以考虑放一两个划水坦克位置放在左上或右上去吸引火力，也可以分2组分开站位，这样把坦克分出去吸引伤害，但是这种站位的缺点就是怕刺客，要保证你不会碰到刺客在用。'),
            Text('后期决赛solo站位：',style: TextStyle(
                color: Colors.redAccent,
                fontSize: 16
            ),),
            Text('''前中期的站位相对于经济和组合羁绊来说并不是很重要，但是在决赛的时候站位就显得很重要了，是致胜的关键。这里有几种常见的站位。

332的站位，前排三坦克，中间辅助输出，后排dps。9人口加的可以站432或者342，尽量别站333，这样会卡后排输出除非你有火炮。'''),
            Text('针对对手的站位：',style: TextStyle(
                color: Colors.redAccent,
                fontSize: 16
            ),),
            Text('''在打决赛圈的时候我们都能知道我们要打的下一个对手是谁，观察他的站位，调整我们的站位去克制他。这里说几种常见的克制站位，如果我们是法师阵容，我们需要跟他对位站，这样我们后排的法师的aoe拉满直接可以融化对面。

如果我们是拉扯型的阵容，我们需要错位站，他站左上，我们就去右下，反之亦然。保证后排的dps不吃aoe和团控。这里说一种克制刺客的站位，我们都知道刺客开局会跳后排，我们需要把后排保住就要卡住格子让刺客跳不进来，形成一个角缩在右下或者坐下角。

'''),
            Text('阵容摆位',style: TextStyle(
                color: Colors.redAccent,
                fontSize: 16
            ),),
            Text('把阵型放到对方的对角，非刺客单位放到最后一排，刺客单位放前一排，能较容易让对面后排跑出来以及我方刺客跳到对方的后排。'),
            Image.asset('images/other/position_6.jpg'),

            Text('枪手阵容',style: TextStyle(
                color: Colors.redAccent,
                fontSize: 16
            ),),
            Text('''另一个要提及的阵容就是枪手阵容，枪手阵容往往是搭配海盗。前期利用格雷福斯和海盗的协同刷金币，后期加入厄运小姐就能够大幅提高爆发力。尤其9.14版本加入新海盗崔斯特后，这个阵容的成型速度变得更快了。格雷福斯是一个非常有趣的单位，他的攻击会造成溅射效果，有装备的情况下可以摧毁整个队伍，因此我们希望将他摆在前面，但又不希望他吃到太多的伤害。

'''),
            Image.asset('images/other/position_7.jpg'),

            Text('''那么，如何将格雷福斯放在一个能够打出很多伤害的位置呢，同理还有卢锡安、厄运小姐等枪手英雄。那么，我建议放在地图的前排最右侧，那个位置往往只有一到两个英雄可能会打到他，但格雷福斯的穿透射击却能够很好地穿透右侧的敌人。

即使对手的阵容没有放在右侧，而是放在了另一半。由于枪手是摆在了坦克英雄的右侧，所以在己方阵容往左侧移动时，坦克英雄会帮枪手英雄先吸收伤害。枪手英雄不会在双方于地图中间的交火时，率先就受到了伤害，能够安全地打出自己的输出。'''),
            Image.asset('images/other/position_8.jpg'),

            Text('这种站位可以最大化枪手英雄的伤害，让他们可以舒服地输出。而且这种站位的话，也避免你的远程输出英雄被对手刺客英雄直接跳脸击杀了，因为他们是放在了最前方。'),
            Text('刺客阵容',style: TextStyle(
                color: Colors.redAccent,
                fontSize: 16
            ),),
            Text('''现在刺客阵容非常流行，但后期又有些疲软，那么在游戏后期时，如何有效地发挥刺客阵容的优势呢，很多玩家只是将所有英雄全部放在一个角落。因此，建议刺客阵容学会摆放自己的前排英雄，让前排英雄吸引注意力，让对手的后排英雄无法走出来。而刺客英雄就能够切入后排，孤立对手的核心输出，然后击杀他们赢下团战。

'''),
            Image.asset('images/other/position_9.jpg'),

            Text('''因此，在后期使用刺客阵容时，建议将坦克英雄放在最后一排，因为他们是近战输出英雄，要花费最多的时间才能移动到前面进行攻击，对手也需要花费很多时间走过来。而刺客英雄可以放在最后一排的两侧或者第二排位，这种站位的情况下，脆皮英雄反而是放在前面。

由于己方刺客英雄在战斗开始前的半秒是潜行状态，对手的英雄会忽略你的刺客英雄，而是集火后排的坦克英雄。尤其是在刺客阵容内战时，用刺客英雄包围坦克英雄，将他们卡在里面，让他们无法在游戏开始时就移动，对手的刺客英雄无法立即就跳到坦克英雄身上，因为己方的刺客英雄会卡住对手半秒。'''),
            Image.asset('images/other/position_10.jpg'),

            Text('''后续的话，己方刺客英雄跳到后排，优先集火击杀对手的一些目标，而对手的输出在己方的坦克英雄上浪费太多，这种僵持的局势对于我们而言非常有利。这是刺客英雄目前最好的阵容摆法，可以根据对手的站位来调整左侧还是右侧。很多玩家的刺客阵容在游戏后期走下坡路，就是因为他们的站位不够正确，浪费了太多的输出。

'''),
            Text('对刺客阵',style: TextStyle(
                color: Colors.redAccent,
                fontSize: 16
            ),),
            Text('''1. 针对对方的非刺客单位把阵放在正对面，以防止后排向外跑被刺爆。

2. 如果对方的非刺客单位都放在后排，那可以把部份坦放到最后一排把输出包住。

3、保护大哥位，德莱文附近天使、VN远程，在第一时间是不会动的，哪怕日女、诺克、德玛走开一格，第一时间吃到伤害的是VN、天使，这两个远程死了，刺客离三个前排最近，是不会第一时间攻击德莱文;

4、炮灰的价值体现，剑姬伤害不足，坦度不够;奥巴马伤害不足，技能需要空间。这两个棋子在扎堆放置时起到的作用有限，但是单独放出来就不一样了。

首先，会吸引一定数量刺客的活力，杀完再转战大部队需要移动，我们需要的就是这点时间，与刺客打就是争分夺秒;还有奥巴马技能位移，剑姬技能无敌眩晕对方，只要放出技能就是赚。'''),
            Image.asset('images/other/position_11.jpg'),

            Text('对巫师阵',style: TextStyle(
                color: Colors.redAccent,
                fontSize: 16
            ),),
            Text('''1. 把阵放到对方的对角。

2. 把阵分开两边放。(较怕刺客)'''),
            Text('对游侠阵',style: TextStyle(
                color: Colors.redAccent,
                fontSize: 16
            ),),
            Text('''1. 把阵放到对方的对角，让对面走出来，减少镜爪大招的覆盖棋子

2. 主阵放一边，在另一边的角落放一隻远攻弃子，吸引冰川英雄的攻击，尽可能让我方控场先手开出来。

'''),
            Text('对冰川阵',style: TextStyle(
                color: Colors.redAccent,
                fontSize: 16
            ),),
            Text('''分散、分散、分散。

冰川最喜欢的就是脸对脸抱团，猪妹凤凰大招毁天灭地。德莱文最远点无痛持续输出，日女德玛侧翼包抄，说不定会让对面猪妹打一波假赛。

此阵容需要火炮德莱文作为基础。

实战经验，火炮德莱文跟龙王对角输出，龙王一口老痰想吐德莱文，可惜有点短，只有1-2个近战会被牵连。

龙王：咳-TUI，吐你一脸;德莱文：哎，吐不着吐不着，气不气。

打龙王还有一件神装，灵风。灵风在对阵龙法时大概率会吹起龙王(经过实战)。

机器人+卡萨丁，勾过来削蓝削蓝，但是机器人局限性比较大。一方面，这个套路智能偶尔用一次，对方也不是傻子，不可能把把让你这么舒服;另一方面，机器人的加入会破坏阵容的羁绊，一般在阵容未成形时打对方一个措手不及。'''),
          ],
        ),
      ),
    );
  }
}
