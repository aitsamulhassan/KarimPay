import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:karimpay/Constants/constants.dart';
import 'package:karimpay/Widgets/logo_image.dart';
import 'package:karimpay/Widgets/user_button.dart';
import 'package:sizer/sizer.dart';
class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({super.key});

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const LogoImage(),
          SizedBox(height:1.5.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.h),
            child: Text('Unlock Ethical Finance with KarimPay.',style: GoogleFonts.lemonada(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: secondary,
            ),
            textAlign: TextAlign.center,),
          ),
          SizedBox(height: 3.h,),
          const UserButton(color: primary, text: 'Log In', text_color: secondary,height: 5.5,width: 25,),
          SizedBox( height: 1.h,),
          const UserButton(color: secondary, text: 'Sign Up', text_color: primary,height: 5.5,width: 25,),
          SizedBox(height: 2.h,),
          Center(
            child: Text('Forgot Password?',style: GoogleFonts.poppins(
              fontSize: 15.sp,
              fontWeight: FontWeight.w600,
              color: secondary,
            ),
              textAlign: TextAlign.center,),
          ),

        ],
      ),
    );
  }
}
