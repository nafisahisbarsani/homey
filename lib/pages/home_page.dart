import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:homey/controller/bottom_nav_controller.dart';
import 'package:homey/pages/menus/cart.dart';
import 'package:homey/pages/menus/home.dart';
import 'package:homey/pages/menus/profile.dart';
import 'package:homey/pages/menus/wishlist.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final BottomNavController bottomNavController = Get.put(BottomNavController());
    final List<Widget> menus = [Home(), Wishlist(), Cart(), Profile()];

    return Obx((){
      return Scaffold(
        body: menus[bottomNavController.selectedIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: bottomNavController.selectedIndex.value,
          onTap: bottomNavController.changeIndexMenu,
          selectedItemColor: Colors.black54,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(icon: Container(width: 24,height: 24, child: Image.asset("assets/home.png")), label: "Home"),
            BottomNavigationBarItem(icon: Container(width: 24,height: 24, child: Image.asset("assets/wishlist.png")), label: "Wishlist"),
            BottomNavigationBarItem(icon: Container(width: 24,height: 24, child: Image.asset("assets/cart.png")), label: "Cart"),
            BottomNavigationBarItem(icon: Container(width: 24,height: 24, child: Image.asset("assets/account.png")), label: "Profile"),
          ],),
      );

    }
    );
  }
}
