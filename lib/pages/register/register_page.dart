import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:homey/pages/login/login_page.dart';
import '../../controller/register_controller.dart';
import '../../widgets/my_button.dart';
import '../../widgets/my_color.dart';
import '../../widgets/my_text_field.dart';

class RegisterPage extends StatelessWidget {
  final RegisterController registerController = Get.put(RegisterController());
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
   RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Get.to(() => Login());
          },
        ),
        iconTheme: const IconThemeData(
          color: textColor,
        ),
      ),
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
                  MyTextField(
                    hintText: 'Full name',
                    isObsecure: false,
                    fontsize: 15,
                    controller: fullNameController,
                  ),
                  MyTextField(
                    hintText: 'Email',
                    isObsecure: false,
                    fontsize: 15,
                    controller: emailController,
                  ),
                  SizedBox(height: 20),
                  Obx(() => registerController.isLoading.value
                      ? Center(
                    child: CircularProgressIndicator(
                      strokeWidth: 3,
                      color: textColor,
                    ),
                  )
                      : MyButton(
                    text: 'Register',
                    color: textColor,
                    onPressed: () {
                      final username = usernameController.text.trim();
                      final password = passwordController.text.trim();
                      final fullName = fullNameController.text.trim();
                      final email = emailController.text.trim();

                      if (username.isEmpty ||
                          password.isEmpty ||
                          fullName.isEmpty ||
                          email.isEmpty) {
                        Get.snackbar('Error', 'All fields are required');
                        return;
                      }
                      registerController.register(
                          username, password, fullName, email);
                    },
                    fontSize: 14, fontWeight: FontWeight.bold,)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
