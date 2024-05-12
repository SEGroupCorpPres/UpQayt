// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthImpl _$$AuthImplFromJson(Map<String, dynamic> json) => _$AuthImpl(
      phoneNumber: json['phone_number'] as String,
      deviceName: json['device_name'] as String,
      deviceToken: json['device_token'] as String,
    );

Map<String, dynamic> _$$AuthImplToJson(_$AuthImpl instance) =>
    <String, dynamic>{
      'phone_number': instance.phoneNumber,
      'device_name': instance.deviceName,
      'device_token': instance.deviceToken,
    };
