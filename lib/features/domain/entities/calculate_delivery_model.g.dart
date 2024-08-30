// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculate_delivery_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CalculateDeliveryImpl _$$CalculateDeliveryImplFromJson(
        Map<String, dynamic> json) =>
    _$CalculateDeliveryImpl(
      vendorId: (json['vendor_id'] as num).toInt(),
      clientAddressId: (json['client_address_id'] as num).toInt(),
    );

Map<String, dynamic> _$$CalculateDeliveryImplToJson(
        _$CalculateDeliveryImpl instance) =>
    <String, dynamic>{
      'vendor_id': instance.vendorId,
      'client_address_id': instance.clientAddressId,
    };
