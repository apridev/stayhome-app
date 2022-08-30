import 'package:flutter/material.dart';
import 'package:homestay_app/home/main-page.dart';
import 'package:homestay_app/onboarding-page.dart';
import 'package:homestay_app/page/login-page.dart';
import 'package:homestay_app/page/verification-page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/' :(context) => OnBoardingPage(),
        '/login-page' :(context) => LoginPage(),
        '/verification-page' :(context) => VerificationPage(),
        '/main-page' :(context) => MainPage(),
      },
    );
  }
}