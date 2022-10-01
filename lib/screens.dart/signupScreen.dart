import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:job_app/auth/services/dio-service.dart';
import 'package:job_app/screens.dart/signinScreen.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController optController = TextEditingController();
  TextEditingController confirm_passwordController = TextEditingController();

  void sign_up(
    String name,
    String email,
    String password,
    String confirm_password,
    context,
  ) async {
    if (name.isEmpty) {
      final snackbar = SnackBar(content: Text('Please enter name'));
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    } else if (email.isEmpty) {
      final snackbar = SnackBar(content: Text('Please enter email'));
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    } else if (password.isEmpty) {
      final snackbar = SnackBar(content: Text('Please enter password'));
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    }  else if (confirm_password.isEmpty) {
      final snackbar = SnackBar(content: Text('Please enter confirm password'));
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    }else {
      var response = await DioService.post('register', {
        "name": name,
        "email": email,
        "password": password,
        "confirm_password":confirm_password,
      } );
      if (response['result'] == 'Success') {
        final snackbar =
            SnackBar(content: Text('Signup Completed, Thank You!'));
        ScaffoldMessenger.of(context).showSnackBar(snackbar);
        //print('sign Up completed');
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => signin()));
      } else {
        final snackbar =
            SnackBar(content: Text('Signup Failed, Please try again!'));
        ScaffoldMessenger.of(context).showSnackBar(snackbar);
      }
    }
  }

  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFf3f3f3),
      body: Center(
        child: Container(
          height: h * 0.9,
          child: SingleChildScrollView(
            child: Form(
              key: _formkey,
              child: Column(children: <Widget>[
                Container(
                  height: h * 0.2,
                  width: w * 0.5,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/new_logo.png'),
                  )),
                ),
                Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Color(0xFFfaba52),
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(
                  height: h * 0.015,
                ),
                Text(
                  'Welcome to the World of Opportunities',
                  style: TextStyle(
                    color: Color(0xFFfaba52),
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(
                  height: h * 0.05,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                  ),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    height: h * 0.06,
                    width: w * 0.7,
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
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: TextFormField(
                        controller: nameController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Name',
                          hintStyle: TextStyle(fontSize: 15.0),
                          hintTextDirection: TextDirection.ltr,
                        ),
                        keyboardType: TextInputType.name,
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: h * 0.01,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                  ),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    height: h * 0.06,
                    width: w * 0.7,
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
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Email ID',
                          hintStyle: TextStyle(fontSize: 15.0),
                          hintTextDirection: TextDirection.ltr,
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: h * 0.01,
                ),
                // Padding(
                //   padding: const EdgeInsets.symmetric(
                //     vertical: 10.0,
                //   ),
                //   child: Container(
                //     padding: EdgeInsets.symmetric(horizontal: 15, vertical: 9),
                //     height: h * 0.06,
                //     width: w * 0.7,
                //     decoration: BoxDecoration(
                //       boxShadow: [
                //         BoxShadow(
                //           color: Colors.grey.withOpacity(0.1),
                //           spreadRadius: 5,
                //           blurRadius: 3,
                //           // changes position of shadow
                //         ),
                //       ],
                //       color: Colors.white,
                //       borderRadius: BorderRadius.circular(12),
                //     ),
                //     child: Center(
                //       child: TextFormField(
                //         //controller: emailController,
                //         decoration: InputDecoration(
                //           border: InputBorder.none,
                //           hintText: 'Nationality',
                //           hintStyle: TextStyle(fontSize: 15.0),
                //           hintTextDirection: TextDirection.ltr,
                //         ),
                //         keyboardType: TextInputType.name,
                //       ),
                //     ),
                //   ),
                // ),
                SizedBox(
                  height: h * 0.01,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                  ),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    height: h * 0.06,
                    width: w * 0.7,
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
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: TextFormField(
                        controller: passwordController,
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password',
                          hintStyle: TextStyle(
                            fontSize: 15.0,
                          ),
                          hintTextDirection: TextDirection.ltr,
                        ),
                        keyboardType: TextInputType.number,
                        obscureText: true,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: h * 0.01,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                  ),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 9, horizontal: 15),
                    height: h * 0.06,
                    width: w * 0.7,
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
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: TextField(
                        controller: confirm_passwordController,
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Confirm Password',
                          hintStyle: TextStyle(
                            fontSize: 15.0,
                          ),
                          hintTextDirection: TextDirection.ltr,
                        ),
                        keyboardType: TextInputType.number,
                        obscureText: true,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: h * 0.03,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 70),
                  child: Row(
                    children: [
                      Checkbox(
                          value: isChecked,
                          activeColor: Colors.orangeAccent,
                          onChanged: (newBool) {
                            setState(() {
                              isChecked = newBool;
                            });
                          }),
                      Text(
                        'you accept terms & conditions',
                        style: TextStyle(
                            color: Color(0xFFffa00a),
                            fontSize: 13.0,
                            fontWeight: FontWeight.w200),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: h * 0.03,
                ),
                Container(
                    height: h * 0.06,
                    width: w * 0.7,
                    decoration: BoxDecoration(
                      color: Color(0xFFffa00a),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                      ),
                      onPressed: () {
                        sign_up(
                            nameController.text.toString(),
                            emailController.text.toString(),
                            passwordController.text.toString(),
                            confirm_passwordController.text.toString(),
                            context);
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) => signin()));
                      },
                      child: Text('Signup'),
                    )),
                SizedBox(
                  height: h * 0.03,
                ),
                Text(
                  '---------------------OR---------------------',
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                Container(
                  height: h * 0.1,
                  width: w * 0.5,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/Group 546.png'),
                  )),
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                Text(
                  'Terms & Conditions',
                  style: TextStyle(
                    color: Colors.red,
                    decoration: TextDecoration.underline,
                    fontSize: 11.0,
                  ),
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                Text('Already have an account?'),
                SizedBox(
                  height: h * 0.02,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => signin()));
                  },
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      color: Color(0xFFfaba52),
                      decoration: TextDecoration.underline,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
