// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VendorProductImpl _$$VendorProductImplFromJson(Map<String, dynamic> json) =>
    _$VendorProductImpl(
      success: json['success'] as bool,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
      error: json['error'],
    );

Map<String, dynamic> _$$VendorProductImplToJson(_$VendorProductImpl instance) =>
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
      imgUrl: json['img_url'] as String,
      price: (json['price'] as num).toInt(),
      discount: (json['discount'] as num).toInt(),
      status: json['status'] as String,
      vendor: Vendor.fromJson(json['vendor'] as Map<String, dynamic>),
      category:
          ProductCategory.fromJson(json['category'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DatumImplToJson(_$DatumImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'name_uz': instance.nameUz,
      'name_ru': instance.nameRu,
      'img_url': instance.imgUrl,
      'price': instance.price,
      'discount': instance.discount,
      'status': instance.status,
      'vendor': instance.vendor,
      'category': instance.category,
    };
