import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:karimpay/Widgets/detail_text.dart';
import 'package:karimpay/Widgets/user_button.dart';
import 'package:sizer/sizer.dart';

import '../Constants/constants.dart';
class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({super.key});

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  final passwordController = TextEditingController();
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
                  Text('New Password',style: GoogleFonts.poppins(
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
                                const DetailText(title: 'New Password'),
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
                                      return 'Enter Password';
                                    }
                                    return null;
                                  },
                                ),
                                SizedBox(height: 3.h,),
                                const DetailText(title: 'Confirm New Password'),
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
                                      return 'Confirm New Password';
                                    }
                                    return null;
                                  },
                                ),
                                SizedBox(height: 10.h,),
                                const Center(child: UserButton(color: primary, text: 'Change Password', text_color: secondary, height: 6, width: double.infinity))
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
