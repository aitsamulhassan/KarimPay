import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../Constants/constants.dart';
import '../Widgets/detail_text.dart';
import '../Widgets/user_button.dart';
import '../Widgets/user_fields.dart';
class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool flag = true;
  bool loading = false;
  final _formKey = GlobalKey<FormState>();
  final textController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final dateController = TextEditingController();
  final c_passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10.h,),
            Container(
              color: primary,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Create Account',style: GoogleFonts.poppins(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w500,
                    color: secondary,
                  ),textAlign: TextAlign.center,),
                  SizedBox(height: 5.h,),
                  Container(
                    width: double.infinity,
                    height: 80.h,
                    decoration: BoxDecoration(
                      color: Colors.green[400],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(6.h),
                        topRight: Radius.circular(6.h),
                      ),
                    ),
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 2.h),
                      child: Column(
                        children: [
                          SizedBox(height: 3.h,),
                          Form(
                            key: _formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const DetailText(title: 'Full Name'),
                                SizedBox(height: 1.h,),
                                UserFields(error: 'Enter Name', controller: textController,keyboardType: TextInputType.text,),
                                SizedBox(height: 1.h,),
                                const DetailText(title: 'Email'),
                                SizedBox(height: 1.h,),
                                UserFields(error: 'Enter Email', controller: emailController,keyboardType: TextInputType.emailAddress,),
                                SizedBox(height: 1.h,),
                                const DetailText(title: 'Date Of Birth'),
                                SizedBox(height: 1.h,),
                                UserFields(error: 'Enter Date Of Birth', controller: dateController,keyboardType: TextInputType.datetime,),
                                SizedBox(height: 1.h,),
                                const DetailText(title: 'Password'),
                                SizedBox(height: 1.h,),
                                TextFormField(
                                  controller: passwordController,
                                  textAlign: TextAlign.start,
                                  textInputAction: TextInputAction.none,
                                  obscureText: false,
                                  autofocus: false,
                                  style: GoogleFonts.poppins(fontSize: 1.5.h),
                                  keyboardType: TextInputType.text,
                                  textAlignVertical: TextAlignVertical.center,
                                  decoration: InputDecoration(
                                    suffixIcon: const Icon(Icons.remove_red_eye_outlined,color: primary,),
                                    fillColor: secondary,
                                    filled: true,
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius: BorderRadius.circular(5.h)),
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Enter Password';
                                    }
                                    return null;
                                  },
                                ),
                                SizedBox(height: 1.h,),
                                const DetailText(title: 'Confirm Password'),
                                SizedBox(height: 1.h,),
                                TextFormField(
                                  controller: c_passwordController,
                                  textAlign: TextAlign.start,
                                  textInputAction: TextInputAction.none,
                                  obscureText: false,
                                  autofocus: false,
                                  style: GoogleFonts.poppins(fontSize: 1.5.h),
                                  keyboardType: TextInputType.text,
                                  textAlignVertical: TextAlignVertical.center,
                                  decoration: InputDecoration(
                                    suffixIcon: const Icon(Icons.remove_red_eye_outlined,color: primary,),
                                    fillColor: secondary,
                                    filled: true,
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius: BorderRadius.circular(5.h)),
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Confirm Password';
                                    }
                                    return null;
                                  },
                                ),
                                SizedBox(height: 1.h,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text('By continuing, you agree to',style: GoogleFonts.poppins(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w300,
                                      color: secondary,
                                    ),),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text('Terms of Use',style: GoogleFonts.poppins(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.bold,
                                          color: secondary,
                                        ),),
                                        Text(' and ',style: GoogleFonts.poppins(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w300,
                                          color: secondary,
                                        ),),
                                        Text('Privacy Policy',style: GoogleFonts.poppins(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.bold,
                                          color: secondary,
                                        ),),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(height: 1.h,),
                                const Center(child: UserButton(color: primary, text: 'Sign Up', text_color: secondary, height: 5.5, width: 25)),
                                SizedBox(height: 1.h,),
                                Center(
                                  child: Text("Or sign up with",style: GoogleFonts.poppins(
                                    fontSize: 14.sp,
                                    color: secondary,
                                    fontWeight: FontWeight.w500,
                                  ),),
                                ),
                                SizedBox(height: 1.h,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Image(image: AssetImage('assets/images/facebook.png'),filterQuality: FilterQuality.high,),
                                    SizedBox(width: 5.w,),
                                    Image(image: const AssetImage('assets/images/google.png'),height: 4.h,width: 4.h,filterQuality: FilterQuality.high,)
                                  ],
                                ),
                                SizedBox(height: 1.h,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Already have an account?",style: GoogleFonts.poppins(
                                      fontSize: 16.sp,
                                      color: secondary,
                                      fontWeight: FontWeight.w500,
                                    ),),
                                    Text(' Log In',style: GoogleFonts.poppins(
                                      fontSize: 16.sp,
                                      color: primary,
                                      fontWeight: FontWeight.w500,
                                    ),),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
