import 'package:chat_app/constants.dart';
import 'package:chat_app/models/message_model.dart';
import 'package:chat_app/widgets/custom_text.dart' show CustomText;
import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({
    super.key,
    required this.message,
    //  required this.message
  });
  final String message;
  // final MessageModel message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.only(left: 16, right: 16, bottom: 25, top: 25),
        margin: EdgeInsets.only(left: 20, right: 20, top: 8, bottom: 8),

        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35),
            topRight: Radius.circular(35),
            bottomRight: Radius.circular(35),
          ),
        ),
        child: CustomText(text: message, fontSize: 20, color: Colors.white),
      ),
    );
  }
}

class ChatBubbleForFriend extends StatelessWidget {
  const ChatBubbleForFriend({
    super.key,
    required this.message,
    //  required this.message
  });
  final String message;
  // final MessageModel message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        padding: EdgeInsets.only(left: 16, right: 16, bottom: 25, top: 25),
        margin: EdgeInsets.only(left: 20, right: 20, top: 8, bottom: 8),

        decoration: BoxDecoration(
          color: kSecondColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35),
            topRight: Radius.circular(35),
            bottomLeft: Radius.circular(35),
          ),
        ),
        child: CustomText(text: message, fontSize: 20, color: Colors.white),
      ),
    );
  }
}
