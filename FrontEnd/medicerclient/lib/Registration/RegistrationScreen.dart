// package or library import
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// screen import
import 'package:medicerclient/Login/LoginScreen.dart';

// model import

// controller import
import 'package:medicerclient/Registration/RegisterScreenController.dart';

// util import
import 'package:medicerclient/Util/ColorUtil.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: RegistrationForm(),
      ),
    );
  }
}

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({Key? key}) : super(key: key);

  @override
  RegistrationFormState createState() {
    return RegistrationFormState();
  }
}

class RegistrationFormState extends State<RegistrationForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final registrationScreenController =
        Get.put(RegistrationScreenController());
    return Form(
      key: _formKey,
      child: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 4,
                child: SizedBox(),
              ),
              //
              //Welcome text
              Text(
                "Register",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: ColorUtil.primaryTeal,
                  fontWeight: FontWeight.w900,
                  fontSize: 60.0,
                ),
              ),
              //Welcome text ends
              //
              Expanded(
                flex: 2,
                child: SizedBox(),
              ),
              //
              // email input field
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                  color: ColorUtil.primaryWhite,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: ColorUtil.primaryTeal,
                    width: 3.0,
                  ),
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Colors.black38,
                  //     blurRadius: 5,
                  //     spreadRadius: 0,
                  //     offset: const Offset(0, 2),
                  //   ),
                  // ],
                ),
                child: TextFormField(
                  controller: registrationScreenController.emailInputTEC,
                  style: TextStyle(
                    color: ColorUtil.primaryTeal,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 2.0,
                  ),
                  decoration: InputDecoration(
                    hintText: "Email",
                    hintStyle: TextStyle(
                      color: ColorUtil.primaryTeal,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 2.0,
                    ),
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ),
              // email input field ends
              //
              Expanded(
                flex: 1,
                child: SizedBox(),
              ),
              //
              // password input field
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                  color: ColorUtil.primaryWhite,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: ColorUtil.primaryTeal,
                    width: 3.0,
                  ),
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Colors.black38,
                  //     blurRadius: 5,
                  //     spreadRadius: 0,
                  //     offset: const Offset(0, 2),
                  //   ),
                  // ],
                ),
                child: Obx(
                  () => TextFormField(
                    controller: registrationScreenController.passwordInputTEC,
                    obscureText:
                        registrationScreenController.passwordObscureBool.value,
                    style: TextStyle(
                      color: ColorUtil.primaryTeal,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 2.0,
                    ),
                    decoration: InputDecoration(
                      hintText: "password",
                      hintStyle: TextStyle(
                        color: ColorUtil.primaryTeal,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 2.0,
                      ),
                      suffixIcon: IconButton(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        color: ColorUtil.primaryTeal,
                        onPressed: () {
                          registrationScreenController.toggelObscurePassword();
                        },
                        icon: Icon(registrationScreenController.eyeicon),
                      ),
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                ),
              ),
              // password input field ends
              //
              Expanded(
                flex: 1,
                child: SizedBox(),
              ),
              //
              // submit button
              GestureDetector(
                onTap: () {
                  // Validate returns true if the form is valid, or false otherwise.
                  debugPrint("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
                  debugPrint(registrationScreenController.emailInputTEC.text);
                  debugPrint(
                      registrationScreenController.passwordInputTEC.text);
                  debugPrint("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");

                  if (_formKey.currentState!.validate()) {
                    registrationScreenController
                        .registerUserWithEmailPassword();
                  }
                },
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  margin: EdgeInsets.symmetric(horizontal: 100.0),
                  decoration: BoxDecoration(
                    color: ColorUtil.primaryTeal,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Text(
                    "Register",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              // submit button ends
              //
              Expanded(
                flex: 2,
                child: SizedBox(),
              ),
              //
              //Register text
              GestureDetector(
                onTap: () {
                  debugPrint("Register button tapped");
                  Get.to(LoginScreen());
                },
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: "already have an account ?\n",
                    style: TextStyle(
                      color: ColorUtil.primaryGrey,
                      fontSize: 16.0,
                    ),
                    children: const [
                      TextSpan(
                        text: 'tap here to',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: ' login',
                        style: TextStyle(
                          color: ColorUtil.primaryTeal,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //Register text ends
              //
              Expanded(
                flex: 3,
                child: SizedBox(),
              ),
              //
            ],
          ),
        ),
      ),
    );
  }
}
