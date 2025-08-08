import 'package:chatapp/firebase_options.dart';
import 'package:chatapp/screens/chat_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:chatapp/screens/sign_in.dart';
import 'package:chatapp/screens/sign_up.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(Chatapp());
}

class Chatapp extends StatelessWidget {
  const Chatapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        SignIn.id: (context) => const SignIn(),
        SignUp.id: (context) => SignUp(),
      },
      initialRoute: SignIn.id,
      home: ChatScreen(),
    );
  }
}
