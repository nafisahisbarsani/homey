import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homey/widgets/my_color.dart';

class MyButton extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback onPressed;
  final double fontSize;

  const MyButton({super.key,
    required this.text,
    required this.color,
    required this.onPressed,
    required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: textColor,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8)
          )
        ),
        child: Text(
          text,
          style: GoogleFonts.poppins(
            color: firstColor,
            fontSize: fontSize
          ),
        )
    );
  }
}
