import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homey/cart_controller.dart';
import 'package:homey/models/cart_model.dart';
import 'package:homey/widgets/my_cart_item.dart';
import 'package:homey/widgets/my_color.dart';
import 'package:homey/widgets/my_text.dart';
import 'package:homey/widgets/my_text_field.dart';
import '../../controller/username_controller.dart';
import '../../models/wishlist_model.dart';
import '../../widgets/my_text_button.dart';
import '../../wishlist_controller.dart';

class Home extends StatelessWidget {
  final UserController usercontroller = Get.put(UserController());
   Home({super.key});

  @override
  Widget build(BuildContext context) {
    final WishlistController wishlistController = Get.put(WishlistController());
    final CartController cartController = Get.put(CartController());

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset("assets/logo3.png", width: 70, height: 70),
            Spacer(),
            Image.asset("assets/account.png", width: 22, height: 22),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText(
                  text: "Hai👋",
                  color: textColor,
                  fontsize: 12,
                  fontWeight: FontWeight.normal,
                ),

              ],
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyTextField(
                hintText: "What are you looking for?",
                isObsecure: false,
                fontsize: 12,
              ),
              SizedBox(height: 30),
              Align(
                alignment: Alignment.centerRight,
                child: MyText(
                  text: "See all",
                  color: textColor,
                  fontsize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 9),
              Image.asset("assets/special.png"),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child:
                        Image.asset("assets/sofa.png", width: 53, height: 53),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child:
                        Image.asset("assets/lemari.png", width: 53, height: 53),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child:
                        Image.asset("assets/lampu.png", width: 53, height: 53),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child:
                        Image.asset("assets/kursi.png", width: 53, height: 53),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child:
                        Image.asset("assets/hanger.png", width: 53, height: 53),
                  ),
                ],
              ),
              SizedBox(height: 30),
              MyText(
                text: "Most Popular",
                color: textColor,
                fontsize: 15,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: 30),
              GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 0.6,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  buildCartItem(
                    imagePath: "assets/rack.png",
                    itemName: "Multi-Tier Storage Rack Rattan",
                    price: "Rp. 352.000",
                    wishlistController: wishlistController,
                    cartController: cartController,
                  ),
                  buildCartItem(
                    imagePath: "assets/lounge-chair.png",
                    itemName: "Outdoor Lounge     Chairs",
                    price: "Rp. 599.000",
                    wishlistController: wishlistController,
                    cartController: cartController,
                  ),
                  buildCartItem(
                    imagePath: "assets/pink-bed.png",
                    itemName: "Dreamy Pink Velvet Mattress",
                    price: "Rp. 3.750.550",
                    wishlistController: wishlistController,
                    cartController: cartController,
                  ),
                  buildCartItem(
                    imagePath: "assets/curved-chair.png",
                    itemName: "Tokio Curved Beige Sofa",
                    price: "Rp. 2.550.000",
                    wishlistController: wishlistController,
                    cartController: cartController,
                  ),
                  buildCartItem(
                    imagePath: "assets/woode-lamp.png",
                    itemName: "Ledger Wooden Table Lamp",
                    price: "Rp. 280.000",
                    wishlistController: wishlistController,
                    cartController: cartController,
                  ),
                  buildCartItem(
                    imagePath: "assets/bean-bag.png",
                    itemName: "Lounging Mighty Quilted Bean Bag",
                    price: "Rp. 800.000",
                    wishlistController: wishlistController,
                    cartController: cartController,
                  ),
                  buildCartItem(
                    imagePath: "assets/shoe.png",
                    itemName: "Minimalist Bench Shoe Organizer",
                    price: "Rp. 800.000",
                    wishlistController: wishlistController,
                    cartController: cartController,
                  ),
                  buildCartItem(
                    imagePath: "assets/meja-rias.png",
                    itemName: "Pink Slate Make-up Table",
                    price: "Rp. 800.000",
                    wishlistController: wishlistController,
                    cartController: cartController,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCartItem({
    required String imagePath,
    required String itemName,
    required String price,
    required WishlistController wishlistController,
    required CartController cartController,
  }) {
    return Container(
      width: 140,
      height: 230,
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 3,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: Image.asset(imagePath),
          ),
          SizedBox(height: 5),
          MyCartItem(
            text: itemName,
            color: textColor,
            price: price,
            showLoveIcon: false,
            onPressed: () {},
            fontWeight: FontWeight.normal,
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyTextButton(
                text: "Add to Cart",
                onPressed: () {
                  cartController.addCart(
                    CartModel(
                      brand: itemName,
                      price: price,
                      image: imagePath,
                      isCompleted: false,
                    ),
                  );
                },
                textColor: textColor,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
              Obx(() {
                bool isInWishlist = wishlistController.wishlists
                    .any((item) => item.brand == itemName);
                return IconButton(
                  icon: Icon(
                    isInWishlist ? Icons.favorite : Icons.favorite_border,
                    color: isInWishlist ? Colors.redAccent.shade200 : null,
                  ),
                  onPressed: () {
                    if (isInWishlist) {
                      wishlistController.deleteWishlist(wishlistController
                          .wishlists
                          .firstWhere((item) => item.brand == itemName)
                          .id!);
                    } else {
                      wishlistController.addWishlist(
                        WishlistModel(
                          brand: itemName,
                          price: price,
                          image: imagePath,
                          icon: "assets/heart.png",
                          isCompleted: false,
                        ),
                      );
                    }
                  },
                );
              }),
            ],
          ),
        ],
      ),
    );
  }
}
