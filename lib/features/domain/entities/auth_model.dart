// To parse this JSON data, do
//
//     final auth = authFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'auth_model.freezed.dart';
part 'auth_model.g.dart';

Auth authFromJson(String str) => Auth.fromJson(json.decode(str));

String authToJson(Auth data) => json.encode(data.toJson());

@freezed
class Auth with _$Auth {
  const factory Auth({
    @JsonKey(name: "phone_number")
    required String phoneNumber,
    @JsonKey(name: "device_name")
    required String deviceName,
    @JsonKey(name: "device_token")
    required String deviceToken,
  }) = _Auth;

  factory Auth.fromJson(Map<String, dynamic> json) => _$AuthFromJson(json);
}
