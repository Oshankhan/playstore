import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
class cata extends StatefulWidget {
  const cata({Key? key}) : super(key: key);

  @override
  _cataState createState() => _cataState();
}

class _cataState extends State<cata> {
  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      'https://lh3.googleusercontent.com/GJAnttuWVk8IcpLlkMVMjyPWkgGc1-8_kFGoKa5GDP21rMKZt4AztM-hn5Q6WQdKFEg=w200-h300-rw',
      'https://lh3.googleusercontent.com/gNBb6s2J9aRrQE8wk6mppKbb46uYcW1p5EuzknTZF3Ds6hYM9QrWgO8rdlQDyY2A7Vmi=w200-h300-rw',
      'https://lh3.googleusercontent.com/IGPFCdnnT8Sp1kI___pIWlWFRlLaKgAzu7eP_QXw0FbZQ_gg3WvXqbhbiWaE9_hVEGd4Bw=w200-h300-rw',
      'https://lh3.googleusercontent.com/GVpOcjU50jtPmlNbB331263RgHv_NEqE-FnweqvUWleO94Ckvrznw05kwUGk1oKp5GA=w200-h300-rw',
      'https://lh3.googleusercontent.com/t58TiR9gox0kZ9o1GBY5qN6Ywg2HjaQ6n2cUPc_KYJntdcsVl5CGKOPjLwMcapUhD2fr-w=w200-h300-rw',
      'https://lh3.googleusercontent.com/zZ1ZSFCBB4iiA6MEOaZxHJX214soedvkqwRHGB58gnODQeVQUI1ID3wpEje-SOWFOavQNA=w200-h300-rw'
    ];
    return  ListView(
      scrollDirection: Axis.vertical,
      children: [
        SizedBox(height: 30,),
        CarouselSlider(
          options: CarouselOptions(
              height: 200.0,
              aspectRatio: 2.0,viewportFraction: 0.9,
              autoPlay: true,
              enlargeCenterPage: true
          ),

          items: ['https://lh3.googleusercontent.com/GJAnttuWVk8IcpLlkMVMjyPWkgGc1-8_kFGoKa5GDP21rMKZt4AztM-hn5Q6WQdKFEg=w200-h300-rw',
            'https://lh3.googleusercontent.com/gNBb6s2J9aRrQE8wk6mppKbb46uYcW1p5EuzknTZF3Ds6hYM9QrWgO8rdlQDyY2A7Vmi=w200-h300-rw',
            'https://lh3.googleusercontent.com/IGPFCdnnT8Sp1kI___pIWlWFRlLaKgAzu7eP_QXw0FbZQ_gg3WvXqbhbiWaE9_hVEGd4Bw=w200-h300-rw',
            'https://lh3.googleusercontent.com/GVpOcjU50jtPmlNbB331263RgHv_NEqE-FnweqvUWleO94Ckvrznw05kwUGk1oKp5GA=w200-h300-rw',
            'https://lh3.googleusercontent.com/t58TiR9gox0kZ9o1GBY5qN6Ywg2HjaQ6n2cUPc_KYJntdcsVl5CGKOPjLwMcapUhD2fr-w=w200-h300-rw',
            'https://lh3.googleusercontent.com/zZ1ZSFCBB4iiA6MEOaZxHJX214soedvkqwRHGB58gnODQeVQUI1ID3wpEje-SOWFOavQNA=w200-h300-rw'].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                        color: Colors.amber
                    ),
                    child: Container(
                    decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(i),fit: BoxFit.cover,),
                    )
                )
                );
              },
            );
          }).toList(),
        )
      ],
    ) ;
  }
}
