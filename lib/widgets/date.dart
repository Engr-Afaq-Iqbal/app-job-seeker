import 'package:flutter/material.dart';

var items = [
  '1',
  '2',
  '3',
  '4',
  '5',
  '6',
  '7',
  '8',
  '9',
  '10',
  '11',
  '12',
  '13',
  '14',
  '15',
  '16',
  '17',
  '18',
  '19',
  '20',
  '21',
  '22',
  '23',
  '24',
  '25',
  '26',
  '27',
  '28',
  '29',
  '30',
  '31',
];
String dropdownvalue = '21';

class Date extends StatefulWidget {
  const Date({
    Key? key,
  }) : super(key: key);

  @override
  State<Date> createState() => DateState();
}

class DateState extends State<Date> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15,
      ),
      height: h * 0.06,
      width: w * 0.20,
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
        value: dropdownvalue,

        // Down Arrow Icon
        icon: const Icon(Icons.arrow_drop_down),

        // Array list of items
        items: items.map((String items) {
          return DropdownMenuItem(
            value: items,
            child: Text(items,
                style: TextStyle(fontSize: 14.0, color: Colors.grey)),
          );
        }).toList(),

        // After selecting the desired option,it will
        // change button value to selected value
        onChanged: (String? newValue) {
          setState(() {
            dropdownvalue = newValue!;
          });
        },
      ),
    );
  }
}
