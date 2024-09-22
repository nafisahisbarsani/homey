import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homey/widgets/my_cart_item.dart';
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
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               MyText(text: "Hai👋", color: textColor, fontsize: 12, fontWeight: FontWeight.normal,),
               MyText(text: "Nafisah Isbarsani", color: textColor, fontsize: 12, fontWeight: FontWeight.normal,)
             ],
           )
         ],
       ),
     ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyTextField(hintText: "What are you looking for?", isObsecure: false, fontsize: 12),
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
              SizedBox(height: 20, ),
              MyText(text: "Most Popular", color: textColor, fontsize: 15, fontWeight: FontWeight.bold,),
              SizedBox(height: 30,),
              GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("assets/lemaritinggi.png"),
                      SizedBox(height: 10),
                     MyCartItem(text: "Multi-Tier Storage Rack Rattan Drawers", color: textColor, price: "Rp. 352.000", showDiscount: true, showColor: false, discount: "up to 30%")
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("assets/lougechair.png"),
                      SizedBox(height: 10),
                      MyCartItem(text: "Outdoor Lounge Chairs", color: textColor, price: "Rp. 599.000", showDiscount: true, showColor: false, discount: "up to 30%")
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("assets/matras.png"),
                      SizedBox(height: 10),
                      MyCartItem(text: " Dreamy Pink Velvet    Mattress", color: textColor, price: "Rp. 3.750.550", showDiscount: true, showColor: false, discount: "up to 10%")
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("assets/sofa-curved.png"),
                      SizedBox(height: 10),
                      MyCartItem(text: "Tokio Curved Sofa", color: textColor, price: "Rp. 2.550.000", showDiscount: true, showColor: false, discount: "up to 19%")
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("assets/woodlamp.png"),
                      SizedBox(height: 10),
                      MyCartItem(text: "Ledger Wooden Table        Lamp", color: textColor, price: "Rp. 280.000", showDiscount: false, showColor: false, discount: "")
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("assets/beanbag.png"),
                      SizedBox(height: 10),
                      MyCartItem(text: "Lounging Mighty Quilted Bean Bag", color: textColor, price: "Rp. 800.000", showDiscount: true, showColor: false, discount: "up to 20%")
                    ],
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
