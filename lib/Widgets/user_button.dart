import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
class UserButton extends StatelessWidget {
  final Color color;
  final String text;
  final Color text_color;
  final double height;
  final double width;
  const UserButton({super.key,required this.color,required this.text,required this.text_color,required this.height,required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height.h,
      width: width.h,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(3.h))
      ),
      child: Center(
        child: Text(
          text,
          style: GoogleFonts.poppins(
            fontSize: 20.sp,
            fontWeight: FontWeight.w600,
            color: text_color,
          ),
        ),
      ),
    );
  }
}
