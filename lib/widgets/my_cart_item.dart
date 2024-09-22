import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homey/widgets/my_color.dart';

class MyCartItem extends StatelessWidget {
  final String text;
  final Color color;
  final String price;
  final bool showDiscount;
  final bool showColor;
  final String discount;

  const MyCartItem({super.key,
    required this.text,
    required this.color,
    required this.price,
    required this.showDiscount,
    required this.showColor,
    required this.discount});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: GoogleFonts.poppins(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: textColor
          ),
        ),
        Row(
          children: [
            if(showColor) ...[
              Icon(Icons.circle, color: color),
            ]
          ],
        ),
        if (showDiscount) ...[
          SizedBox(width: 10),
          Row(
            children: [
              Icon(Icons.local_offer, color:textColor, size: 16),
              SizedBox(width: 4,),
              Text(
                discount,
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  color: textColor,
                ),
              ),
            ],
          ),
        ],
        SizedBox(height: 5,),
        Text(price,
        style: GoogleFonts.poppins(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: textColor
        ),
        )
      ],
    );
  }
}
