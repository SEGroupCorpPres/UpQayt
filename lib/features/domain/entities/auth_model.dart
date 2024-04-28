import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_model.freezed.dart';
part 'auth_model.g.dart';

@freezed
class AuthModel with _$AuthModel {
  const factory AuthModel({
    required String accessToken,
    required String refreshToken,
    required String phoneNumber,
    required String deviceName,
    required String deviceToken
  }) = _AuthModel;

  factory AuthModel.fromJson(Map<String, dynamic> json) => _$AuthModelFromJson(json);
  // @override
  // Map<String, dynamic> toJson() => _$AuthModelToJson(this);
}
