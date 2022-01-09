// package or library import
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medicerclient/Contact/ContactScreen.dart';

// screen import

// model import

// controller import

// util import
import 'package:medicerclient/Util/ColorUtil.dart';

class RegistrationNoteiceScreen extends StatelessWidget {
  const RegistrationNoteiceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 7,
                child: SizedBox(),
              ),
              //
              //Notice heading
              Text(
                "Note",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: ColorUtil.primaryTeal,
                  fontWeight: FontWeight.w900,
                  fontSize: 60.0,
                ),
              ),
              //Notice heading ends
              //
              Expanded(
                flex: 3,
                child: SizedBox(),
              ),
              //
              // Notice text
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text:
                          "Dear user this application is intended to used by\n",
                      style: TextStyle(
                        color: ColorUtil.primaryGrey,
                        fontWeight: FontWeight.w500,
                        fontSize: 20.0,
                        height: 1.5,
                      ),
                    ),
                    //
                    TextSpan(
                      text: "Dr.Anil Mehta's\n",
                      style: TextStyle(
                        color: ColorUtil.primaryTeal,
                        fontWeight: FontWeight.w800,
                        fontSize: 20.0,
                        height: 1.5,
                      ),
                    ),
                    //
                    TextSpan(
                      text:
                          "patients only for taking their daily report for analysis and tacking their health.\n\n\n",
                      style: TextStyle(
                        color: ColorUtil.primaryGrey,
                        fontWeight: FontWeight.w500,
                        fontSize: 20.0,
                        height: 1.5,
                      ),
                    ),
                    //
                    TextSpan(
                      text: "You can ",
                      style: TextStyle(
                        color: ColorUtil.primaryGrey,
                        fontWeight: FontWeight.w500,
                        fontSize: 20.0,
                        height: 1.5,
                      ),
                    ),
                    //
                    TextSpan(
                      text: "Register ",
                      style: TextStyle(
                        color: ColorUtil.primaryTeal,
                        fontWeight: FontWeight.w800,
                        fontSize: 20.0,
                        height: 1.5,
                      ),
                    ),
                    //
                    TextSpan(
                      text: "by contacting him.",
                      style: TextStyle(
                        color: ColorUtil.primaryGrey,
                        fontWeight: FontWeight.w500,
                        fontSize: 20.0,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
              // Notice text ends
              //
              Expanded(
                flex: 3,
                child: SizedBox(),
              ),
              //
              // Get Contact Button
              GestureDetector(
                onTap: () {
                  debugPrint(
                      "Contact button or register notice screen pressed.");
                  Get.to(ContactScreen());
                },
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  decoration: BoxDecoration(
                    color: ColorUtil.primaryTeal,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Text(
                    "Get Contact",
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
              // Get Contact Button ends
              //
              Expanded(
                flex: 7,
                child: SizedBox(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
