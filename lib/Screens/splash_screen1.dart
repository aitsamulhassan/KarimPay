import 'package:flutter/material.dart';
import 'package:karimpay/Widgets/logo_image.dart';
import 'package:karimpay/Constants/constants.dart';
class SplashScreen1 extends StatefulWidget {
  const SplashScreen1({super.key});

  @override
  State<SplashScreen1> createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: user_white,
      body: Center(
        child: LogoImage(),
      ),
    );
  }
}
