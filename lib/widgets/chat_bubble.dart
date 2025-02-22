import 'package:chat_app/constants.dart';
import 'package:chat_app/widgets/custom_text.dart' show CustomText;
import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16, bottom: 25, top: 25),
      margin: EdgeInsets.only(left: 20, right: 20, top: 8, bottom: 8),
      alignment: Alignment.centerLeft,
      height: 85,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35),
          bottomRight: Radius.circular(35),
        ),
      ),
      child: CustomText(
        text: "Hallo welcome my name mostafa",
        fontSize: 20,
        color: Colors.white,
      ),
    );
  }
}
