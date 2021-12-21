// package or library import
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// screen import

// model import

// controller import

// util import
import 'package:medicerclient/Util/ColorUtil.dart';

var screenHeight = 0.0;
var screenWidth = 0.0;

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: ColorUtil.primaryTeal,
          child: Column(
            children: [
              // edit profile button
              Padding(
                padding:
                    const EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {
                        debugPrint("Profile edit button pressed");
                      },
                      icon: Icon(
                        Icons.edit,
                        color: ColorUtil.primaryWhite,
                        size: screenHeight * 0.05,
                      ),
                    ),
                  ],
                ),
              ),
              // edit profile button ends
              //
              SizedBox(height: 10.0),
              //
              Expanded(
                child: Stack(
                  children: [
                    // SOMENAME
                    Column(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            color: ColorUtil.primaryTeal,
                          ),
                        ),
                        //
                        Expanded(
                          flex: 8,
                          child: Container(
                            decoration: BoxDecoration(
                              color: ColorUtil.primaryWhite,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20.0),
                                topLeft: Radius.circular(20.0),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    // SOMENAME ends
                    //
                    // Avatar
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        decoration: BoxDecoration(
                          color: ColorUtil.primaryTeal,
                          shape: BoxShape.circle,
                        ),
                        padding: EdgeInsets.all(7.0),
                        child: CircleAvatar(
                          foregroundImage: AssetImage(
                            "images/DefaultImages/defaultUserImage1.png",
                          ),
                          backgroundColor: ColorUtil.primaryWhite,
                          radius: screenWidth * 0.2,
                        ),
                      ),
                    ),

                    // Avatar ends
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
