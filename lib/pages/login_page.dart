import 'package:chat_app/constants.dart';
import 'package:chat_app/pages/register_page.dart';
import 'package:chat_app/widgets/custom_button.dart';
import 'package:chat_app/widgets/custom_text.dart';
import 'package:chat_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  static String id = "login";

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? email;

  String? password;
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Form(
          key: formKey,
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
              SizedBox(height: 8),
              CustomTextFormField(
                onChanged: (value) {
                  email = value;
                },
                hintText: "Email",
              ),
              SizedBox(height: 10),
              CustomTextFormField(
                onChanged: (value) {
                  password = value;
                },
                hintText: "Password",
              ),
              SizedBox(height: 20),
              CustomButton(onTap: () {}, text: "LOGIN"),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text: "Don't have an account?   ",
                    color: Colors.white,
                    fontSize: 14,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, RegisterPage.id);
                    },
                    child: CustomText(
                      text: "Register",
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
