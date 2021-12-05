import 'dart:ui';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

import 'books.dart';
import 'games.dart';
import 'homepage1.dart';
import 'movies.dart';
import 'music.dart';
class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  Color PrimaryColor =  Color(0xffff5722);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 5,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: PrimaryColor,
            title: Padding(
              padding: EdgeInsets.only(top: 25,bottom: 20),
              child: _Googleappbar(),
            ),
            bottom: TabBar(
                isScrollable: true,
                indicatorColor: Colors.white,
                indicatorWeight: 5,
                onTap: (index){
                  setState(() {
                    switch(index){
                      case 0:
                        PrimaryColor= Color(0xffff5722);
                        break;
                      case 1:
                        PrimaryColor= Color(0xff3f51b5);
                        break;
                      case 2:
                        PrimaryColor= Color(0xffe91e63);
                        break;
                      case 3:
                        PrimaryColor= Color(0xff9c27b0);
                        break;
                      case 4:
                        PrimaryColor= Color(0xff2196f3);
                        break;
                      default:


                    }
                  });
                },
                tabs:[
                  Tab(child: Container(child: Text("Home",style: TextStyle(fontSize: 15,color: Colors.white)),),),
                  Tab(child: Container(child: Text("Games",style: TextStyle(fontSize: 15,color: Colors.white)),),),
                  Tab(child: Container(child: Text("Movies",style: TextStyle(fontSize: 15,color: Colors.white)),),),
                  Tab(child: Container(child: Text("Music",style: TextStyle(fontSize: 15,color: Colors.white)),),),
                  Tab(child: Container(child: Text("Books",style: TextStyle(fontSize: 15,color: Colors.white)),),),

    ],


          ),

        ),
          body: TabBarView(
              children: [
                homepage1(Color(0xffff5722)),
                games(Color(0xff3f51b5)),
                movies(Color(0xffe91e63)),
                music(),
                books(),


              ],

          ),
    )
    );
  }
}

Widget _Googleappbar() {
  return Container(
    //color: Colors.white,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white
    ),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(child: IconButton(icon: Icon(Icons.menu),
        color: Colors.grey,
        onPressed: () {  },),),

        Container(
          child: Text("Google Play App",
            style: TextStyle(color: Colors.grey),),
        ),
        Container(
          child: IconButton(
              onPressed: (){},
            icon: Icon(FontAwesomeIcons.microphone),color: Colors.grey,),

                  )
                ],
              ),
          ) ;
    }
