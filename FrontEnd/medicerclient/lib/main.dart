// package or library import
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// screen import
import 'package:medicerclient/Splash/SplashScreen.dart';

// model import

// controller import

// util import

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'MediCer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}
