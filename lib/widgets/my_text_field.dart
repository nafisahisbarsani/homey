import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homey/widgets/my_color.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  final bool isObsecure;
  final double fontsize;

  const MyTextField({super.key,
    required this.hintText,
    required this.isObsecure,
    required this.fontsize});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  const EdgeInsets.all(8),
      padding:  const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: textFieldColor,
        borderRadius: BorderRadius.circular((8)),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: GoogleFonts.poppins(
            color: textColor,
            fontSize: fontsize,
          ),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 9,
            vertical: 5,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: textColor,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(7),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: textFieldColor,
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(7),
          ),
        ),
        style: GoogleFonts.poppins(
          color: textColor,
        ),
        obscureText: isObsecure,
      ),
    );
  }
}
