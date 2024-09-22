import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homey/widgets/my_color.dart';
import 'package:homey/widgets/my_text.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

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
          "assets/account.png",
          width: 30,
          height: 30,
        ),
              SizedBox(width: 20,),
              MyText(text: "My Profile", color: textColor, fontsize: 25, fontWeight: FontWeight.normal,)
        ]
        ),
      ),
    );
  }
}
