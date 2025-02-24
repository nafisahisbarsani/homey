import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:homey/pages/home_page.dart';
import 'package:homey/pages/login/login_page.dart';
import 'package:homey/pages/register/register_page.dart';
import 'package:homey/pages/splashscreen.dart';

import 'binding/app_binding.dart';
import 'controller/login_controller.dart';
import 'controller/username_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init(); // Pastikan GetStorage diinisialisasi
  Get.put(UserController());
  Get.put(LoginController());
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      getPages: [
        GetPage(name: '/splash', page: () => Splashscreen()),
        GetPage(name: '/', page: () => Login(), binding: AppBinding()),
        GetPage(
            name: '/register',
            page: () => RegisterPage(),
            binding: AppBinding()),
        GetPage(
            name: '/HomePage', page: () => HomePage(), binding: AppBinding()),
      ],
    );
  }
}
