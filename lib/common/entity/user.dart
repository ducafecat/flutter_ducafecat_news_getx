import 'package:flutter/foundation.dart';

// 登录请求
class UserLoginRequestEntity {
  String? email;
  String? password;

  UserLoginRequestEntity({
    @required this.email,
    @required this.password,
  });

  factory UserLoginRequestEntity.fromJson(Map<String, dynamic> json) =>
      UserLoginRequestEntity(
        email: json["email"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
      };
}

// 登录返回
class UserLoginResponseEntity {
  String? accessToken;
  String? displayName;
  List<String>? channels;

  UserLoginResponseEntity({
    @required this.accessToken,
    this.displayName,
    this.channels,
  });

  factory UserLoginResponseEntity.fromJson(Map<String, dynamic> json) =>
      UserLoginResponseEntity(
        accessToken: json["access_token"],
        displayName: json["display_name"],
        channels: json["channels"] == null
            ? null
            : List<String>.from(json["channels"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "access_token": accessToken,
        "display_name": displayName,
        "channels": channels == null
            ? null
            : List<dynamic>.from(channels!.map((x) => x)),
      };
}
