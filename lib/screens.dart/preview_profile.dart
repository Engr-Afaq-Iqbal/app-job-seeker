import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:job_app/auth/services/dio-service.dart';
import 'package:job_app/screens.dart/profile_details.dart';

import '../widgets/add_skills.dart';
import '../widgets/bottom_navigation_bar.dart';
import '../widgets/buttons.dart';
import '../widgets/preview_profile_data.dart';


class Preview_Profile extends StatelessWidget {
  String nin_number;
  String skills;
  String awards;
  String employment;
  String education;
  String disability;
  String disability_details;
  String height;
  String complesion;
  String address;
  String salary;
  String religion;
  String tribe;
  String job_seekers;
  String gender;
  String first_name;
  String last_name;
  int year_current;
  int age;
  String year;
  String month;
  String day;
  //String age;

  //String gender;
  String mobile;
  Preview_Profile({
    Key? key,
    required this.nin_number,
    required this.mobile,
    required this.skills,
    required this.awards,
    required this.employment,
    required this.education,
    required this.disability,
    required this.disability_details,
    required this.height,
    required this.complesion,
    required this.address,
    required this.salary,
    required this.religion,
    required this.tribe,
    required this.job_seekers,
    required this.gender,
    required this.first_name,
    required this.last_name,
    required this.year_current,
    required this.age,
    required this.year,
    required this.month,
    required this.day,

    //required this.age,

    //required this.gender,
  }) : super(key: key);
  //const Preview_Profile({super.key});
  void profile_record(
    var nin_number,
    var skills,
    var mobile,
    var awards,
    var employment,
    var education,
    var disability,
    var disability_details,
    var height,
    var complesion,
    var address,
    var salary,
    var religion,
    var tribe,
    var job_seekers,
    var gender,
    var name,
    var dob,
    context,
  ) async {
    var response = await DioService.post('profile', {
      "name": name,
      "NIN_Number": nin_number,
      "images": "avrator",
      "dob": dob,
      "gender": gender,
      "address": address,
      "salary": salary,
      "Mobile_no": mobile,
      "job_status": job_seekers,
      "Religion": religion,
      "tribe": tribe,
      "height": height,
      "complexion": complesion,
      "Disability": disability,
      "Disability_type": disability_details,
      "education": education,
      "skills": skills,
      "Employment_history": employment,
      "certificates_Awards": awards,
      // "name": "afaq",
      // "NIN_Number": "3230489734568",
      // "images": "avrator",
      // "dob": "2000/8/18",
      // "gender": "Male",
      // "address": "wwwdw",
      // "salary": "16k",
      // "Mobile_no": "03037654678",
      // "job_status": "internee",
      // "Religion": "Islam",
      // "tribe": "rr",
      // "height": "5.6",
      // "complexion": "white",
      // "Disability": "no",
      // "Disability_type": "no",
      // "education": "MCS",
      // "skills": "web_developing",
      // "Employment_history": "join about one month ago",
      // "certificates_Awards": "fjefjfsfsdfsdn",
    } );
    if (response['result'] == 'Success') {
      print('---------------');
      final snackbar =
          SnackBar(content: Text('Data saved successfully, Thank You!'));
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
      //print('sign Up completed');
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => profile_details()));
    } else {
      final snackbar =
          SnackBar(content: Text('Data save Failed, Please try again!'));
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    }
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xFFf3f3f3),
      appBar: AppBar(
        title: Text(
          'Profile Preview',
          style: TextStyle(color: Color(0xFFFABA52), fontSize: 20.0),
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Color(0xFFf3f3f3),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context,
                MaterialPageRoute(builder: (context) => profile_details()));
          },
          child: Icon(
            Icons.arrow_back,
            color: Color(0xFFFABA52),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.edit_rounded,
              color: Color(0xFFFABA52),
              size: 25.0,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: w * 0.042),
              child: Container(
                height: h * 1.35,
                width: w * 0.42,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 5,
                      blurRadius: 3,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(children: [
                  SizedBox(
                    height: 10,
                  ),
                  Image.asset(
                    'profile_img.png',
                    height: h * 0.15,
                    width: w * 0.15,
                  ),
                  Text(
                    first_name + ' ' + last_name,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      preview_profile_data(),
                      //preview_profile_answers(nin_number: nin_number,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
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
                              gender,
                              style: TextStyle(
                                fontSize: 11.0,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              //'23',
                              (year_current - age).toString(),
                              style: TextStyle(
                                fontSize: 11.0,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              salary,
                              style: TextStyle(
                                fontSize: 11.0,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              address,
                              style: TextStyle(
                                fontSize: 11.0,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              mobile,
                              style: TextStyle(
                                fontSize: 11.0,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              job_seekers,
                              style: TextStyle(
                                fontSize: 11.0,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              religion,
                              style: TextStyle(
                                fontSize: 11.0,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              tribe,
                              style: TextStyle(
                                fontSize: 11.0,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              height,
                              style: TextStyle(
                                fontSize: 11.0,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              complesion,
                              style: TextStyle(
                                fontSize: 11.0,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              disability,
                              style: TextStyle(
                                fontSize: 11.0,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              disability_details,
                              style: TextStyle(
                                fontSize: 11.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: h * 0.04,
                  ),
                  Container(
                    height: h * 0.17,
                    width: w * 0.42,
                    decoration: BoxDecoration(
                      color: Color(0xFFFAFAFA),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(children: [
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Languages & Skills',
                        style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                            color: Color(
                              0xFFCF1818,
                            )),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          add_skills(
                            text: skills,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                        ],
                      ),
                    ]),
                  ),
                  Container(
                    height: h * 0.17,
                    width: w * 0.42,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10.0,
                          ),
                          Center(
                            child: Text(
                              'Education',
                              style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color(
                                    0xFFCF1818,
                                  )),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: w * 0.03),
                            child: Text(
                              'Secondary Education',
                              style: TextStyle(
                                fontSize: 12.0,
                              ),
                            ),
                          ),
                          SizedBox(height: 5.0),
                          Padding(
                            padding: EdgeInsets.only(left: w * 0.03),
                            child: Text(
                              education,
                              style: TextStyle(
                                fontSize: 12.0,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                        ]),
                  ),
                  Container(
                    height: h * 0.2,
                    width: w * 0.42,
                    decoration: BoxDecoration(
                      color: Color(0xFFFAFAFA),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10.0,
                          ),
                          Center(
                            child: Text(
                              'Employment History',
                              style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color(
                                    0xFFCF1818,
                                  )),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: w * 0.03),
                            child: Text(
                              'Pipa Swan',
                              style: TextStyle(
                                fontSize: 12.0,
                              ),
                            ),
                          ),
                          SizedBox(height: 5.0),
                          Padding(
                            padding: EdgeInsets.only(left: w * 0.03),
                            child: Text(
                              employment,
                              style: TextStyle(
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                          SizedBox(height: 5.0),
                        ]),
                  ),
                  Container(
                    height: h * 0.12,
                    width: w * 0.42,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10.0,
                          ),
                          Center(
                            child: Text(
                              'Certificates & Awards',
                              style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color(
                                    0xFFCF1818,
                                  )),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: w * 0.03),
                            child: Text(
                              awards,
                              style: TextStyle(
                                fontSize: 12.0,
                              ),
                            ),
                          ),
                          SizedBox(height: 5.0),
                        ]),
                  ),
                ]),
              ),
            ),
            SizedBox(
              height: h * 0.08,
            ),
            Buttons(
              text: Text('Save Record'),
              onPressed: () {
                String name = first_name + last_name;
                var dob = (year + "/4/" + day).toString();
                print(dob);
                profile_record(
                    nin_number,
                    skills,
                    mobile,
                    awards,
                    employment,
                    education,
                    disability,
                    disability_details,
                    height,
                    complesion,
                    address,
                    salary,
                    religion,
                    tribe,
                    job_seekers,
                    gender,
                    name,
                    dob,
                    context);
              },
            ),
            SizedBox(
              height: h * 0.08,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Bottom_bar(),
    );
  }
}
