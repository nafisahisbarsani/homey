import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/my_cart_item.dart';
import '../../widgets/my_color.dart';
import '../../widgets/my_text.dart';

class Wishlist extends StatelessWidget {
  const Wishlist({super.key});

  @override
  Widget build(BuildContext context) {
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

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("assets/rak-sepatu.png"),
                      SizedBox(height: 10),
                      MyCartItem(text: "Minimalist Bench Shoe Organizer", color: textColor, price: "Rp. 990.000", showDiscount: false, showColor: false, discount: ""),
                      SizedBox(height: 6,),
                      Image.asset("assets/cart.png", width: 18, height: 18,)
                    ]
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/meja-rias.png"),
                        SizedBox(height: 10),
                        MyCartItem(text: "Pink Slate Top Dressing & Make-up Table", color: textColor, price: "Rp. 1.000.000", showDiscount: false, showColor: false, discount: ""),
                        SizedBox(height: 6,),
                        Image.asset("assets/cart.png", width: 18, height: 18,)
                      ]
                  ),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
