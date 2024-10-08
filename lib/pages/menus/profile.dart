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
            SizedBox(width: 20),
            MyText(
              text: "My Profile",
              color: textColor,
              fontsize: 25,
              fontWeight: FontWeight.normal,
            ),
            Spacer(),
            Icon(Icons.more_vert, color: textColor),
          ],
        ),
      ),
        body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
              Expanded(child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/profile.png",),
                  SizedBox(height: 12,),
                  MyText(text: "Nafisah Isbarsani", color: textColor, fontsize: 16, fontWeight: FontWeight.bold),
                  MyText(text: "nafisahisbarsani12@gmail.com", color: textColor, fontsize: 16, fontWeight: FontWeight.normal),
                  SizedBox(height: 40),

                  _buildMenuItem(Icons.location_on, "My Address"),
                  SizedBox(height: 20),
                  _buildMenuItem(Icons.notifications, "Notification"),
                  SizedBox(height: 20),
                  _buildMenuItem(Icons.devices, "Devices"),
                  SizedBox(height: 20),
                  _buildMenuItem(Icons.lock_outline, "Password"),
                  SizedBox(height: 20),
                  _buildMenuItem(Icons.language, "Language"),
              ]
              )
              )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
Widget _buildMenuItem(IconData icon, String title) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 12.0),
    child: Row(
      children: [
        Icon(icon, color: textColor),
        SizedBox(width: 16),
        Expanded(
          child: MyText(
            text: title,
            color: textColor,
            fontsize: 16,
            fontWeight: FontWeight.normal,
          ),
        ),
        Icon(Icons.chevron_right, color: textColor),
      ],
    ),
  );
}
