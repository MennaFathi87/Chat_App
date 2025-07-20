import 'package:chatapp/constant/constant.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          //to remove arrow back
          automaticallyImplyLeading: false,
          //to make text in center we use attribute centerTitle:True
          backgroundColor: kPrimaryKey,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                klogo,
                height: 50,
              ),
              Text(
                'Chat',
                style: TextStyle(color: kTextColor),
              ),
            ],
          )),
       
    );
  }
}
