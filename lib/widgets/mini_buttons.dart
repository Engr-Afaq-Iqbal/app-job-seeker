import 'package:flutter/material.dart';

class mini_buttons extends StatelessWidget {
  final text;
  const mini_buttons({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Container(
        height: h * 0.035,
        width: w * 0.38,
        decoration: BoxDecoration(
          color: Color(0xFFffa00a),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: TextButton(
          style: TextButton.styleFrom(
            primary: Colors.white,
          ),
          onPressed: () {},
          child: Text(
            text,
            style: TextStyle(fontSize: 10.0),
          ),
        ));
  }
}
