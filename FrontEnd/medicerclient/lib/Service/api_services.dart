// package import
import 'dart:convert';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
// import 'package:get/get.dart';

// models import
import 'package:medicerclient/Login/LoginScreenModel.dart';
import 'package:medicerclient/Registration/RegistrationScreenModel.dart';

// utility import
import 'package:medicerclient/Util/UrlUtil.dart';
import 'package:medicerclient/Util/ConstantUtil.dart';

class ApiServices {
  static var client = http.Client();

  //##################### user login ###################
  static Future<UserLoginWithEmailPasswordAPIModel?>
      loginUserWithEmailPasswordAPICall(body) async {
    print("********in user login API services");
    print(body);

    final response = await http.post(Uri.parse(UrlUtil.USER_LOGIN), body: body);
    print("login user with email password response \n ${response.body}");

    var responsed = (json.decode(response.body));

    if (responsed["status"] == ConstantUtil.API_SUCCESS) {
      UserLoginWithEmailPasswordAPIModel userLoginWithEmailPasswordData =
          new UserLoginWithEmailPasswordAPIModel.fromJson(responsed);

      return userLoginWithEmailPasswordData;
    } else if (responsed["status"] == ConstantUtil.USER_NOT_FOUND) {
      Fluttertoast.showToast(
        msg: "User not found",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 2,
      );
      return null;
    } else if (responsed["status"] == ConstantUtil.INTERNAL_SERVER_ERROR) {
      Fluttertoast.showToast(
        msg: "Something went wrong with the server",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 2,
      );
      return null;
    }
  }

  //##################### user login ends ###################
  //
  //
  //##################### user register ###################
  static Future<RegisterUserWithEmailPasswordApiModel?>
      registerUserWithEmailPasswordApiModelCall(body) async {
    print("********in user register API services");
    print(body);

    final response =
        await http.post(Uri.parse(UrlUtil.USER_REGISTER), body: body);

    print("register user with email password response \n ${response.body}");

    var responsed = (json.decode(response.body));

    if (responsed["status"] == ConstantUtil.API_SUCCESS) {
      RegisterUserWithEmailPasswordApiModel
          registerUserWithEmailPasswordApiModelData =
          new RegisterUserWithEmailPasswordApiModel.fromJson(responsed);

      return registerUserWithEmailPasswordApiModelData;
    } else if (responsed["status"] == ConstantUtil.USER_ALREADY_EXIST) {
      Fluttertoast.showToast(
        msg: "User already registered",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 2,
      );
      return null;
    } else if (responsed["status"] == ConstantUtil.INTERNAL_SERVER_ERROR) {
      Fluttertoast.showToast(
        msg: "Something went wrong with the server",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 2,
      );
      return null;
    }
  }
  //##################### user register ends ###################

}
