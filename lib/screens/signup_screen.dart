import 'package:fikra_app/screens/userhome.dart';
import 'package:flutter/material.dart';
import 'package:fikra_app/screens/login_screen.dart';
import 'package:fikra_app/constant.dart';
import 'package:fikra_app/widgets/customTextFiled.dart';

class SignupScreen extends StatefulWidget {
  static String id = 'SignupScreen';

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  bool _passwordVisible = false;
  bool _confirmPasswordVisible = false;
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
  bool _isVendor = false;
  bool _isUser = false;

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: kMainColor,
      body: Form(
        key: _globalKey,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Container(
                height: MediaQuery.of(context).size.height * .2,
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Image(
                      image: AssetImage('images/icons/icons8.png'),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Text(
                        'SNAPMART',
                        style: TextStyle(
                            fontFamily: 'Pacifico',
                            fontSize: 25,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: height * .02),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                cursorColor: kMainColor,
                decoration: InputDecoration(
                  hintText: 'Enter your name',
                  hintStyle: TextStyle(color: Colors.white),
                  prefixIcon: Icon(Icons.perm_identity),
                  filled: true,
                  fillColor: kSecondaryColor,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  // Check if the entered value contains only letters
                  if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
                    return 'Please enter letters only';
                  }
                  return null;
                },
              ),
            ),
            SizedBox(height: height * .02),
            CustomTextField(
              hint: 'Enter your email',
              icon: Icons.email,
            ),
            SizedBox(height: height * .02),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                obscureText: !_passwordVisible,
                controller: _passwordController,
                cursorColor: kMainColor,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: kSecondaryColor,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  hintText: 'Enter your password',
                  hintStyle: TextStyle(color: Colors.white),
                  prefixIcon: Icon(Icons.lock),
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
            SizedBox(height: height * .02),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                obscureText: !_confirmPasswordVisible,
                controller: _confirmPasswordController,
                cursorColor: kMainColor,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: kSecondaryColor,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  hintText: 'Confirm password',
                  hintStyle:
                      TextStyle(color: Color.fromARGB(255, 167, 202, 231)),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _confirmPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _confirmPasswordVisible = !_confirmPasswordVisible;
                      });
                    },
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please confirm your password';
                  }
                  if (value != _passwordController.text) {
                    return 'Passwords do not match';
                  }
                  return null;
                },
              ),
            ),
            SizedBox(height: height * .02),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Checkbox(
                  value: _isVendor,
                  onChanged: (value) {
                    setState(() {
                      _isVendor = value!;
                      if (_isVendor) {
                        _isUser = false;
                      }
                    });
                  },
                ),
                Text(
                  ' vendor',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                SizedBox(width: 20),
                Checkbox(
                  value: _isUser,
                  onChanged: (value) {
                    setState(() {
                      _isUser = value!;
                      if (_isUser) {
                        _isVendor = false;
                      }
                    });
                  },
                ),
                Text(
                  ' user',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
            if (_isVendor)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: CustomTextField(
                  icon: Icons.branding_watermark,
                  hint: 'Enter your brand name',
                ),
              ),
            SizedBox(height: height * .02),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 120),
              child: Builder(
                builder: (context) => TextButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.black,
                    ),
                  ),
                  onPressed: () {
                    if (_globalKey.currentState!.validate()) {
                      if (_isVendor) {
                        // Add your vendor signup logic here
                      } else if (_isUser) {
                        Navigator.pushNamed(context, UserHome.id);
                      } else {
                        // Show error message if no option is selected
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Please select an option'),
                          ),
                        );
                      }
                    }
                  },
                  child: Text(
                    'Sign up',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(height: height * .01),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Already have an account?',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.popAndPushNamed(context, LoginScreen.id);
                  },
                  child: Text(
                    ' Login',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
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
