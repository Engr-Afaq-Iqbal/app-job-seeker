import 'package:flutter/material.dart';
import 'package:job_app/screens.dart/signinScreen.dart';


void main() {
  runApp(jobseeker());
}

class jobseeker extends StatelessWidget {
  const jobseeker({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: signin(),
    );
  }
}
