import 'package:flutter/material.dart';

class preview_profile_data extends StatelessWidget {
  const preview_profile_data({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(left: w * 0.03),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'NIN Number',
            style: TextStyle(
              fontSize: 11.0,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Gender',
            style: TextStyle(
              fontSize: 11.0,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Age',
            style: TextStyle(
              fontSize: 11.0,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Salary',
            style: TextStyle(
              fontSize: 11.0,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Address',
            style: TextStyle(
              fontSize: 11.0,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Mobile No.',
            style: TextStyle(
              fontSize: 11.0,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Job Status',
            style: TextStyle(
              fontSize: 11.0,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Religion',
            style: TextStyle(
              fontSize: 11.0,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Tribe',
            style: TextStyle(
              fontSize: 11.0,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Height',
            style: TextStyle(
              fontSize: 11.0,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Complexion',
            style: TextStyle(
              fontSize: 11.0,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Disability',
            style: TextStyle(
              fontSize: 11.0,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Disability Type',
            style: TextStyle(
              fontSize: 11.0,
            ),
          ),
        ],
      ),
    );
  }
}
