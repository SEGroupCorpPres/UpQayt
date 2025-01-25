// To parse this JSON data, do
//
//     final auth = authFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'otp_verify_model.freezed.dart';
part 'otp_verify_model.g.dart';

OtpVerificationModel otpVerificationModelFromJson(String str) => OtpVerificationModel.fromJson(json.decode(str));

String otpVerificationModelToJson(OtpVerificationModel data) => json.encode(data.toJson());

@freezed
class OtpVerificationModel with _$OtpVerificationModel {
  const factory OtpVerificationModel({
    @JsonKey(name: "phone_number")
    required String phoneNumber,
    @JsonKey(name: "otp")
    required String otp,
    @JsonKey(name: "session_id")
    required int sessionId,
  }) = _OtpVerificationModel;

  factory OtpVerificationModel.fromJson(Map<String, dynamic> json) => _$OtpVerificationModelFromJson(json);
}
