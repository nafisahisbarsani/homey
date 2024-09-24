import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homey/pages/home_page.dart';
import 'package:homey/pages/login.dart';
import 'package:homey/pages/splashscreen.dart';

import 'binding/app_binding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/splash', //
      getPages: [
        GetPage(name: '/splash', page: () => Splashscreen()),
        GetPage(name: '/', page: () => Login()),
        GetPage(
            name: '/HomePage',
            page: () => HomePage(),
            binding: AppBinding(),
        )
      ],
    );
  }
}