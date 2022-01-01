// package or library import
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicerclient/Home/HomeScreen.dart';

// screen import

// models import
import 'package:medicerclient/Login/LoginScreenModel.dart';

// controller import

// util import

// service import
import 'package:medicerclient/Service/api_services.dart';

class LoginScreenController extends GetxController {
  var eyeicon = Icons.remove_red_eye_outlined;
  var passwordObscureBool = true.obs;

  final TextEditingController emailInputTEC =
      TextEditingController(); // TCE - Text Editing Controler
  final TextEditingController passwordInputTEC =
      TextEditingController(); // TCE - Text Editing Controler

  Rxn<UserLoginWithEmailPasswordAPIModel> userLoginWithEmailPasswordData =
      Rxn<UserLoginWithEmailPasswordAPIModel>();

  @override
  void onInit() {
    super.onInit();
  }

  void toggelObscurePassword() {
    if (passwordObscureBool.value == false) {
      passwordObscureBool.value = true;
      eyeicon = Icons.remove_red_eye;
    } else {
      passwordObscureBool.value = false;
      eyeicon = Icons.remove_red_eye_outlined;
    }
  }

  loginWithEmailPassword() async {
    var body = {
      "UserLoginEmailInput": emailInputTEC.text,
      "UserLoginPasswordInput": passwordInputTEC.text,
    };

    var response = await ApiServices.loginUserWithEmailPasswordAPICall(body);

    if (response != null) {
      userLoginWithEmailPasswordData.value = response;
      print("+++++++++++++++++++++++++++++++++++++++++++");
      print(response.status);
      print(response.msg);
      print("+++++++++++++++++++++++++++++++++++++++++++");
      Get.to(HomeScreen());
    }
  }
}
