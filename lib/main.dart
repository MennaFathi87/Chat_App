import 'package:chatapp/screens/sign_in.dart';
import 'package:chatapp/screens/sign_up.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Chatapp());
}

class Chatapp extends StatelessWidget {
  const Chatapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        SignIn.id: (context) => const SignIn(),
        SignUp.id: (context) => const SignUp(),
      },
      initialRoute: SignIn.id,
    );
  }
}
