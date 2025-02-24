import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:homey/pages/menus/home_tablet.dart';
import 'package:homey/pages/menus/home.dart';
import 'package:homey/reponsive_controller.dart';

class ResponsiveLayout extends StatelessWidget {
  ResponsiveLayout({super.key});

  final ResponsiveController responsiveController = Get.find();

  @override
  Widget build(BuildContext context) {
    // Update screen width based on current device width
    responsiveController.updateScreenWidth(MediaQuery.of(context).size.width);

    return Obx(() {
      if (responsiveController.isMobile()) {
        return Home();
      } else {
        return Hometablet();
      }
    });
  }
}
