import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:homey/widgets/my_cart_item.dart';
import 'package:homey/widgets/my_color.dart';
import 'package:homey/widgets/my_text.dart';
import 'package:homey/widgets/my_text_field.dart';

import '../../models/wishlist_model.dart';
import '../../wishlist_controller.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final WishlistController wishlistController = Get.put(WishlistController());

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset("assets/logo3.png", width: 70, height: 70),
            Spacer(),
            Image.asset("assets/account.png", width: 22, height: 22,),
            SizedBox(width: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText(text: "Hai👋",
                  color: textColor,
                  fontsize: 12,
                  fontWeight: FontWeight.normal,),
                MyText(text: "Nafisah Isbarsani",
                  color: textColor,
                  fontsize: 12,
                  fontWeight: FontWeight.normal,)
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
              MyTextField(hintText: "What are you looking for?",
                  isObsecure: false,
                  fontsize: 12),
              SizedBox(height: 30,),
              Align(
                alignment: Alignment.centerRight,
                child: MyText(
                  text: "See all",
                  color: textColor,
                  fontsize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 9,),
              Image.asset("assets/special.png",),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/sofa.png", width: 53, height: 53,),
                  SizedBox(width: 20,),
                  Image.asset("assets/lemari.png", width: 53, height: 53,),
                  SizedBox(width: 20,),
                  Image.asset("assets/lampu.png", width: 53, height: 53,),
                  SizedBox(width: 20,),
                  Image.asset("assets/kursi.png", width: 53, height: 53,),
                  SizedBox(width: 20,),
                  Image.asset("assets/hanger.png", width: 53, height: 53,),
                ],
              ),
              SizedBox(height: 20,),
              MyText(text: "Most Popular",
                color: textColor,
                fontsize: 15,
                fontWeight: FontWeight.bold,),
              SizedBox(height: 30,),
              GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  buildCartItem(
                    imagePath: "assets/rack.png",
                    itemName: "Multi-Tier Storage Rack Rattan Drawers",
                    price: "Rp. 352.000",
                    wishlistController: wishlistController,
                  ),
                  buildCartItem(
                    imagePath: "assets/lounge-chair.png",
                    itemName: "Outdoor Lounge           Chairs",
                    price: "Rp. 599.000",
                    wishlistController: wishlistController,
                  ),
                  buildCartItem(
                    imagePath: "assets/pink-bed.png",
                    itemName: "Dreamy Pink Velvet     Mattress",
                    price: "Rp. 3.750.550",
                    wishlistController: wishlistController,
                  ),
                  buildCartItem(
                    imagePath: "assets/curved-chair.png",
                    itemName: "Tokio Curved Sofa",
                    price: "Rp. 2.550.000",
                    wishlistController: wishlistController,
                  ),
                  buildCartItem(
                    imagePath: "assets/woode-lamp.png",
                    itemName: "Ledger Wooden Table Lamp",
                    price: "Rp. 280.000",
                    wishlistController: wishlistController,
                  ),
                  buildCartItem(
                    imagePath: "assets/bean-bag.png",
                    itemName: "Lounging Mighty Quilted Bean Bag",
                    price: "Rp. 800.000",
                    wishlistController: wishlistController,
                  ),
                  buildCartItem(
                    imagePath: "assets/shoe.png",
                    itemName: "Minimalist Bench Shoe Organizer",
                    price: "Rp. 800.000",
                    wishlistController: wishlistController,
                  ),
                  buildCartItem(
                    imagePath: "assets/meja-rias.png",
                    itemName: "Pink Slate Top Dressing & Make-up Table",
                    price: "Rp. 800.000",
                    wishlistController: wishlistController,
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
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(imagePath),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: MyCartItem(
                      text: itemName,
                      color: textColor,
                      price: price,
                      showLoveIcon: false,
                      // Matikan ikon cinta di sini
                      onPressed: () {
                        // Tidak ada aksi yang diperlukan di sini
                      },
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Row(
                    children: [

                      IconButton(
                        icon: Icon(Icons.favorite_border),
                        onPressed: () {
                          wishlistController.addWishlist(WishlistModel(
                            brand: itemName,
                            price: price,
                            image: imagePath,
                            icon: "assets/heart.png",
                            isCompleted: false,
                          ));
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}