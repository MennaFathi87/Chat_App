import 'package:chatapp/constant/constant.dart';
import 'package:chatapp/screens/sign_in.dart';
import 'package:chatapp/widgets/button.dart';
import 'package:chatapp/widgets/custome_text_field.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});
  static const String id = 'SignUp';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryKey,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Image(image: AssetImage('assets/scholar.png')),
            Text(
              "Scholar Chat",
              style: TextStyle(
                  fontSize: 35, fontFamily: 'Pacifico', color: kTextColor),
            ),
            SizedBox(
              height: 75,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Register",
                  style: TextStyle(fontSize: 35, color: kTextColor),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            CustomeTextField(
              hintText: "Enter Your Name",
            ),
            SizedBox(
              height: 30,
            ),
            CustomeTextField(
              hintText: "Enter Your Phone",
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
              textButton: 'Sign Up',
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, SignIn.id);
              },
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  ' Sign In',
                  style: TextStyle(color: kTextColor),
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
