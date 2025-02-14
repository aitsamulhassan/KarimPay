import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:karimpay/Constants/constants.dart';
import 'package:karimpay/Widgets/detail_text.dart';
import 'package:karimpay/Widgets/user_button.dart';
import 'package:karimpay/Widgets/user_fields.dart';
import 'package:sizer/sizer.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool flag = true;
  bool loading = false;
  final _formKey = GlobalKey<FormState>();
  final textController = TextEditingController();
  final passwordController = TextEditingController();
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
                  Text('Welcome',style: GoogleFonts.poppins(
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
                          SizedBox(height: 10.h,),
                          Form(
                            key: _formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const DetailText(title: 'Username or Email'),
                                SizedBox(height: 1.h,),
                                UserFields(error: 'Enter Email', controller: textController,keyboardType: TextInputType.text,),
                                SizedBox(height: 1.5.h,),
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
                                SizedBox(height: 7.h,),
                                const Center(child: UserButton(color: primary, text: 'Log In', text_color: secondary, height: 5.5, width: 25)),
                                SizedBox(height: 1.5.h,),
                                Center(
                                  child: Text('Forgot Password?',style: GoogleFonts.poppins(
                                    fontSize: 15.sp,
                                    color: secondary,
                                    fontWeight: FontWeight.w500,
                                  ),),
                                ),
                                SizedBox(height: 1.5.h,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Use',style: GoogleFonts.poppins(
                                      fontSize: 16.sp,
                                      color: secondary,
                                      fontWeight: FontWeight.w500,
                                    ),),
                                    Text(' Fingerprint ',style: GoogleFonts.poppins(
                                      fontSize: 16.sp,
                                      color: primary,
                                      fontWeight: FontWeight.w500,
                                    ),),
                                    Text('To Access',style: GoogleFonts.poppins(
                                      fontSize: 16.sp,
                                      color: secondary,
                                      fontWeight: FontWeight.w500,
                                    ),),
                                  ],
                                ),
                                SizedBox(height: 2.5.h,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Don't have an account?",style: GoogleFonts.poppins(
                                      fontSize: 16.sp,
                                      color: secondary,
                                      fontWeight: FontWeight.w500,
                                    ),),
                                    Text(' Sign Up',style: GoogleFonts.poppins(
                                      fontSize: 16.sp,
                                      color: primary,
                                      fontWeight: FontWeight.w500,
                                    ),),
                                  ],
                                ),
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
