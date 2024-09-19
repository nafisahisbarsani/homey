import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homey/widgets/my_color.dart';

class MyCartItem extends StatelessWidget {
  final String text;
  final Color color;
  final String price;
  const MyCartItem({super.key,
    required this.text,
    required this.color, required this.price});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: textColor
          ),
        ),
        Row(
          children: [
            Icon(Icons.circle, color: color,)
          ],
        ),
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
