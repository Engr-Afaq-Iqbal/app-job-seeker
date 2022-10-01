import 'package:flutter/material.dart';

var months = [
  'Month',
  'January',
  'February',
  'March',
  'April',
  'May',
  'June',
  'July',
  'August',
  'September',
  'October',
  'November',
  'December'
];
String monthdropdownvalue = 'Month';

class Month extends StatefulWidget {
  final double? height;
  final double? width;
  const Month({
    Key? key,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  State<Month> createState() => MonthState();
}

class MonthState extends State<Month> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15,
      ),
      height: widget.height,
      width: widget.width,
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
      child: DropdownButton(
        // Initial Value
        value: monthdropdownvalue,

        // Down Arrow Icon
        icon: const Icon(Icons.arrow_drop_down),

        // Array list of items
        items: months.map((String months) {
          return DropdownMenuItem(
            value: months,
            child: Text(months,
                style: TextStyle(fontSize: 14.0, color: Colors.grey)),
          );
        }).toList(),

        // After selecting the desired option,it will
        // change button value to selected value
        onChanged: (String? newValue) {
          setState(() {
            monthdropdownvalue = newValue!;
          });
        },
      ),
    );
  }
}
