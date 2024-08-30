// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reject_client_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RejectClientImpl _$$RejectClientImplFromJson(Map<String, dynamic> json) =>
    _$RejectClientImpl(
      orderId: (json['order_id'] as num).toInt(),
      rejectionReason: json['rejection_reason'] as String,
    );

Map<String, dynamic> _$$RejectClientImplToJson(_$RejectClientImpl instance) =>
    <String, dynamic>{
      'order_id': instance.orderId,
      'rejection_reason': instance.rejectionReason,
    };
