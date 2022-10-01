import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Bottom_bar extends StatefulWidget {
  final double? height;
  final double? width;

  const Bottom_bar({
    Key? key,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  State<Bottom_bar> createState() => Bottom_barState();
}

class Bottom_barState extends State<Bottom_bar> {
  int index = 2;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return CurvedNavigationBar(
      backgroundColor: Colors.transparent,
      height: 60,
      items: <Widget>[
        Icon(Icons.search, size: 30),
        Icon(Icons.favorite_border, size: 30),
        Icon(Icons.menu, size: 30),
        Icon(Icons.person_outline, size: 30),
        Icon(Icons.settings_outlined, size: 30),
      ],
      index: index,
      buttonBackgroundColor: Color(0xFFffa00a),
      onTap: (index) => setState(() {
        this.index = index;
      }),
    );
  }
}
