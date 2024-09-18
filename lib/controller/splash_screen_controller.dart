 import 'package:flutter/cupertino.dart';
 import 'package:get/get.dart';
 import 'package:get_storage/get_storage.dart';


class SplashScreenController extends GetxController {
 final getStorage = GetStorage();

 void onReady() {
  super.onReady();
  if (getStorage.read("id") != null) {
   Future.delayed(const Duration(milliseconds: 3000), () {
    Get.offAllNamed('Home');
   });
  } else {

   Get.offAllNamed('Login');
  }
 }
 }
