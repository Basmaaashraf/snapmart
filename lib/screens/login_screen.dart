// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:fikra_app/screens/signup_screen.dart';
import 'package:fikra_app/constant.dart';
import 'package:fikra_app/widgets/customTextFiled.dart';
import 'package:fikra_app/screens/forgetpassword.dart';
import 'package:fikra_app/screens/enter.dart';

class LoginScreen extends StatefulWidget {
  static String id = 'LoginScreen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: kMainColor,
      appBar: AppBar(
        backgroundColor: kMainColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushNamed(context, FirstScreen.id);
          },
        ),
      ),
      body: Form(
        key: _globalKey,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Container(
                height: MediaQuery.of(context).size.height * .3,
                child: const Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Image(
                      image: AssetImage('images/icons/icons8.png'),
                    ),
                    const Positioned(
                      bottom: 0,
                      child: Text(
                        'SNAPMART',
                        style: TextStyle(
                          fontFamily: 'Pacifico',
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height * .01,
            ),
            const CustomTextField(
              hint: 'Enter your email',
              icon: Icons.email,
            ),
            SizedBox(
              height: height * .02,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                obscureText: !_passwordVisible,
                cursorColor: kMainColor,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: kSecondaryColor,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.white),
                  ),
                  hintText: 'Enter your password',
                  hintStyle: TextStyle(color: Colors.white),
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _passwordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _passwordVisible = !_passwordVisible;
                      });
                    },
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a password';
                  }
                  return null;
                },
              ),
            ),
            SizedBox(
              height: height * .05,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 120),
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  backgroundColor: Colors.black,
                ),
                onPressed: () {
                  if (_globalKey.currentState!.validate()) {
                    // Perform login logic
                  } else {
                    //Navigator.pushNamed(context, homevend.id);
                  }
                },
                child: const Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ),
            SizedBox(
              height: height * .05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Don\'t have an account ?',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, SignupScreen.id);
                  },
                  child: const Text(
                    '   Signup',
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * .02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Forget Password ?',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, ForgetScreen.id);
                  },
                  child: const Text(
                    'Reset',
                    style: TextStyle(fontSize: 16, color: Colors.black54),
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
