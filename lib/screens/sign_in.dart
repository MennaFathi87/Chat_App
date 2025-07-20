import 'package:chatapp/constant/constant.dart';
import 'package:chatapp/screens/sign_up.dart';
import 'package:chatapp/widgets/button.dart';
import 'package:chatapp/widgets/custome_text_field.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  static const String id = 'SignIn';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryKey,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image(image: AssetImage('assets/scholar.png')),
            Text(
              "Scholar Chat",
              style: TextStyle(
                  fontSize: 35, fontFamily: 'Pacifico', color: kTextColor),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Sign In",
                  style: TextStyle(fontSize: 35, color: kTextColor),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            CustomeTextField(
              hintText: "Enter Your Email",
            ),
            SizedBox(
              height: 30,
            ),
            CustomeTextField(
              hintText: "Enter Your Password",
            ),
            SizedBox(
              height: 30,
            ),
            Button(
              textButton: 'sign in',
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'Do You Have An Account? ',
                style: TextStyle(color: kTextColor),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, SignUp.id);
                },
                child: Text(
                  ' Sign Up',
                  style: TextStyle(color: kTextColor),
                ),
              )
            ])
          ],
        ),
      ),
    );
  }
}
