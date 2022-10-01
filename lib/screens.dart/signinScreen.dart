//import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:job_app/screens.dart/signupScreen.dart';
import '../auth/services/dio-service.dart';
import 'dashboard.dart';



class signin extends StatefulWidget {
  const signin({super.key});

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void sign_in(

      String email,
      String password,
      context,
      ) async {
    if (email.isEmpty) {
      final snackbar = SnackBar(content: Text('Please enter email'));
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    } else if (password.isEmpty) {
      final snackbar = SnackBar(content: Text('Please enter password'));
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    }  else {
      var response = await DioService.post('login', {
        "email": email,
        "password": password,
      } );
      print(response);
      if (response['result'] == 'Success') {
        final snackbar =
        SnackBar(content: Text('Signin Completed.'));
        ScaffoldMessenger.of(context).showSnackBar(snackbar);
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => dashboard()));
      } else {
        final snackbar =
        SnackBar(content: Text('Signin Failed, Please try again!'));
        ScaffoldMessenger.of(context).showSnackBar(snackbar);
      }
    }

  }




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
                  'Sign In',
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
                  'Welcome Back',
                  style: TextStyle(
                    color: Color(0xFFfaba52),
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(
                  height: h * 0.05,
                ),
                Container(
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
                SizedBox(
                  height: h * 0.01,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
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
                SizedBox(
                  height: h * 0.02,
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
                        print(emailController.text);
                        print(passwordController.text);
                        sign_in(
                          emailController.text.toString(),
                          passwordController.text.toString(),
                          context,
                        );
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => dashboard()));
                      },
                      child: Text('Login'),
                    )),
                SizedBox(
                  height: h * 0.03,
                ),
                Text(
                  'Forgot Password?',
                  style: TextStyle(color: Color(0xFFf9c063)),
                ),
                SizedBox(
                  height: h * 0.02,
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
                Text('Dont\' have an Account?'),
                SizedBox(
                  height: h * 0.02,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => signup()));
                  },
                  child: Text(
                    'Sign Up',
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
