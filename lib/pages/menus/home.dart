import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homey/widgets/my_color.dart';
import 'package:homey/widgets/my_text.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       automaticallyImplyLeading: false,
       title: Row(
         mainAxisAlignment: MainAxisAlignment.start,
         children: [
           SizedBox(height: 20),
           Image.asset("assets/logo1.png", width: 65, height: 65),
           SizedBox(width: 20),
           Image.asset("assets/account.png", width: 50, height: 50,),
           SizedBox(width: 20,),
           MyText(text: "Hai👋", color: textColor, fontsize: 17)
         ],
       ),
     ),
    );
  }
}
