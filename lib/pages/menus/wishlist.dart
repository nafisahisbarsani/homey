import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../cart_controller.dart';
import '../../models/cart_model.dart';
import '../../widgets/my_color.dart';
import '../../widgets/my_text.dart';
import 'package:homey/wishlist_controller.dart';

import '../../widgets/my_text_button.dart';

class Wishlist extends StatelessWidget {
  final WishlistController controller = Get.put(WishlistController());
  final CartController cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    controller.loadWishlist(); // Load tasks when the screen opens
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Image.asset(
              "assets/heart.png",
              width: 36,
              height: 36,
            ),
            SizedBox(width: 15),
            MyText(
              text: "My Wishlist",
              color: textColor,
              fontsize: 25,
              fontWeight: FontWeight.normal,
            )
          ],
        ),
      ),
      body: Obx(() {
        if (controller.wishlists.isEmpty) {
          return Center(child: Text('Your wishlist is empty.'));
        }
        return ListView.builder(
          itemCount: controller.wishlists.length,
          itemBuilder: (context, index) {
            final item = controller.wishlists[index];
            return ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.brand,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.normal,
                      color: textColor,
                    ),
                  ),
                  Text(
                    item.price,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.normal,
                      color: textColor,
                    ),
                  ),
                  MyTextButton(
                    text: "Add to Cart",
                    onPressed: () {
                      cartController.addCart(
                        CartModel(
                          brand: item.brand,
                          price: item.price,
                          image: item.image,
                          isCompleted: false,
                        ),
                      );
                    },
                    textColor: textColor,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
              leading: Image.asset(item.image),
              trailing: IconButton(
                icon: Icon(
                  Icons.favorite,
                  color: Colors.redAccent.shade200,
                ),
                onPressed: () {
                  controller.deleteWishlist(item.id!);
                },
              ),
            );
          },
        );
      }),
    );
  }
}
