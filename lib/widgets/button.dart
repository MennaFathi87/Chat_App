import 'package:chatapp/constant/constant.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button({super.key, required this.textButton});
  String textButton;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        decoration: BoxDecoration(
            color: kTextColor, borderRadius: BorderRadius.circular(20)),
        width: double.infinity,
        height: 65,
        child: Center(
          child: Text(
            textButton,
            style: TextStyle(color: kPrimaryKey, fontSize: 25),
          ),
        ),
      ),
    );
  }
}
