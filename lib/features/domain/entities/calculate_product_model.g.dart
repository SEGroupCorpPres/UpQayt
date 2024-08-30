// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculate_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CalculateProductImpl _$$CalculateProductImplFromJson(
        Map<String, dynamic> json) =>
    _$CalculateProductImpl(
      orderDetails: (json['order_details'] as List<dynamic>)
          .map((e) => OrderDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CalculateProductImplToJson(
        _$CalculateProductImpl instance) =>
    <String, dynamic>{
      'order_details': instance.orderDetails,
    };

_$OrderDetailImpl _$$OrderDetailImplFromJson(Map<String, dynamic> json) =>
    _$OrderDetailImpl(
      productId: (json['product_id'] as num).toInt(),
      count: (json['count'] as num).toInt(),
    );

Map<String, dynamic> _$$OrderDetailImplToJson(_$OrderDetailImpl instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'count': instance.count,
    };
