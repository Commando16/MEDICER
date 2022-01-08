// package or library import
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// screen import

// model import

// controller import
import 'package:medicerclient/Splash/SplashScreenController.dart';

// util import

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final splashScreenController = Get.put(SplashScreenController());

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double logoSize;

    if (screenWidth < screenHeight) {
      logoSize = screenWidth * 0.25;
    } else {
      logoSize = screenHeight * 0.25;
    }

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: logoSize),
        child: Image.asset(
          'images/Logos/Logo1.png',
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/Backgrounds/SplashBG1.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
