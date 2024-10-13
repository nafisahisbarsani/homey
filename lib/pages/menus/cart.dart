import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homey/widgets/my_color.dart';
import 'package:homey/widgets/my_text.dart';

import '../../cart_controller.dart';

class Cart extends StatelessWidget {
  final CartController cartController = Get.put(CartController());


  @override
  Widget build(BuildContext context) {
    cartController.loadCart(); // Load tasks when the screen opens
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Image.asset(
              "assets/cart.png",
              width: 27,
              height: 27,
            ),
            SizedBox(width: 15,),
            MyText(text: "My Cart", color: textColor, fontsize: 25, fontWeight: FontWeight.normal,)
          ],
        ),
        elevation: 0,
      ),

      body: Obx(() {
        if (cartController.carts.isEmpty) {
          return Center(child: Text('Your cart is empty.'));
        }
        return ListView.builder(
          itemCount: cartController.carts.length,
          itemBuilder: (context, index) {
            final item = cartController.carts[index];
            return ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Brand Name
                  Text(
                    item.brand,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.normal,
                      color: textColor,
                    ),
                  ),
                  // Price
                  Text(
                    item.price,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.normal,
                      color: textColor,
                    ),
                  ),
                ],
              ),
              leading: Image.asset(item.image),
              trailing: IconButton(
                icon: Icon(
                  Icons.restore_from_trash_sharp,
                  color: Colors.redAccent.shade200,
                ),
                onPressed: () {
                  cartController.deleteCart(item.id!);
                },
              ),
            );
          },
        );
      }),
    );
  }
}