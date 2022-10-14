import 'package:flutter/material.dart';
import 'package:test_priksain/pages/splash_page.dart';
import 'package:get/get.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: SplashPage(),
    );
  }
}
