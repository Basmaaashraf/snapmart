import 'package:flutter/material.dart';
import 'package:fikra_app/constant.dart';
import 'package:fikra_app/screens/enter.dart';

class UserHome extends StatelessWidget {
  static const String id = 'UserHome';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      appBar: AppBar(
        backgroundColor: kMainColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushNamed(context, FirstScreen.id);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(
                Icons.person), // Use a user icon or any other appropriate icon
            onPressed: () {
              // Navigate to the screen with user information
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image.asset(
            // 'images/icons/icons8.png',
            // height: 100,
            // width: 100,
            //),
            SizedBox(height: 10),
            Text(
              'SNAPMART',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton.icon(
              onPressed: () {
                // Navigate to the screen for uploading photo
              },
              icon: Icon(Icons.file_upload),
              label: Text('Upload Photo'),
              style: ElevatedButton.styleFrom(
                textStyle: TextStyle(fontSize: 18),
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                backgroundColor: kSecondaryColor,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                // Navigate to the screen for taking photo from camera
              },
              icon: Icon(Icons.camera_alt),
              label: Text('Take Photo'),
              style: ElevatedButton.styleFrom(
                textStyle: TextStyle(fontSize: 18),
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                backgroundColor: kSecondaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
