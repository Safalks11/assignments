import 'dart:async';
import 'package:flutter/material.dart';
import '2login_signup.dart';
import '6details.dart'; // Ensure you import your login_signup file correctly.

void main() {
  runApp(MaterialApp(
      home: IntroScreen(),
      debugShowCheckedModeBanner: false,
      routes: {'details': (context) => DetailsPage()}));
}

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key); // Corrected the constructor.

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  void initState() {
    // Corrected the method name.
    super.initState();

    Timer(const Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
            builder: (context) =>
                const LoginSignup()), // Corrected the class name.
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              "assets/icons/app_icon.png",
              height: 200,
              width: 200,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              "Y a t r a . c o m",
              style: TextStyle(
                color: Colors.lightGreenAccent,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
