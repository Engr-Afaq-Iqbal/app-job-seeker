import 'package:flutter/material.dart';

var years = [
  'Years',
  '1970',
  '1971',
  '1972',
  '1973',
  '1974',
  '1975',
  '1976',
  '1977',
  '1978',
  '1979',
  '1980',
  '1981',
  '1982',
  '1983',
  '1984',
  '1985',
  '1986',
  '1987',
  '1988',
  '1989',
  '1990',
  '1991',
  '1992',
  '1993',
  '1994',
  '1995',
  '1996',
  '1997',
  '1998',
  '1999',
  '2000',
  '2001',
  '2002',
  '2003',
  '2004',
  '2005',
  '2006',
  '2007',
  '2008',
  '2009',
  '2010',
  '2011',
  '2012',
  '2013',
  '2014',
  '2015',
  '2016',
  '2017',
  '2018',
  '2019',
  '2020',
  '2021',
  '2022',
];

String yeardropdownvalue = '1970';

class Years extends StatefulWidget {
  final double? height;
  final double? width;

  const Years({
    Key? key,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  State<Years> createState() => YearsState();
}

class YearsState extends State<Years> {
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
        value: yeardropdownvalue,

        // Down Arrow Icon
        icon: const Icon(Icons.arrow_drop_down),

        // Array list of items
        items: years.map((String years) {
          return DropdownMenuItem(
            value: years,
            child: Text(
              years,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey,
              ),
            ),
          );
        }).toList(),

        // After selecting the desired option,it will
        // change button value to selected value
        onChanged: (String? newValue) {
          setState(() {
            yeardropdownvalue = newValue!;
            //age = yeardropdownvalue.toString() - '2022';
          });
        },
      ),
    );
  }
}
