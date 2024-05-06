import 'package:flutter/material.dart';
import 'package:fikra_app/constant.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final IconData icon;

  const CustomTextField({
    required this.icon,
    required this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your data';
              }
            },
            cursorColor: kMainColor,
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: TextStyle(color: Colors.white),
              prefixIcon: Icon(icon),
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
          ),
        ],
      ),
    );
  }
}
