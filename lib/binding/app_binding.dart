import 'package:get/get.dart';
import 'package:homey/controller/bottom_nav_controller.dart';

import '../controller/login_controller.dart';
import '../controller/register_controller.dart';
import '../controller/username_controller.dart';


class AppBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => UserController());
    Get.lazyPut<LoginController>(() => LoginController());
    Get.lazyPut<RegisterController>(() => RegisterController());
    Get.lazyPut(() => BottomNavController());
  }

}