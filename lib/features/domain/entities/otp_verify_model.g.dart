// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_verify_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OtpVerificationImpl _$$OtpVerificationImplFromJson(
        Map<String, dynamic> json) =>
    _$OtpVerificationImpl(
      phoneNumber: json['phone_number'] as String,
      otp: json['otp'] as String,
      sessionId: (json['session_id'] as num).toInt(),
    );

Map<String, dynamic> _$$OtpVerificationImplToJson(
        _$OtpVerificationImpl instance) =>
    <String, dynamic>{
      'phone_number': instance.phoneNumber,
      'otp': instance.otp,
      'session_id': instance.sessionId,
    };
