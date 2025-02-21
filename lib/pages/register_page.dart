import 'package:chat_app/constants.dart';
import 'package:chat_app/pages/login_page.dart';
import 'package:chat_app/widgets/custom_button.dart';
import 'package:chat_app/widgets/custom_text.dart';
import 'package:chat_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});
  static String id = "register";

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                  CustomText(
                    text: "REGISTER",
                    fontSize: 27,
                    color: Colors.white,
                  ),
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
                obscureText: false,
              ),
              SizedBox(height: 20),
              CustomButton(onTap: () {}, text: "REGISTER"),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text: "Already have an account?   ",
                    color: Colors.white,
                    fontSize: 14,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, LoginPage.id);
                    },
                    child: CustomText(
                      text: "Login",
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
