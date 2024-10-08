import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCartItem extends StatelessWidget {
  final String text;
  final String price;
  final Color color;
  final FontWeight fontWeight;
  final bool showLoveIcon; // Add this to conditionally show the icon
  final VoidCallback? onPressed; // Add this to allow a custom action

  const MyCartItem({
    Key? key,
    required this.text,
    required this.price,
    required this.color,
    this.showLoveIcon = false,
    this.onPressed,
    required this.fontWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: GoogleFonts.poppins(color: color, fontWeight: fontWeight),
        ),
        Text(
          price,
          style: GoogleFonts.poppins(color: color, fontWeight: fontWeight),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (showLoveIcon) ...[
              SizedBox(width: 5),
              IconButton(
                icon: Icon(Icons.favorite_border, color: color, size: 16),
                onPressed: onPressed, // Use the onPressed callback here
              ),
            ],
          ],
        ),
      ],
    );
  }
}
