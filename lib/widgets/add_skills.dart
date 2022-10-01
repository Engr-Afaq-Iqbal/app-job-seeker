import 'package:flutter/material.dart';

class add_skills extends StatelessWidget {
  final text;
  const add_skills({Key? key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.height;
    return Container(
      height: h * 0.035,
      width: w * 0.1,
      decoration: BoxDecoration(
          color: Color(0xFFFABA52),
          borderRadius: BorderRadius.circular(
            15,
          )),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 12.0,
          ),
        ),
      ),
    );
  }
}
