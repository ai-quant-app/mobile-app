// To parse this JSON data, do
//
//     final token = tokenFromJson(jsonString);

import 'dart:convert';

Token tokenFromJson(String str) => Token.fromJson(json.decode(str));

String tokenToJson(Token data) => json.encode(data.toJson());

class Token {
  Token({
    this.data,
    this.message,
  });

  TokenModel data;
  dynamic message;

  factory Token.fromJson(Map<String, dynamic> json) => Token(
        data: TokenModel.fromJson(json["data"]),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "data": data.toJson(),
        "message": message,
      };
}

class TokenModel {
  TokenModel({
    this.icon,
    this.userName,
    this.email,
    this.fullName,
    this.userType,
    this.jwtToken,
    this.refreshToken,
  });

  String icon;
  String userName;
  String email;
  String fullName;
  String userType;
  String jwtToken;
  String refreshToken;

  factory TokenModel.fromJson(Map<String, dynamic> json) => TokenModel(
        icon: json["icon"],
        userName: json["userName"],
        email: json["email"],
        fullName: json["fullName"],
        userType: json["userType"],
        jwtToken: json["jwtToken"],
        refreshToken: json["refreshToken"],
      );

  Map<String, dynamic> toJson() => {
        "icon": icon,
        "userName": userName,
        "email": email,
        "fullName": fullName,
        "userType": userType,
        "jwtToken": jwtToken,
        "refreshToken": refreshToken,
      };
}
