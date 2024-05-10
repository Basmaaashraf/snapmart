import 'package:fikra_app/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:fikra_app/screens/login_screen.dart';
import 'package:fikra_app/constant.dart';
import 'package:fikra_app/screens/userhome.dart';

class FirstScreen extends StatelessWidget {
  static String id = 'FirstScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * .1,
                    child: Image(
                      image: AssetImage('images/icons/icons8.png'),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'SNAPMART',
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                  backgroundColor: kSecondaryColor,
                  side: BorderSide(color: Colors.white)),
              onPressed: () {
                Navigator.pushNamed(context, LoginScreen.id);
              },
              child: Text(
                '      login     ',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            SizedBox(height: 20),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: kSecondaryColor,
                side: BorderSide(color: Colors.white),
              ),
              onPressed: () {
                Navigator.pushNamed(context, SignupScreen.id);
              },
              child: Text(
                '    signup    ',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, UserHome.id);
                  },
                  child: const Text(
                    'Skip',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
