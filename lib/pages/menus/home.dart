import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homey/widgets/my_color.dart';
import 'package:homey/widgets/my_text.dart';
import 'package:homey/widgets/my_text_field.dart';

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
           Image.asset("assets/logo3.png", width: 70, height: 70),
           Spacer(),
           Image.asset("assets/account.png", width: 22, height: 22,),
           SizedBox(width: 20,),
           Column(
             children: [
               MyText(text: "Hai👋", color: textColor, fontsize: 12),
               MyText(text: "Nafisah Isbarsani", color: textColor, fontsize: 12)
             ],
           )
         ],
       ),
     ),
      body:  Center(
        child: Column(
          children: [
            MyTextField(hintText: "What are you looking for?", isObsecure: false, fontsize: 12),
            SizedBox(height: 30,),
            MyText(text: "See all", color: textColor, fontsize: 12),
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
            MyText(text: "Most Popular", color: textColor, fontsize: 15)
          ],
        ),

      ),
    );
  }
}
