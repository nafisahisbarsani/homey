import 'package:get/get.dart';

class ResponsiveController extends GetxController{
  var screenwidth = 0.0. obs;
  void updateScreenWidth(double width){
    screenwidth.value = width;
  }

  bool isMobile() => screenwidth.value < 600;
  bool isTablet() => screenwidth.value >= 600 && screenwidth.value < 1200;

}