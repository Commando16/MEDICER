// package or library import
import 'package:get/get.dart';

// screen import
import 'package:medicerclient/OnBoarding/OnBoardingScreen.dart';
// import 'package:medicerclient/Login/LoginScreen.dart';
// import 'package:medicerclient/Registration/RegistrationScreen.dart';
// import 'package:medicerclient/Registration/RegistrationNoteiceScreen.dart';
// import 'package:medicerclient/Home/HomeScreen.dart';
// import 'package:medicerclient/Contact/ContactScreen.dart';

// model import

// controller import

// util import

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    screenDecider();
  }

  void screenDecider() async {
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // var loginDecidingFactor = prefs.getBool("isLoggedIn");
    // var skipDecidingFactor = prefs.getBool("isSkipped");

    // print("++++++++++++++++++++++++++++++++++++++++");
    // print(loginDecidingFactor);
    // print("++++++++++++++++++++++++++++++++++++++++");

    // TODO: make the delay timer 2500 (2.5sec)
    Future.delayed(const Duration(milliseconds: 100), () {
      // if (loginDecidingFactor == null && skipDecidingFactor == null) {
      //   Get.off(() => StartUpScreen1());
      // } else if (loginDecidingFactor == true) {
      //   Get.off(() => MainScreen());
      // } else {
      //   Get.off(() => LoginScreen());
      // }

      Get.to(
          OnBoardingScreen()); //TODO: open this and comment or remove all the other screen routes

      // Get.to(LoginScreen());
      // Get.to(RegistrationScreen());
      // Get.to(RegistrationNoteiceScreen());
      // Get.to(HomeScreen());
      // Get.to(ContactScreen());
    });
  }
}
