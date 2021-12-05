import 'package:flutter/material.dart';
import 'package:playstore/top.dart';
import 'package:playstore/topfree.dart';
import 'package:playstore/topgrossing.dart';
import 'package:playstore/toppaid.dart';
import 'package:playstore/trending.dart';
class topchart extends StatefulWidget {
  Color value;
  topchart(this.value);

  @override
  _topchartState createState() => _topchartState(value);
}

class _topchartState extends State<topchart> {
  Color value;
  _topchartState(this.value);
  Color gr=Colors.black;
  Color gr1=Colors.black;
  Color gr2=Colors.black;
  Color gr3=Colors.black;
  Color gr4=Colors.black;
  Color gr5=Colors.black;
  Color dumi=Color(0xff3f51b5);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar:PreferredSize(
            preferredSize: Size.fromHeight(100),
            child: Column(
              children: [
                Container(
                  height: 30,
                  width: MediaQuery.of(context).size.width,
                  color: Color(0xEAEDED),
                ),
                TabBar(
                  tabs: [
                    Tab(child: Text("Top free",style: TextStyle(fontSize: 15,color: dumi),),),
                    Tab(child: Text("Top grossing ",style: TextStyle(fontSize: 15,color: gr2),),),
                    Tab(child: Text("Trending",style: TextStyle(fontSize: 15,color: gr3),),),
                    Tab(child: Text("Top paid",style: TextStyle(fontSize: 15,color: gr4),),),
                    Tab(child: Text("Top ",style: TextStyle(fontSize: 15,color: gr5),),),
                  ],
                  isScrollable: true,
                  indicatorColor: value,
                  onTap: (index){
                    if(index==0)
                      setState(() {
                        dumi=value;
                      });
                    else
                      gr1=gr;
                    if(index==1)
                      setState(() {
                        gr2=value;
                        dumi=gr;
                      });
                    else
                      gr2=gr;
                    if(index==2)
                      setState(() {
                        gr3=value;
                        dumi=gr;
                      });
                    else
                      gr3=gr;
                    if(index==3)
                      setState(() {
                        gr4=value;
                        dumi=gr;
                      });
                    else
                      gr4=gr;
                    if(index==4)
                      setState(() {
                        gr5=value;
                        dumi=gr;
                      });
                    else
                      gr5=gr;
                  },

                ),
              ],
            ),
          ),
          body: TabBarView(children: [
            topfree(),
            topgrossing(),
            trending(),
            toppaid(),
            top(),
          ]),
        ),
    );
  }
}
