import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:homey/widgets/my_color.dart';

import '../controller/login_controller.dart';

class Splashscreen extends StatelessWidget {
  final LoginController loginController = Get.find<LoginController>();
  Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      if (loginController.isLoggedIn()) {
        Get.offNamed('/HomePage'); // Navigasi ke halaman utama
      } else {
        Get.offNamed('/login'); // Navigasi ke halaman login
      }
    });
    return Scaffold(
      backgroundColor: textColor,
      body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
          Image.asset('assets/logo2.png'),
          const CircularProgressIndicator(color: firstColor,),
        ],
      )),
    );
  }
}
