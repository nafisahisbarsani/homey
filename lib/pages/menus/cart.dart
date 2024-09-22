import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homey/widgets/my_card.dart';
import 'package:homey/widgets/my_cart_item.dart';
import 'package:homey/widgets/my_color.dart';
import 'package:homey/widgets/my_text.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: MyCard(
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset("assets/kursi-kayu.png",
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 16,),
                Expanded(child: MyCartItem(text: 'Wooden chair', color: Colors.brown, price: 'Rp.500.000', showDiscount: false, showColor: true, discount: '',
                )),
                Column(
                  children: [
                    Icon(Icons.check_box, color: textColor,),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.remove_circle_outline),
                          onPressed: () {},
                        ),
                        Text("1"),
                        IconButton(
                          icon: Icon(Icons.add_circle_outline),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),

        ),
      ),
    );
  }
}