import 'package:get/get.dart';
import 'package:homey/controller/bottom_nav_controller.dart';

class AppBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => BottomNavController());

  }

}