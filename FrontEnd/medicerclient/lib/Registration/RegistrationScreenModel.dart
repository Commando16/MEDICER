import 'dart:convert';

RegisterUserWithEmailPasswordApiModel
    registerUserWithEmailPasswordApiModelFromJson(String str) =>
        RegisterUserWithEmailPasswordApiModel.fromJson(json.decode(str));

String registerUserWithEmailPasswordApiModelToJson(
        RegisterUserWithEmailPasswordApiModel data) =>
    json.encode(data.toJson());

class RegisterUserWithEmailPasswordApiModel {
  RegisterUserWithEmailPasswordApiModel({
    this.status,
    this.msg,
  });

  final int? status;
  final String? msg;

  factory RegisterUserWithEmailPasswordApiModel.fromJson(
          Map<String, dynamic> json) =>
      RegisterUserWithEmailPasswordApiModel(
        status: json["status"],
        msg: json["msg"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "msg": msg,
      };
}
