import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homey/widgets/my_button.dart';
import 'package:homey/widgets/my_color.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: MyButton(onPressed: () { Get.toNamed('HOME'); }, text: 'Login', color: firstColor, fontSize: 8,
          ),
        ),
      ),
    );
  }
}

