// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderImpl _$$OrderImplFromJson(Map<String, dynamic> json) => _$OrderImpl(
      vendorId: (json['vendor_id'] as num).toInt(),
      clientAddressId: (json['client_address_id'] as num).toInt(),
      comment: json['comment'] as String,
      paymentType: json['payment_type'] as String,
      orderDetails: (json['order_details'] as List<dynamic>)
          .map((e) => OrderDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OrderImplToJson(_$OrderImpl instance) =>
    <String, dynamic>{
      'vendor_id': instance.vendorId,
      'client_address_id': instance.clientAddressId,
      'comment': instance.comment,
      'payment_type': instance.paymentType,
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
