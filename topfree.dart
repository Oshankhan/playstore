import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class topfree extends StatefulWidget {
  const topfree({Key? key}) : super(key: key);

  @override
  _topfreeState createState() => _topfreeState();
}

class _topfreeState extends State<topfree> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          cont("https://images.news18.com/ibnlive/uploads/2019/09/PubG-Game-1.jpg?impolicy=website&width=0&height=0"),
          SizedBox(height: 20,),
          cont("https://images.news18.com/ibnlive/uploads/2019/09/PubG-Game-1.jpg?impolicy=website&width=0&height=0"),
          SizedBox(height: 20,),
          cont("https://images.news18.com/ibnlive/uploads/2019/09/PubG-Game-1.jpg?impolicy=website&width=0&height=0"),
          SizedBox(height: 20,),
          cont("https://images.news18.com/ibnlive/uploads/2019/09/PubG-Game-1.jpg?impolicy=website&width=0&height=0"),
          SizedBox(height: 20,),
          cont("https://images.news18.com/ibnlive/uploads/2019/09/PubG-Game-1.jpg?impolicy=website&width=0&height=0"),
          SizedBox(height: 20,),
          cont("https://images.news18.com/ibnlive/uploads/2019/09/PubG-Game-1.jpg?impolicy=website&width=0&height=0"),
          SizedBox(height: 20,),

        ],
      ),
    );
  }
  Widget cont(String adress) {
    return Row(
      children: [
        SizedBox(width: 20,),
        Container(

          height: 100,
          width: 100,
          decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(adress),
              fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(30)),
        ),
        SizedBox(width: 30,),
        Column(
          children: [
            Text("PUBG",style: TextStyle(fontSize: 20),),
             Text("PUBG - Mobile"),

          ],
        )
      ],
    );
  }
}
