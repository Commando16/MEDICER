// package or library import
import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// screen import

// model import

// controller import

// util import
import 'package:medicerclient/Util/ColorUtil.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: ColorUtil.primaryTeal,
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      color: ColorUtil.primaryTeal,
                      child: Column(
                        children: [
                          Expanded(
                            flex: 7,
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: ColorUtil.primaryWhite,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20.0),
                                  bottomRight: Radius.circular(20.0),
                                ),
                              ),
                              // child: Text("hello"), // TODO: remove this line
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: ColorUtil.primaryTeal,
                              ),
                              // child: Text("hello"), // TODO: remove this line
                            ),
                          ),
                        ],
                      ),
                    ),
                    //
                    // Doctor Avatar image
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Column(
                        children: [
                          Expanded(
                            child: SizedBox(),
                          ),
                          Text(
                            "Dr. Anil Mehta",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: ColorUtil.primaryTeal,
                              fontWeight: FontWeight.w900,
                              fontSize: 24.0,
                            ),
                          ),
                          //
                          Expanded(
                            child: SizedBox(),
                          ),
                          //
                          Container(
                            padding: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              color: ColorUtil.primaryTeal,
                              shape: BoxShape.circle,
                            ),
                            child: CircleAvatar(
                              radius: MediaQuery.of(context).size.width * 0.15,
                              foregroundImage: AssetImage(
                                  "images/DefaultImages/defaultUserImage1.png"),
                              backgroundColor: ColorUtil.primaryGrey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Doctor Avatar image ends
                  ],
                ),
              ),
              //
              Expanded(
                flex: 7,
                child: Container(
                  child: ContactInfo(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ContactInfo extends StatelessWidget {
  const ContactInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      children: [
        Text(
          "lung cancer specialist",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: ColorUtil.primaryWhite,
            fontWeight: FontWeight.w600,
            fontSize: 24.0,
          ),
        ),
        //
        Divider(
          height: 20.0,
          thickness: 3.0,
          color: ColorUtil.primaryGrey,
        ),
        //
        // call button
        Container(
          margin: EdgeInsets.symmetric(vertical: 10.0),
          decoration: BoxDecoration(
            color: ColorUtil.primaryWhite,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: InkWell(
            splashColor: Colors.tealAccent,
            onTap: () {
              debugPrint("call tapped");
            },
            child: ListTile(
              leading: Icon(
                Icons.call,
                color: ColorUtil.primaryTeal,
                size: 25.0,
              ),
              title: Text(
                "+91 0918273645",
                style: TextStyle(
                  color: ColorUtil.secondaryGrey,
                  fontWeight: FontWeight.w800,
                  fontSize: 20.0,
                  letterSpacing: 1.5,
                ),
              ),
              subtitle: Text(
                "Tap to call",
                style: TextStyle(
                  color: ColorUtil.primaryGrey,
                  fontWeight: FontWeight.w400,
                  fontSize: 14.0,
                  height: 2.0,
                ),
              ),
            ),
          ),
        ),
        // call button ends
        //
        // email button
        Container(
          margin: EdgeInsets.symmetric(vertical: 10.0),
          decoration: BoxDecoration(
            color: ColorUtil.primaryWhite,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: InkWell(
            splashColor: Colors.tealAccent,
            onTap: () {
              debugPrint("email tapped");
            },
            child: ListTile(
              leading: Icon(
                Icons.email,
                color: ColorUtil.primaryTeal,
                size: 25.0,
              ),
              title: Text(
                "abcdefg@xyz.com",
                style: TextStyle(
                  color: ColorUtil.secondaryGrey,
                  fontWeight: FontWeight.w800,
                  fontSize: 20.0,
                ),
              ),
              subtitle: Text(
                "Tap to copy email",
                style: TextStyle(
                  color: ColorUtil.primaryGrey,
                  fontWeight: FontWeight.w400,
                  fontSize: 14.0,
                  height: 2.0,
                ),
              ),
            ),
          ),
        ),
        // email button ends
        //
        // clinic address button
        Container(
          margin: EdgeInsets.symmetric(vertical: 10.0),
          decoration: BoxDecoration(
            color: ColorUtil.primaryWhite,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: InkWell(
            splashColor: Colors.tealAccent,
            onTap: () {
              debugPrint("address tapped");
            },
            child: ListTile(
              leading: Icon(
                Icons.location_pin,
                color: ColorUtil.primaryTeal,
                size: 25.0,
              ),
              title: Text(
                "abc street, in ijk city, qrs state, xyz country, 20010.",
                style: TextStyle(
                  color: ColorUtil.secondaryGrey,
                  fontWeight: FontWeight.w800,
                  fontSize: 20.0,
                ),
              ),
              subtitle: Text(
                "Tap to open location on Google maps",
                style: TextStyle(
                  color: ColorUtil.primaryGrey,
                  fontWeight: FontWeight.w400,
                  fontSize: 14.0,
                  height: 2.0,
                ),
              ),
            ),
          ),
        )
        // clinic address button ends
      ],
    );
  }
}
