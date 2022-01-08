// package import
import 'dart:convert';

UserLoginWithEmailPasswordAPIModel userLoginWithEmailPasswordAPIModelFromJson(
        String str) =>
    UserLoginWithEmailPasswordAPIModel.fromJson(json.decode(str));

String userLoginWithEmailPasswordAPIModelToJson(
        UserLoginWithEmailPasswordAPIModel data) =>
    json.encode(data.toJson());

class UserLoginWithEmailPasswordAPIModel {
  UserLoginWithEmailPasswordAPIModel({
    this.status,
    this.msg,
    this.userId,
  });

  final int? status;
  final String? msg;
  final int? userId;

  factory UserLoginWithEmailPasswordAPIModel.fromJson(
          Map<String, dynamic> json) =>
      UserLoginWithEmailPasswordAPIModel(
        status: json["status"],
        msg: json["msg"],
        userId: json["userId"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "msg": msg,
        "userId": userId,
      };
}
