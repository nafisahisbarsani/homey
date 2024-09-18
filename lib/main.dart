import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homey/pages/home.dart';
import 'package:homey/pages/login.dart';
import 'package:homey/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
     initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => SplashScreen()),
        GetPage(name: '/HOME', page: () => Home()),
        GetPage(name: '/Login', page: () => Login())
      ],
    );
  }
}

