import 'package:flutter/material.dart';

class preview_profile_answers extends StatelessWidget {
  String nin_number;
  preview_profile_answers({
    Key? key,
    required this.nin_number,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(left: w * 0.04),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            nin_number,
            style: TextStyle(
              fontSize: 11.0,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Male',
            style: TextStyle(
              fontSize: 11.0,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            '23',
            style: TextStyle(
              fontSize: 11.0,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            '\$30,000 to \$40,000',
            style: TextStyle(
              fontSize: 11.0,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'United Kindgoms',
            style: TextStyle(
              fontSize: 11.0,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            '+923026503481',
            style: TextStyle(
              fontSize: 11.0,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Hired',
            style: TextStyle(
              fontSize: 11.0,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Abuja',
            style: TextStyle(
              fontSize: 11.0,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Islam',
            style: TextStyle(
              fontSize: 11.0,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Yoruba',
            style: TextStyle(
              fontSize: 11.0,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            '5\'6\"',
            style: TextStyle(
              fontSize: 11.0,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Dark',
            style: TextStyle(
              fontSize: 11.0,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Yes',
            style: TextStyle(
              fontSize: 11.0,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Lorem ipsum dolor sit amet',
            style: TextStyle(
              fontSize: 11.0,
            ),
          ),
        ],
      ),
    );
  }
}
