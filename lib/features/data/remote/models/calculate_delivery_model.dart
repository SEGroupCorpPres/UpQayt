// To parse this JSON data, do
//
//     final calculateDelivery = calculateDeliveryFromJson(jsonString);

import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'calculate_delivery_model.freezed.dart';
part 'calculate_delivery_model.g.dart';

CalculateDeliveryModel calculateDeliveryModelFromJson(String str) => CalculateDeliveryModel.fromJson(json.decode(str));

String calculateDeliveryModelToJson(CalculateDeliveryModel data) => json.encode(data.toJson());

@freezed
class CalculateDeliveryModel with _$CalculateDeliveryModel {
  const factory CalculateDeliveryModel({
    @JsonKey(name: "vendor_id")
    required int vendorId,
    @JsonKey(name: "client_address_id")
    required int clientAddressId,
  }) = _CalculateDeliveryModel;

  factory CalculateDeliveryModel.fromJson(Map<String, dynamic> json) => _$CalculateDeliveryModelFromJson(json);
}
