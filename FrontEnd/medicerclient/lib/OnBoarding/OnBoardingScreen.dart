// package or library import
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:carousel_slider/carousel_slider.dart';

// screen import

// model import

// controller import
import 'package:medicerclient/OnBoarding/OnBoardingScreenController.dart';

// util import
import 'package:medicerclient/Util/ColorUtil.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final onBoardingScreenController = Get.put(OnBoardingScreenController());

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double onBoardingScreenSize;

    if (screenWidth < screenHeight) {
      onBoardingScreenSize = screenWidth * 0.25;
    } else {
      onBoardingScreenSize = screenHeight * 0.25;
    }

    List<int> slideIndex = [1, 2, 3, 4];

    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: SizedBox(),
            ),
            //
            Container(
              padding: EdgeInsets.symmetric(horizontal: onBoardingScreenSize),
              child:
                  Image.asset('images/OnBoardingImages/OnBoardingImage1.png'),
            ),
            //
            Expanded(
              flex: 3,
              child: SizedBox(),
            ),
            //
            Text(
              "helps you enter \ndaily report",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: ColorUtil.primaryTeal,
                fontSize: 28.0,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.2,
                wordSpacing: 2.0,
              ),
            ),
            //
            Expanded(
              flex: 2,
              child: SizedBox(),
            ),
            //
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: slideIndex
                  .map(
                    (i) => Container(
                      height: (onBoardingScreenController.onBoardingSlideIndex
                                  .toInt() ==
                              i)
                          ? 12
                          : 8,
                      width: (onBoardingScreenController.onBoardingSlideIndex
                                  .toInt() ==
                              i)
                          ? 12
                          : 8,
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: (onBoardingScreenController.onBoardingSlideIndex
                                    .toInt() ==
                                i)
                            ? ColorUtil.primaryTeal
                            : ColorUtil.primaryGrey,
                      ),
                    ),
                  )
                  .toList(),
            ),
            //
            Expanded(
              flex: 2,
              child: SizedBox(),
            ),
            //
            Row(
              children: [
                Text(
                  "skip",
                  style: TextStyle(
                    color: ColorUtil.primaryGrey,
                    fontWeight: FontWeight.w600,
                    fontSize: 20.0,
                  ),
                ),
                //
                SizedBox(width: 10.0),
                //
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 20.0,
                  color: ColorUtil.primaryGrey,
                )
              ],
            ),
            //
            Expanded(
              flex: 2,
              child: SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}
