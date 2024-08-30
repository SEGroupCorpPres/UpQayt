// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_delivery_zone_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CheckDeliveryZoneImpl _$$CheckDeliveryZoneImplFromJson(
        Map<String, dynamic> json) =>
    _$CheckDeliveryZoneImpl(
      clientAddressId: (json['client_address_id'] as num).toInt(),
      vendorId: (json['vendor_id'] as num).toInt(),
    );

Map<String, dynamic> _$$CheckDeliveryZoneImplToJson(
        _$CheckDeliveryZoneImpl instance) =>
    <String, dynamic>{
      'client_address_id': instance.clientAddressId,
      'vendor_id': instance.vendorId,
    };
