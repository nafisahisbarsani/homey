import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homey/widgets/my_button.dart';
import 'package:homey/widgets/my_color.dart';
import 'package:homey/widgets/my_text.dart';
import 'package:homey/widgets/my_text_field.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
                  Image.asset("assets/logo3.png", width: 100, height: 100,),
                  SizedBox(height: 40),
                  MyTextField(hintText: "username", isObsecure: false, fontsize: 16),
                  MyTextField(hintText: "password", isObsecure: true, fontsize: 16),
                  SizedBox(height: 20),
                  MyButton(text: "Login", color: textColor, onPressed: (){Get.toNamed('HomePage');}, fontSize: 17),
                  SizedBox(height: 15),
                  Center(child: MyText(text: "or login with", color: textColor, fontsize: 15)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

