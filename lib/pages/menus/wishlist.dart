import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../widgets/my_color.dart';
import '../../widgets/my_text.dart';
import 'package:homey/wishlist_controller.dart';

class Wishlist extends StatelessWidget {
  const Wishlist({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = Get.find<WishlistController>();

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
              SizedBox(width: 15,),
              MyText(text: "My Wishlist", color: textColor, fontsize: 25, fontWeight: FontWeight.normal,)
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
              title: Text(
                item.brand,
                style: GoogleFonts.poppins(fontWeight: FontWeight.bold, color: textColor),
              ),
              subtitle: Text(
                item.price,
                style: GoogleFonts.poppins(fontWeight: FontWeight.bold, color: textColor),
              ),
              leading: Image.asset(item.image),
            trailing: IconButton(
            icon: Icon(
            Icons.favorite, // filled icon
            color: Colors.pink,
            ), onPressed: () { controller.deleteWishlist(item.id!);
            },
            ),
            );
          },
        );
      }),
    );
  }
}