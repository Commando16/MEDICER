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

double onBoardingScreenSize = 0.0;

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final onBoardingScreenController = Get.put(OnBoardingScreenController());

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

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
            //
            Expanded(
              flex: 3,
              child: SizedBox(),
            ),
            //
            OnBoardingSlide3(),
            //
            Expanded(
              flex: 1,
              child: SizedBox(),
            ),
            //
            // dot indicator
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: slideIndex
                  .map(
                    (i) => Container(
                      height: (onBoardingScreenController
                                  .onBoardingSlideIndex.value ==
                              i)
                          ? 12
                          : 8,
                      width: (onBoardingScreenController
                                  .onBoardingSlideIndex.value ==
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
            // dot indicator ends
            //
            Expanded(
              flex: 2,
              child: SizedBox(),
            ),
            //
            //Skip button
            GestureDetector(
              onTap: () {
                debugPrint("skip pressed");
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "skip",
                    style: TextStyle(
                      color: ColorUtil.primaryGrey,
                      fontWeight: FontWeight.w600,
                      fontSize: 20.0,
                      letterSpacing: 2.0,
                    ),
                  ),
                  //
                  SizedBox(width: 5.0),
                  //
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 20.0,
                    color: ColorUtil.primaryGrey,
                  )
                ],
              ),
            ),
            //skip button ends
            //
            Expanded(
              flex: 1,
              child: SizedBox(),
            ),
            //
          ],
        ),
      ),
    );
  }
}

class OnBoardingSlide1 extends StatelessWidget {
  const OnBoardingSlide1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          // slide image
          Container(
            padding: EdgeInsets.symmetric(horizontal: onBoardingScreenSize),
            child: Image.asset('images/OnBoardingImages/OnBoardingImage1.png'),
          ),
          // slide image ends
          //
          SizedBox(height: 50.0),
          //
          // slide text
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
          // slide text ends
        ],
      ),
    );
  }
}

class OnBoardingSlide2 extends StatelessWidget {
  const OnBoardingSlide2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          // slide image
          Container(
            padding: EdgeInsets.symmetric(horizontal: onBoardingScreenSize),
            child: Image.asset('images/OnBoardingImages/OnBoardingImage2.png'),
          ),
          // slide image ends
          //
          SizedBox(height: 50.0),
          //
          // slide text
          Text(
            "analysis of your report \nby your doctor",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: ColorUtil.primaryTeal,
              fontSize: 28.0,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.2,
              wordSpacing: 2.0,
            ),
          ),
          // slide text ends
        ],
      ),
    );
  }
}

class OnBoardingSlide3 extends StatelessWidget {
  const OnBoardingSlide3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          // slide image
          Container(
            padding: EdgeInsets.symmetric(horizontal: onBoardingScreenSize),
            child: Image.asset('images/OnBoardingImages/OnBoardingImage3.png'),
          ),
          // slide image ends
          //
          SizedBox(height: 50.0),
          //
          // slide text
          Text(
            "keeps your health in \ntrack",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: ColorUtil.primaryTeal,
              fontSize: 28.0,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.2,
              wordSpacing: 2.0,
            ),
          ),
          // slide text ends
        ],
      ),
    );
  }
}
