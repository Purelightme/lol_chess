import 'package:flutter/material.dart';

class BuffIndex extends StatefulWidget {
  @override
  _BuffIndexState createState() => _BuffIndexState();
}

class _BuffIndexState extends State<BuffIndex> {


  @override
  Widget build(BuildContext context) {

    num nameWidth = MediaQuery.of(context).size.width / 4;

    return Scaffold(
      appBar: AppBar(
        title: Text('羁绊'),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: InkWell(
                    child: MaterialButton(
                      child: Text('种族羁绊'),
                      onPressed: (){},
                      color: Colors.blue,
                    ),
                  ),

                ),
                Expanded(
                  child: InkWell(
                    child: MaterialButton(
                      child: Text('职业羁绊'),
                      onPressed: (){},
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 60,
            child: Container(
              padding: EdgeInsets.all(10),
              color: Colors.blueGrey,
              child: Row(
                children: <Widget>[
                  Container(
                    width: nameWidth,
                    child: Text('名称'),
                  ),
                  Expanded(
                    child: Container(
                      child: Text('效果'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.black87.withOpacity(0.2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Image.asset('images/author.jpg',width: 50,height: 50,),
                        Text('恶魔',style: TextStyle(
                          color: Color(0xF9FAFCAA)
                        ),)
                      ],
                    ),
                    Container(
                      width: 2,
                      height: 100,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.grey.withOpacity(0.2),
                                Color(0xF9FAFC11)
                              ])
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Text('2个-恶魔的普通攻击有机会燃烧敌人的20法力值，并造成等额的真实伤害',
                              softWrap: true,maxLines: 3,),
                          ),
                          Container(
                            child: Text('2个-恶魔的普通攻击有机会燃烧敌人的20法力值，并造成等额的真实伤害',
                              softWrap: true,maxLines: 3,),
                          ),
                          Container(
                            child: Text('2个-恶魔的普通攻击有机会燃烧敌人的20法力值，并造成等额的真实伤害',
                              softWrap: true,maxLines: 3,),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage('images/author.jpg'),
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('images/author.jpg'),
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('images/author.jpg'),
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('images/author.jpg'),
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('images/author.jpg'),
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('images/author.jpg'),
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('images/author.jpg'),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            color: Colors.black87.withOpacity(0.2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Image.asset('images/author.jpg',width: 50,height: 50,),
                        Text('恶魔',style: TextStyle(
                            color: Color(0xF9FAFCAA)
                        ),)
                      ],
                    ),
                    Container(
                      width: 2,
                      height: 100,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.grey.withOpacity(0.2),
                                Color(0xF9FAFC11)
                              ])
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Text('2个-恶魔的普通攻击有机会燃烧敌人的20法力值，并造成等额的真实伤害',
                              softWrap: true,maxLines: 3,),
                          ),
                          Container(
                            child: Text('2个-恶魔的普通攻击有机会燃烧敌人的20法力值，并造成等额的真实伤害',
                              softWrap: true,maxLines: 3,),
                          ),
                          Container(
                            child: Text('2个-恶魔的普通攻击有机会燃烧敌人的20法力值，并造成等额的真实伤害',
                              softWrap: true,maxLines: 3,),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage('images/author.jpg'),
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('images/author.jpg'),
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('images/author.jpg'),
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('images/author.jpg'),
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('images/author.jpg'),
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('images/author.jpg'),
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('images/author.jpg'),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            color: Colors.black87.withOpacity(0.2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Image.asset('images/author.jpg',width: 50,height: 50,),
                        Text('恶魔',style: TextStyle(
                            color: Color(0xF9FAFCAA)
                        ),)
                      ],
                    ),
                    Container(
                      width: 2,
                      height: 100,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.grey.withOpacity(0.2),
                                Color(0xF9FAFC11)
                              ])
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Text('2个-恶魔的普通攻击有机会燃烧敌人的20法力值，并造成等额的真实伤害',
                              softWrap: true,maxLines: 3,),
                          ),
                          Container(
                            child: Text('2个-恶魔的普通攻击有机会燃烧敌人的20法力值，并造成等额的真实伤害',
                              softWrap: true,maxLines: 3,),
                          ),
                          Container(
                            child: Text('2个-恶魔的普通攻击有机会燃烧敌人的20法力值，并造成等额的真实伤害',
                              softWrap: true,maxLines: 3,),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage('images/author.jpg'),
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('images/author.jpg'),
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('images/author.jpg'),
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('images/author.jpg'),
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('images/author.jpg'),
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('images/author.jpg'),
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('images/author.jpg'),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            color: Colors.black87.withOpacity(0.2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Image.asset('images/author.jpg',width: 50,height: 50,),
                        Text('恶魔',style: TextStyle(
                            color: Color(0xF9FAFCAA)
                        ),)
                      ],
                    ),
                    Container(
                      width: 2,
                      height: 100,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.grey.withOpacity(0.2),
                                Color(0xF9FAFC11)
                              ])
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Text('2个-恶魔的普通攻击有机会燃烧敌人的20法力值，并造成等额的真实伤害',
                              softWrap: true,maxLines: 3,),
                          ),
                          Container(
                            child: Text('2个-恶魔的普通攻击有机会燃烧敌人的20法力值，并造成等额的真实伤害',
                              softWrap: true,maxLines: 3,),
                          ),
                          Container(
                            child: Text('2个-恶魔的普通攻击有机会燃烧敌人的20法力值，并造成等额的真实伤害',
                              softWrap: true,maxLines: 3,),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage('images/author.jpg'),
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('images/author.jpg'),
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('images/author.jpg'),
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('images/author.jpg'),
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('images/author.jpg'),
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('images/author.jpg'),
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('images/author.jpg'),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      )
    );
  }
}
