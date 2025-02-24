import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homey/widgets/my_button.dart';
import 'package:homey/widgets/my_color.dart';
import 'package:homey/widgets/my_text.dart';
import 'package:homey/widgets/my_text_button.dart';
import 'package:homey/widgets/my_text_field.dart';

import '../../controller/login_controller.dart';

class Login extends StatelessWidget {
  final LoginController loginController = Get.find<LoginController>();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
   Login({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.asset("assets/logo3.png", width: 100, height: 100),
                  const SizedBox(height: 40),
                  MyTextField(
                    hintText: "Username",
                    isObsecure: false,
                    fontsize: 16,
                    controller: usernameController,
                  ),
                  MyTextField(
                    hintText: "Password",
                    isObsecure: true,
                    fontsize: 16,
                    controller: passwordController,
                  ),
                  const SizedBox(height: 20),
                  Obx(() {
                    return loginController.isLoading.value
                        ? Center(
                      child: CircularProgressIndicator(
                        strokeWidth: 3,
                        color: textColor,
                      ),
                    )
                        : MyButton(
                      text: 'Login',
                      color: textColor,
                      onPressed: () {
                        final username = usernameController.text.trim();
                        final password = passwordController.text.trim();
                        if (username.isEmpty || password.isEmpty) {
                          Get.snackbar('Error', 'All fields are required');
                          return;
                        }
                        loginController.login(username, password);
                      },
                      fontSize: 14, fontWeight: FontWeight.bold,);
                  }),
                  const SizedBox(height: 15),
                  Center(
                    child: MyText(
                      text: "or login with",
                      color: textColor,
                      fontsize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(height: 35),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/google.png", width: 35, height: 35),
                      const SizedBox(width: 40),
                      const Icon(Icons.apple, size: 47),
                      const SizedBox(width: 40),
                      Icon(Icons.facebook, color: facebookColor, size: 45),
                    ],
                  ),
                  const SizedBox(height: 35),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyText(
                        text: "Don't have account? ",
                        color: textColor,
                        fontsize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      MyTextButton(
                        text: "Sign in here",
                        onPressed: () {
                          Get.toNamed('/register');
                        },
                        textColor: textColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
