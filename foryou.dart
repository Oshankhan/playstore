import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
class foryou extends StatefulWidget {
  const foryou({Key? key}) : super(key: key);

  @override
  _foryouState createState() => _foryouState();
}

class _foryouState extends State<foryou> {
  List<String> item=
  [
    "https://i.ytimg.com/vi/vfQR4ki3dOI/maxresdefault.jpg",
    "https://i.ytimg.com/vi/5Tr_3Ot9e0c/maxresdefault.jpg",
    "https://cdn.dnaindia.com/sites/default/files/styles/full/public/2021/01/24/952294-pubg-mobile.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSct_Flr_eToUuMbLZ_Hbzzyl6o7bVJeD2JKg&usqp=CAU",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          imageView(),
          textname("Preview installed app","More",120),
          inatalledapp(),
          SizedBox(height: 20,),
          textname("Recommended apps for you","More",70),
          inatalledapp(),
        ],
      ),
    );
  }

 Widget textname(String s,String s2,double a) {
    return Container(
      color: Colors.white,
      child: Row(
        children: [
          SizedBox(width: 10,),
          Text(s,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17)),
          SizedBox(width: a,),
          TextButton(onPressed: (){}, child: Text(s2))

        ],
      ),
    );
 }

  Widget imageView() {
    return Container(
      height: 210,
      width: MediaQuery.of(context).size.width,
      child: Image.network('https://wallpapercave.com/dwp1x/wp4020373.jpg',),
    );
  }

 Widget inatalledapp() {
    return Material(
      elevation: 30,
      shadowColor: Colors.lightBlueAccent,
      child: Container(
        height: 150,

        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            SizedBox(width: 10,),
            content(0,"Uncharttd",3),
            SizedBox(width: 10,),
            content(1,"Fortnite",3),
            SizedBox(width: 10,),
            content(2,"Days Gone",3),
            SizedBox(width: 10,),
            content(3,"Mobile Legends",3),
          ],
        ),
      ),
    );
 }

 Widget content(int imagenum,String name,int rating) {
    return Column(
      children: [
        Container(
          height: 100,
          width: 150,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),image: DecorationImage(image: NetworkImage(item[imagenum]),fit: BoxFit.cover)),
        ),
        Text(name),
        Text(rating.toString())
      ],
    );
 }
}