import 'package:chat_app/constants.dart';
import 'package:chat_app/widgets/custom_button.dart';
import 'package:chat_app/widgets/custom_text.dart';
import 'package:chat_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ListView(
          children: [
            SizedBox(height: 60),
            Image(image: AssetImage(kLogo), height: 100),

            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  text: "Scholar Chat",
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Pacifico",
                  color: Colors.white,
                ),
              ],
            ),
            SizedBox(height: 90),
            const Row(
              children: [
                CustomText(text: "LOGIN", fontSize: 27, color: Colors.white),
              ],
            ),
            SizedBox(height: 10),
            CustomTextFormField(hintText: "Email"),
            SizedBox(height: 10),
            CustomTextFormField(hintText: "Password"),
            SizedBox(height: 20),
            CustomButton(),
          ],
        ),
      ),
    );
  }
}
