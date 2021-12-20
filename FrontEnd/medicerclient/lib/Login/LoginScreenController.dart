// package or library import
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// screen import

// model import

// controller import

// util import

class LoginScreenController extends GetxController {
  var eyeicon = Icons.remove_red_eye_outlined;
  var passwordObscureBool = true.obs;

  final TextEditingController emailInputTEC =
      TextEditingController(); // TCE - Text Editing Controler
  final TextEditingController passwordInputTEC =
      TextEditingController(); // TCE - Text Editing Controler

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
}
