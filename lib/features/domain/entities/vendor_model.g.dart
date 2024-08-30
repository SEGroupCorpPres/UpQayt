// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VendorImpl _$$VendorImplFromJson(Map<String, dynamic> json) => _$VendorImpl(
      success: json['success'] as bool,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
      error: json['error'],
    );

Map<String, dynamic> _$$VendorImplToJson(_$VendorImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'error': instance.error,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      total: (json['total'] as num).toInt(),
      page: (json['page'] as num).toInt(),
      limit: (json['limit'] as num).toInt(),
      data: (json['data'] as List<dynamic>)
          .map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'page': instance.page,
      'limit': instance.limit,
      'data': instance.data,
    };

_$DatumImpl _$$DatumImplFromJson(Map<String, dynamic> json) => _$DatumImpl(
      id: (json['id'] as num).toInt(),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      nameUz: json['name_uz'] as String,
      nameRu: json['name_ru'] as String,
      descUz: json['desc_uz'] as String,
      descRu: json['desc_ru'] as String,
      telegramId: json['telegram_id'] as String,
      backgroundImg: json['background_img'] as String,
      phoneNumber: json['phone_number'] as String,
      addressUz: json['address_uz'] as String,
      addressRu: json['address_ru'] as String,
      location: Location.fromJson(json['location'] as Map<String, dynamic>),
      locationName: json['location_name'] as String,
      logoImg: json['logo_img'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$$DatumImplToJson(_$DatumImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'name_uz': instance.nameUz,
      'name_ru': instance.nameRu,
      'desc_uz': instance.descUz,
      'desc_ru': instance.descRu,
      'telegram_id': instance.telegramId,
      'background_img': instance.backgroundImg,
      'phone_number': instance.phoneNumber,
      'address_uz': instance.addressUz,
      'address_ru': instance.addressRu,
      'location': instance.location,
      'location_name': instance.locationName,
      'logo_img': instance.logoImg,
      'status': instance.status,
    };

_$LocationImpl _$$LocationImplFromJson(Map<String, dynamic> json) =>
    _$LocationImpl(
      lat: json['lat'] as String,
      long: json['long'] as String,
    );

Map<String, dynamic> _$$LocationImplToJson(_$LocationImpl instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'long': instance.long,
    };
