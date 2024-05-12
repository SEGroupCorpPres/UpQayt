// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressImpl _$$AddressImplFromJson(Map<String, dynamic> json) =>
    _$AddressImpl(
      customName: json['custom_name'] as String,
      location: Location.fromJson(json['location'] as Map<String, dynamic>),
      locationName: json['location_name'] as String,
      floor: (json['floor'] as num).toInt(),
      home: (json['home'] as num).toInt(),
      room: (json['room'] as num).toInt(),
      entrance: (json['entrance'] as num).toInt(),
      desc: json['desc'] as String,
      isActive: json['is_active'] as bool,
    );

Map<String, dynamic> _$$AddressImplToJson(_$AddressImpl instance) =>
    <String, dynamic>{
      'custom_name': instance.customName,
      'location': instance.location,
      'location_name': instance.locationName,
      'floor': instance.floor,
      'home': instance.home,
      'room': instance.room,
      'entrance': instance.entrance,
      'desc': instance.desc,
      'is_active': instance.isActive,
    };
