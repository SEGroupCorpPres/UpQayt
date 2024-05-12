// To parse this JSON data, do
//
//     final auth = authFromJson(jsonString);

import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'refresh_token_model.freezed.dart';
part 'refresh_token_model.g.dart';

RefreshToken authFromJson(String str) => RefreshToken.fromJson(json.decode(str));

String refreshTokenToJson(RefreshToken data) => json.encode(data.toJson());

@freezed
class RefreshToken with _$RefreshToken {
  const factory RefreshToken({
    @JsonKey(name: "refresh_token")
    required String refreshToken,
  }) = _RefreshToken;

  factory RefreshToken.fromJson(Map<String, dynamic> json) => _$RefreshTokenFromJson(json);
}
