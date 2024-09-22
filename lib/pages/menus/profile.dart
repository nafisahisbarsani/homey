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
              MyText(text: "My Profile", color: textColor, fontsize: 25, fontWeight: FontWeight.normal,),
              Spacer(),
              Icon(Icons.more_vert, color: textColor,),
        ]
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Icon(Icons.person_3_rounded, size: 50,),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyText(text: "Nafisah Isbarsani", color: textColor, fontsize: 16, fontWeight: FontWeight.bold),
                    MyText(text: "nafisahisbarsani12@gmail.com", color: textColor, fontsize: 16, fontWeight: FontWeight.normal),
                    Row(
                      children: [
                        Icon(Icons.location_on, color: textColor,),
                        MyText(text: "My Address", color: textColor, fontsize: 15, fontWeight: FontWeight.normal),
                        Icon(Icons.navigate_next, color: textColor,),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.notifications, color: textColor,),
                        MyText(text: "Notification", color: textColor, fontsize: 15, fontWeight: FontWeight.normal),
                        Icon(Icons.navigate_next, color: textColor,),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.devices, color: textColor,),
                        MyText(text: "Devices", color: textColor, fontsize: 15, fontWeight: FontWeight.normal),
                        Icon(Icons.navigate_next, color: textColor,),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.password_outlined, color: textColor,),
                        MyText(text: "Password", color: textColor, fontsize: 15, fontWeight: FontWeight.normal),
                        Icon(Icons.navigate_next, color: textColor,),
                        SizedBox(width: 5,),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.language, color: textColor,),
                        MyText(text: "Languange", color: textColor, fontsize: 15, fontWeight: FontWeight.normal),
                        Icon(Icons.navigate_next, color: textColor,),
                        SizedBox(width: 5,),
                      ],
                    )
                  ],
                )
              ],
            ),

          ],
        ),
      ),
    );
  }
}