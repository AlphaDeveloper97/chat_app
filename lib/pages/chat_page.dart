import 'package:chat_app/constants.dart';
import 'package:chat_app/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});
  static String id = "Chat";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage(kLogo), height: 70),
            CustomText(text: "Chat", fontSize: 23),
          ],
        ),
      ),
      body: ,
    );
  }
}
