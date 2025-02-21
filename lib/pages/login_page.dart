import 'package:chat_app/constants.dart';
import 'package:chat_app/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: ListView(
        children: [
          Image(image: AssetImage(kLogo)),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                text: "Scholar Chat",
                fontSize: 27,
                fontWeight: FontWeight.w500,
                fontFamily: "Pacifico",
                color: Colors.white,
              ),
            ],
          ),
          const Row(
            children: [
              CustomText(text: "LOGIN", fontSize: 27, color: Colors.white),
            ],
          ),
        ],
      ),
    );
  }
}
