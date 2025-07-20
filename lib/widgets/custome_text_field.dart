import 'package:chatapp/constant/constant.dart';
import 'package:flutter/material.dart';

class CustomeTextField extends StatelessWidget {
   CustomeTextField({required this.hintText});
  String? hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.white),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: kTextColor,
          ),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: kTextColor,
          ),
        ),
      ),
    );
  }
}
