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
                          flex: 5,
                          child: Container(
                            color: ColorUtil.primaryTeal,
                          ),
                        ),
                        //
                        Expanded(
                          flex: 15,
                          child: Container(
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(horizontal: 20.0),
                            decoration: BoxDecoration(
                              color: ColorUtil.primaryWhite,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20.0),
                                topLeft: Radius.circular(20.0),
                              ),
                            ),
                            child: UserInformation(),
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

class UserInformation extends StatelessWidget {
  const UserInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 70.0),
        //
        // Name text
        Text(
          "Pankaj Singh",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: ColorUtil.primaryTeal,
            fontWeight: FontWeight.w900,
            fontSize: 28.0,
            letterSpacing: 2.0,
            wordSpacing: 2.0,
          ),
        ),
        // Name text ends
        //
        SizedBox(height: 30.0),
        //
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "male",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: ColorUtil.primaryGrey,
                fontWeight: FontWeight.w900,
                fontSize: 24.0,
                letterSpacing: 2.0,
                wordSpacing: 2.0,
              ),
            ),
            //
            Text(
              "82.5kg",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: ColorUtil.primaryGrey,
                fontWeight: FontWeight.w900,
                fontSize: 24.0,
                letterSpacing: 2.0,
                wordSpacing: 2.0,
              ),
            ),
            //
            Text(
              "45yr",
              textAlign: TextAlign.right,
              style: TextStyle(
                color: ColorUtil.primaryGrey,
                fontWeight: FontWeight.w900,
                fontSize: 24.0,
                letterSpacing: 2.0,
                wordSpacing: 2.0,
              ),
            ),
          ],
        ),
        //
        //
        SizedBox(height: 30.0),
        //
        // dibetic status text
        Container(
          width: double.infinity,
          child: Text(
            "diabetic status : negtive",
            textAlign: TextAlign.left,
            style: TextStyle(
              color: ColorUtil.primaryGrey,
              fontWeight: FontWeight.w900,
              fontSize: 20.0,
              letterSpacing: 1.5,
              wordSpacing: 2.0,
            ),
          ),
        ),
        // dibetic status text ends
        //
        SizedBox(height: 20.0),
        //
        // current health status text
        Container(
          width: double.infinity,
          child: Text(
            "Current health status : healthy",
            textAlign: TextAlign.left,
            style: TextStyle(
              color: ColorUtil.primaryGrey,
              fontWeight: FontWeight.w900,
              fontSize: 20.0,
              letterSpacing: 1.5,
              wordSpacing: 2.0,
            ),
          ),
        ),
        // current health status text ends
        //
        SizedBox(height: 50.0),
        //
      ],
    );
  }
}
