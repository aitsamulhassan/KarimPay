import 'package:flutter/material.dart';
import 'package:karimpay/Screens/boarding_screen1.dart';
import 'package:karimpay/Screens/forgot_password_screen.dart';
import 'package:karimpay/Screens/logIn_screen.dart';
import 'package:karimpay/Screens/new_password_screen.dart';
import 'package:karimpay/Screens/password_change_screen.dart';
import 'package:karimpay/Screens/security_pin_screen.dart';
import 'package:karimpay/Screens/signUp_screen.dart';
import 'package:karimpay/Screens/splash_screen1.dart';
import 'package:karimpay/Screens/splash_screen2.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, screeType){
      return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // TRY THIS: Try running your application with "flutter run". You'll see
          // the application has a purple toolbar. Then, without quitting the app,
          // try changing the seedColor in the colorScheme below to Colors.green
          // and then invoke "hot reload" (save your changes or press the "hot
          // reload" button in a Flutter-supported IDE, or press "r" if you used
          // the command line to start the app).
          //
          // Notice that the counter didn't reset back to zero; the application
          // state is not lost during the reload. To reset the state, use hot
          // restart instead.
          //
          // This works for code too, not just values: Most code changes can be
          // tested with just a hot reload.
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const PasswordChangeScreen(),
        debugShowCheckedModeBanner: false,
      );
    });
  }
}
