import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final text;
  final VoidCallback? onPressed;
  const Buttons({
    Key? key,
    this.text,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Center(
      child: Container(
          height: h * 0.06,
          width: w * 0.8,
          decoration: BoxDecoration(
            color: Color(0xFFffa00a),
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: TextButton(
            style: TextButton.styleFrom(
              primary: Colors.white,
            ),
            onPressed: onPressed,
            child: text,
          )),
    );
  }
}
