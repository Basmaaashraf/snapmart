import 'dart:async';
import 'package:flutter/material.dart';
import 'package:fikra_app/screens/enter.dart';
import 'package:fikra_app/constant.dart';

class SplashScreen extends StatefulWidget {
  static String id = 'SplashScreen';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3), // Change the duration as per your requirement
      () {
        Navigator.pushReplacementNamed(context, FirstScreen.id);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('images/icons/icons8.png'),
              width: 100, // Adjust the width as per your requirement
              height: 100, // Adjust the height as per your requirement
            ),
            SizedBox(height: 5),
            Text(
              'SNAPMART',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
