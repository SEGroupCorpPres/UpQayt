// To parse this JSON data, do
//
//     final auth = authFromJson(jsonString);

import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'otp_verify_model.freezed.dart';
part 'otp_verify_model.g.dart';

OtpVerification otpVerificationFromJson(String str) => OtpVerification.fromJson(json.decode(str));

String otpVerificationToJson(OtpVerification data) => json.encode(data.toJson());

@freezed
class OtpVerification with _$OtpVerification {
  const factory OtpVerification({
    @JsonKey(name: "phone_number")
    required String phoneNumber,
    @JsonKey(name: "otp")
    required String otp,
    @JsonKey(name: "session_id")
    required int sessionId,
  }) = _OtpVerification;

  factory OtpVerification.fromJson(Map<String, dynamic> json) => _$OtpVerificationFromJson(json);
}
