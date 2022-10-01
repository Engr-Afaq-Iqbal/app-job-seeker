import 'package:flutter/material.dart';

import 'package:dio/dio.dart';
import 'package:job_app/screens.dart/preview_profile.dart';
import 'package:job_app/widgets/text.dart';

import '../widgets/bottom_navigation_bar.dart';
import '../widgets/buttons.dart';
import '../widgets/date.dart';
import '../widgets/mini_buttons.dart';
import '../widgets/months.dart';
import '../widgets/text_field.dart';
import '../widgets/years.dart';

class profile_details extends StatefulWidget {
  const profile_details({super.key});

  @override
  State<profile_details> createState() => _profile_detailsState();
}

class _profile_detailsState extends State<profile_details> {
  TextEditingController _date = TextEditingController();

  TextEditingController nin_numberController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  //text: "+92"
  TextEditingController addressController = TextEditingController();
  TextEditingController salaryController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController job_statusController = TextEditingController();
  TextEditingController state_of_originController = TextEditingController();
  TextEditingController religionController = TextEditingController();
  TextEditingController tribeController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  TextEditingController complexionController = TextEditingController();
  TextEditingController disabilityController = TextEditingController();
  TextEditingController disability_typeController = TextEditingController();
  TextEditingController educationController = TextEditingController();
  TextEditingController skillsController = TextEditingController();
  TextEditingController employment_historyController = TextEditingController();
  TextEditingController certificates_awardsController = TextEditingController();
  TextEditingController first_nameController = TextEditingController();
  TextEditingController second_nameController = TextEditingController();

  void verify(
    var nin_number,
    var first_name,
    var last_name,
    var address,
    var salary,
    var mobile,
    var height,
    var disability_type,
    var education,
    var skills,
    var employment_history,
    var certificates_awards,
    var year,
    var month,
    var day,
    var complexion,
    var gender,
    var tribe,
    var religion,
    var job_seeker,
    context,
  ) async {
    if (nin_number.isEmpty) {
      final snackbar = SnackBar(content: Text('Please enter NIN number'));
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    } else if (first_name.isEmpty) {
      final snackbar = SnackBar(content: Text('Please enter first name'));
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    } else if (last_name.isEmpty) {
      final snackbar = SnackBar(content: Text('Please enter last name'));
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    } else if (address.isEmpty) {
      final snackbar = SnackBar(content: Text('Please enter address'));
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    } else if (salary.isEmpty) {
      final snackbar = SnackBar(content: Text('Please enter salary'));
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    } else if (mobile.isEmpty) {
      final snackbar = SnackBar(content: Text('Please enter mobile number'));
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    } else if (height.isEmpty) {
      final snackbar = SnackBar(content: Text('Please enter height'));
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    } else if (disability_type.isEmpty) {
      final snackbar = SnackBar(content: Text('Please enter disability'));
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    } else if (education.isEmpty) {
      final snackbar = SnackBar(content: Text('Please enter education'));
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    } else if (skills.isEmpty) {
      final snackbar = SnackBar(content: Text('Please enter skills'));
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    } else if (employment_history.isEmpty) {
      final snackbar =
          SnackBar(content: Text('Please enter employment history'));
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    } else if (certificates_awards.isEmpty) {
      final snackbar =
          SnackBar(content: Text('Please enter certificates or awards'));
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    } else {}
  }

  int _value = 1;
  var gender = 'Male';
  var disbaility = 'No';
  final moonLanding = DateTime.parse('1977-07-20 20:18:04Z');
  var currDt = DateTime.now();
  var choose_seekers = [
    'Choose Job Seekers',
    'Hired',
    'Unemployed',
    'Internee'
  ];
  String choose_seekers_dropdownvalue = 'Choose Job Seekers';
  var choose_religion = [
    'Choose your religion',
    'Muslim',
    'Non-Muslim',
  ];
  String choose_religion_dropdownvalue = 'Choose your religion';
  var choose_tribe = [
    'Choose your tribe',
    'Sindhi',
    'Pathan',
    'Dogar',
    'Rajput',
  ];
  String choose_tribe_dropdownvalue = 'Choose your tribe';
  var choose_complexion = ['Complexion', 'Dark', 'White', 'Black', 'Brown'];
  String choose_complexion_dropdownvalue = 'Complexion';
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xFFf3f3f3),
      appBar: AppBar(
        title: Text(
          'Profile Details',
          style: TextStyle(
            color: Color(0xFFFABA52),
            fontSize: 18.0,
            fontWeight: FontWeight.w700,
          ),
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.menu,
              color: Color(0xFFFABA52),
              size: 30.0,
            ),
          )
        ],
        elevation: 0.0,
        backgroundColor: Color(0xFFf3f3f3),
      ),
      body: SingleChildScrollView(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Basic Information',
                style: TextStyle(color: Color(0xFFCF1818), fontSize: 14),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Center(
              child: Image.asset(
                'assets/profile_img.png',
                width: w * 0.7,
                height: h * 0.08,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text_names(
              text: 'NIN number',
              color: Colors.black,
            ),
            SizedBox(
              height: 5,
            ),
            Center(
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
                    controller: nin_numberController,
                    //controller: passwordController,
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'National Identity Number (NIN)',
                      hintStyle: TextStyle(
                        fontSize: 15.0,
                      ),
                      hintTextDirection: TextDirection.ltr,
                    ),
                    keyboardType: TextInputType.text,
                    obscureText: true,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                height: h * 0.2,
                width: w * 0.8,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/image_icon.png'),
                  ),
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
                child: Padding(
                  padding: const EdgeInsets.only(top: 90.0, left: 10),
                  child: Center(
                    child: Text(
                      'Photo ID will be shown here',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.grey,
                      ),
                      //controller: passwordController,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Buttons(
              text: Text('Verify ID'),
              onPressed: (() {}),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: w * 0.10),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    height: h * 0.06,
                    width: w * 0.39,
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
                        controller: first_nameController,
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'John',
                          hintStyle: TextStyle(
                            fontSize: 15.0,
                          ),
                          hintTextDirection: TextDirection.ltr,
                        ),
                        keyboardType: TextInputType.text,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    height: h * 0.06,
                    width: w * 0.39,
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
                        controller: second_nameController,
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Doe',
                          hintStyle: TextStyle(
                            fontSize: 15.0,
                          ),
                          hintTextDirection: TextDirection.ltr,
                        ),
                        keyboardType: TextInputType.text,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Text_names(
              text: 'Date of Birth',
              color: Colors.black,
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: w * 0.10),
              child: Row(
                children: [
                  Date(),
                  SizedBox(
                    width: 3,
                  ),
                  Month(
                    height: h * 0.06,
                    width: w * 0.34,
                  ),
                  SizedBox(
                    width: 3.0,
                  ),
                  Years(
                      // height: 0.06,
                      // width: 0.34,
                      ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text_names(
              text: 'Gender',
              color: Colors.black,
            ),
            SizedBox(
              height: 1,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: w * 0.095),
              child: Row(
                children: [
                  Radio(
                    value: 1,
                    groupValue: _value,
                    activeColor: Color(0xFFFFa00a),
                    onChanged: (value) {
                      setState(() {
                        _value = value!;
                        gender = 'Male';
                      });
                    },
                  ),
                  Text(
                    'Male',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Radio(
                    value: 2,
                    groupValue: _value,
                    activeColor: Color(0xFFFFa00a),
                    onChanged: ((value) {
                      setState(() {
                        _value = value!;
                        gender = 'Female';
                      });
                    }),
                  ),
                  Text(
                    'Female',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
            Container(
                decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFeeeeee),
                  blurRadius: 10,
                  offset: Offset(0, 4),
                ),
              ],
            )),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: w * 0.10,
              ),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    height: h * 0.06,
                    width: w * 0.20,
                    child: Row(children: [
                      Image.asset(
                        'assets/nigeria_logo.png',
                        width: h * 0.025,
                        height: w * 0.05,
                        fit: BoxFit.fill,
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Image.asset(
                        'assets/polygon.png',
                        width: h * 0.02,
                        height: w * 0.02,
                        fit: BoxFit.fill,
                      ),
                    ]),

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

                    // Array list of items
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Center(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      height: h * 0.06,
                      width: w * 0.57,
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
                          controller: mobileController,
                          //controller: passwordController,
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Phone Number',
                            hintStyle: TextStyle(
                              fontSize: 15.0,
                            ),
                            hintTextDirection: TextDirection.ltr,
                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text_Field(
              hint_text: 'Address',
              controllers: addressController,
            ),
            SizedBox(
              height: 10,
            ),
            Text_Field(
              hint_text: 'Salary',
              controllers: salaryController,
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
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
                child: DropdownButtonFormField(
                  // Initial Value
                  value: choose_seekers_dropdownvalue,

                  // Array list of items
                  items: choose_seekers.map((String choose_seekers) {
                    return DropdownMenuItem(
                      value: choose_seekers,
                      child: Text(
                        choose_seekers,
                        style: TextStyle(fontSize: 14.0, color: Colors.grey),
                      ),
                    );
                  }).toList(),

                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      choose_seekers_dropdownvalue = newValue!;
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
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
                child: DropdownButtonFormField(
                  // Initial Value
                  value: choose_religion_dropdownvalue,

                  // Array list of items
                  items: choose_religion.map((String choose_religion) {
                    return DropdownMenuItem(
                      value: choose_religion,
                      child: Text(
                        choose_religion,
                        style: TextStyle(fontSize: 14.0, color: Colors.grey),
                      ),
                    );
                  }).toList(),

                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      choose_religion_dropdownvalue = newValue!;
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
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
                child: DropdownButtonFormField(
                  // Initial Value
                  value: choose_tribe_dropdownvalue,

                  // Array list of items
                  items: choose_tribe.map((String choose_religion) {
                    return DropdownMenuItem(
                      value: choose_religion,
                      child: Text(
                        choose_religion,
                        style: TextStyle(fontSize: 14.0, color: Colors.grey),
                      ),
                    );
                  }).toList(),

                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      choose_tribe_dropdownvalue = newValue!;
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text_names(
              text: 'Height',
              color: Colors.black,
            ),
            SizedBox(
              height: 5,
            ),
            Center(
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
                    controller: heightController,
                    //controller: passwordController,
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter Height',
                      hintStyle: TextStyle(
                        fontSize: 15.0,
                        color: Colors.grey,
                      ),
                      hintTextDirection: TextDirection.ltr,
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
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
                child: DropdownButtonFormField(
                  // Initial Value
                  value: choose_complexion_dropdownvalue,

                  // Array list of items
                  items: choose_complexion.map((String choose_complexion) {
                    return DropdownMenuItem(
                      value: choose_complexion,
                      child: Text(
                        choose_complexion,
                        style: TextStyle(fontSize: 14.0, color: Colors.grey),
                      ),
                    );
                  }).toList(),

                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      choose_complexion_dropdownvalue = newValue!;
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text_names(
              text: 'Disability',
              color: Colors.black,
            ),
            SizedBox(
              height: 1,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: w * 0.095),
              child: Row(
                children: [
                  Radio(
                    value: 1,
                    groupValue: _value,
                    activeColor: Color(0xFFFFa00a),
                    onChanged: (value) {
                      setState(() {
                        _value = value!;
                        disbaility = 'Yes';
                      });
                    },
                  ),
                  Text(
                    'Yes',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Radio(
                    value: 2,
                    groupValue: _value,
                    activeColor: Color(0xFFFFa00a),
                    onChanged: ((value) {
                      setState(() {
                        _value = value!;
                        disbaility = 'No';
                      });
                    }),
                  ),
                  Text(
                    'No',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Center(
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
                    //controller: disabilityController,
                    controller: disability_typeController,
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Type your Disability',
                      hintStyle: TextStyle(
                        fontSize: 15.0,
                        color: Colors.grey,
                      ),
                      hintTextDirection: TextDirection.ltr,
                    ),
                    keyboardType: TextInputType.text,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Center(
              child: Text(
                'Education',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFFCF1818),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: w * 0.11),
              child: Row(
                children: [
                  mini_buttons(
                    text: '+ Secondary Education',
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  mini_buttons(
                    text: '+ Other Education',
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text_names(text: 'Secondary School Name', color: Colors.black),
            SizedBox(
              height: 5.0,
            ),
            Text_Field(
              hint_text: 'Education details',
              controllers: educationController,
            ),
            SizedBox(
              height: 10.0,
            ),
            // Text_names(
            //   text: 'Start Year',
            //   color: Colors.black,
            // ),
            // SizedBox(
            //   height: 5.0,
            // ),
            // Padding(
            //   padding: EdgeInsets.symmetric(horizontal: w * 0.10),
            //   child: Row(
            //     children: [
            //       Month(
            //         height: h * 0.06,
            //         width: w * 0.39,
            //       ),
            //       SizedBox(
            //         width: 5.0,
            //       ),
            //       Years(
            //         height: h * 0.06,
            //         width: h * 0.18,
            //       ),
            //     ],
            //   ),
            // ),
            // SizedBox(
            //   height: 5.0,
            // ),
            // Text_names(
            //   text: 'End Year',
            //   color: Colors.black,
            // ),
            // SizedBox(
            //   height: 5.0,
            // ),
            // Padding(
            //   padding: EdgeInsets.symmetric(horizontal: w * 0.10),
            //   child: Row(
            //     children: [
            //       Month(
            //         height: h * 0.06,
            //         width: w * 0.39,
            //       ),
            //       SizedBox(
            //         width: 5.0,
            //       ),
            //       Years(
            //         height: h * 0.06,
            //         width: h * 0.18,
            //       ),
            //     ],
            //   ),
            // ),
            // SizedBox(
            //   height: 10,
            // ),
            Center(
              child: Text_names(
                text: 'Employment History',
                color: Color(0xFFCF1818),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text_Field(
              hint_text: 'Add Employment History',
              controllers: employment_historyController,
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [

            //     // Padding(
            //     //   padding: EdgeInsets.only(right: w * 0.10),
            //     //   child: Image.asset(
            //     //     'assets/plus_sign.png',
            //     //     height: h * 0.04,
            //     //     width: w * 0.04,
            //     //   ),
            //     // ),
            //   ],
            // ),
            SizedBox(
              height: 5.0,
            ),
            Center(
              child: Text_names(
                text: 'Certificates & Awards',
                color: Color(0xFFCF1818),
              ),
            ),

            SizedBox(
              height: 5.0,
            ),
            Text_Field(
              hint_text: 'Add Certificates & Awards',
              controllers: certificates_awardsController,
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [

            //     // Padding(
            //     //   padding: EdgeInsets.only(right: w * 0.10),
            //     //   child: Image.asset(
            //     //     'assets/plus_sign.png',
            //     //     height: h * 0.04,
            //     //     width: w * 0.04,
            //     //   ),
            //     // ),
            //   ],
            // ),
            SizedBox(
              height: 5,
            ),
            Center(
              child: Text_names(
                text: 'Language & Skills',
                color: Color(0xFFCF1818),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text_Field(
              hint_text: 'Add Language & Skills',
              controllers: skillsController,
            ),
            // Padding(
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [

            //     //   padding: EdgeInsets.only(right: w * 0.10),
            //     //   child: Image.asset(
            //     //     'assets/plus_sign.png',
            //     //     height: h * 0.04,
            //     //     width: w * 0.04,
            //     //   ),
            //     // ),
            //   ],
            // ),
            SizedBox(
              height: 15,
            ),
            Buttons(
              text: Text('Preview Profile'),
              onPressed: () {
                //print(moonLanding.year);
                //print(currDt.year);
                if (nin_numberController.text.isEmpty) {
                  final snackbar =
                      SnackBar(content: Text('Please Enter NIN Number'));
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                } else if (first_nameController.text.isEmpty) {
                  final snackbar =
                      SnackBar(content: Text('Please Enter First Name'));
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                } else if (second_nameController.text.isEmpty) {
                  final snackbar =
                      SnackBar(content: Text('Please Enter Second Name'));
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                } else if (mobileController.text.isEmpty) {
                  final snackbar =
                      SnackBar(content: Text('Please Enter Mobile Number'));
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                } else if (addressController.text.isEmpty) {
                  final snackbar =
                      SnackBar(content: Text('Please Enter Address'));
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                } else if (salaryController.text.isEmpty) {
                  final snackbar =
                      SnackBar(content: Text('Please Enter Salary'));
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                } else if (choose_seekers_dropdownvalue ==
                    'Choose Job Seekers') {
                  final snackbar =
                      SnackBar(content: Text('Please Choose Job Seekers'));
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                } else if (choose_religion_dropdownvalue ==
                    'Choose your religion') {
                  final snackbar =
                      SnackBar(content: Text('Please choose religion'));
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                } else if (choose_tribe_dropdownvalue == 'Choose your tribe') {
                  final snackbar =
                      SnackBar(content: Text('Please choose your tribe'));
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                } else if (heightController.text.isEmpty) {
                  final snackbar =
                      SnackBar(content: Text('Please Enter Height'));
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                } else if (choose_complexion_dropdownvalue == 'Complexion') {
                  final snackbar =
                      SnackBar(content: Text('Please choose Complexion'));
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                } else if (disability_typeController.text.isEmpty) {
                  final snackbar =
                      SnackBar(content: Text('Please Enter Disability Type'));
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                } else if (educationController.text.isEmpty) {
                  final snackbar =
                      SnackBar(content: Text('Please Enter Education'));
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                } else if (employment_historyController.text.isEmpty) {
                  final snackbar = SnackBar(
                      content: Text('Please Enter Employment History'));
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                } else if (certificates_awardsController.text.isEmpty) {
                  final snackbar = SnackBar(
                      content: Text('Please Enter Awards and Certificates'));
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                } else if (skillsController.text.isEmpty) {
                  final snackbar =
                      SnackBar(content: Text('Please Enter Skills'));
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                } else {
                  int year_value = int.parse(yeardropdownvalue);

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Preview_Profile(
                                nin_number: nin_numberController.text,
                                mobile: mobileController.text,
                                skills: skillsController.text,
                                awards: certificates_awardsController.text,
                                employment: employment_historyController.text,
                                education: educationController.text,
                                disability: disbaility,
                                height: heightController.text,
                                complesion: choose_complexion_dropdownvalue,
                                salary: salaryController.text,
                                address: addressController.text,
                                tribe: choose_tribe_dropdownvalue,
                                religion: choose_religion_dropdownvalue,
                                job_seekers: choose_seekers_dropdownvalue,
                                disability_details:
                                    disability_typeController.text,
                                gender: gender,
                                first_name: first_nameController.text,
                                last_name: second_nameController.text,
                                year_current: currDt.year.toInt(),
                                age: year_value,
                                year: yeardropdownvalue,
                                month: monthdropdownvalue,
                                day: dropdownvalue,
                              )));
                }
              },
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      )),
      bottomNavigationBar: Bottom_bar(),
    );
  }
}
