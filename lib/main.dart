import 'package:fikra_app/screens/enter.dart';
import 'package:fikra_app/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:fikra_app/screens/login_screen.dart';
import 'package:fikra_app/screens/forgetpassword.dart';
import 'package:fikra_app/screens/splashscreen.dart';
import 'package:fikra_app/screens/userhome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id: (context) => SplashScreen(),
        FirstScreen.id: (context) => FirstScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        ForgetScreen.id: (context) => ForgetScreen(),
        SignupScreen.id: (context) => SignupScreen(),
        UserHome.id: (context) => UserHome()
      },
    );
  }
}
