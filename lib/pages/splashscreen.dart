import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:homey/widgets/my_color.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Get.offNamed('/');

    });
    return Scaffold(
      backgroundColor: textColor,
      body: Center(
            child: Image.asset("assets/logo2.png"),
      ),
    );
  }
}
