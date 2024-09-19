import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
              MyText(text: "My Wishlist", color: textColor, fontsize: 25)
            ],
        ),
      ),
    );
  }
}
