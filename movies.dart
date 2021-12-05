import 'package:flutter/material.dart';
import 'package:playstore/topchart.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'cata.dart';
import 'early.dart';
import 'fami.dart';
import 'foryou.dart';
class movies extends StatefulWidget {
  Color value;
  movies(this.value);

  @override
  _moviesState createState() => _moviesState(value);
}

class _moviesState extends State<movies> {
  Color value;

  _moviesState(this.value);
  Color gr=Colors.grey;
  Color gr1=Colors.grey;
  Color gr2=Colors.grey;
  Color gr3=Colors.grey;
  Color gr4=Colors.grey;
  Color gr5=Colors.grey;
  Color dumi=Color(0xff3f51b5);
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: PreferredSize(preferredSize:Size.fromHeight(100),
          child: AppBar(
            backgroundColor: Colors.white,
            bottom: TabBar(
              isScrollable: true,
              indicatorColor: value,
              tabs: [
                Tab(icon: Icon(FontAwesomeIcons.compass,size: 20,color: dumi,),child: Text("For you",style: TextStyle(fontSize: 12,color: dumi),),),
                Tab(icon: Icon(FontAwesomeIcons.chartBar,size: 20,color: gr2,),child: Text("Top chart",style: TextStyle(fontSize: 12,color: gr2),),),
                Tab(icon: Icon(FontAwesomeIcons.plusSquare,size: 20,color: gr3),child: Text("New",style: TextStyle(fontSize: 12,color: gr3),),),
                Tab(icon: Icon(FontAwesomeIcons.solidGem,size: 20,color: gr4),child: Text("Premium",style: TextStyle(fontSize: 12,color: gr4),),),
                Tab(icon: Icon(FontAwesomeIcons.shapes,size: 20,color: gr4),child: Text("Category",style: TextStyle(fontSize: 12,color: gr5),),),
              ],
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
          ),
        ),
        body: TabBarView(
          children: [
            foryou(),
            topchart(Color(0xff3f51b5)),
            cata(),
            fami(),
            early()
          ],
        ),
      ),
    );
  }
}
