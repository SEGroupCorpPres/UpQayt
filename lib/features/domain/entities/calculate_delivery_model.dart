// To parse this JSON data, do
//
//     final calculateDelivery = calculateDeliveryFromJson(jsonString);

import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'calculate_delivery_model.freezed.dart';
part 'calculate_delivery_model.g.dart';

CalculateDelivery calculateDeliveryFromJson(String str) => CalculateDelivery.fromJson(json.decode(str));

String calculateDeliveryToJson(CalculateDelivery data) => json.encode(data.toJson());

@freezed
class CalculateDelivery with _$CalculateDelivery {
  const factory CalculateDelivery({
    @JsonKey(name: "vendor_id")
    required int vendorId,
    @JsonKey(name: "client_address_id")
    required int clientAddressId,
  }) = _CalculateDelivery;

  factory CalculateDelivery.fromJson(Map<String, dynamic> json) => _$CalculateDeliveryFromJson(json);
}
