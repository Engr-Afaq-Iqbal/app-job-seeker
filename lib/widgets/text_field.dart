import 'package:flutter/material.dart';

class Text_Field extends StatelessWidget {
  final hint_text;
  final TextEditingController? controllers;
  const Text_Field({
    Key? key,
    required this.hint_text,
    this.controllers,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        height: h * 0.06,
        width: w * 0.8,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 3,
              // changes position of shadow
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: TextFormField(
            controller: controllers,
            //controller: passwordController,
            textAlign: TextAlign.start,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hint_text,
              hintStyle: TextStyle(
                fontSize: 15.0,
              ),
              hintTextDirection: TextDirection.ltr,
            ),
            keyboardType: TextInputType.text,
            //obscureText: true,
          ),
        ),
      ),
    );
  }
}
