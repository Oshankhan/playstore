import 'package:flutter/material.dart';
class trending extends StatefulWidget {
  const trending({Key? key}) : super(key: key);

  @override
  _trendingState createState() => _trendingState();
}

class _trendingState extends State<trending> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          cont("https://images.news18.com/ibnlive/uploads/2019/09/PubG-Game-1.jpg?impolicy=website&width=0&height=0"),
          cont("https://images.news18.com/ibnlive/uploads/2019/09/PubG-Game-1.jpg?impolicy=website&width=0&height=0"),
          cont("https://images.news18.com/ibnlive/uploads/2019/09/PubG-Game-1.jpg?impolicy=website&width=0&height=0"),
          cont("https://images.news18.com/ibnlive/uploads/2019/09/PubG-Game-1.jpg?impolicy=website&width=0&height=0"),
          cont("https://images.news18.com/ibnlive/uploads/2019/09/PubG-Game-1.jpg?impolicy=website&width=0&height=0"),
          cont("https://images.news18.com/ibnlive/uploads/2019/09/PubG-Game-1.jpg?impolicy=website&width=0&height=0"),

        ],
      ),
    );
  }

  Widget cont(String adress) {
    return Row(
      children: [
      Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(adress))),
      )
      ],
    );
  }
}
