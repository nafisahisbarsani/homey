import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:homey/pages/menus/profile.dart';
import 'package:homey/widgets/my_button.dart';
import 'package:homey/widgets/my_color.dart';

import '../controller/login_controller.dart';

class Account extends StatelessWidget {
  final LoginController loginController = Get.find<LoginController>();
  Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Get.to(() => Profile());
          },
        ),
        iconTheme: const IconThemeData(
          color: textColor,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyButton(
                text: 'Logout',
                color: textColor,
                onPressed: () {
                  loginController.logout();
                },
                fontSize: 12,
                fontWeight: FontWeight.normal)
          ],
        ),
      ),
    );
  }
}
