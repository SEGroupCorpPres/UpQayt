// To parse this JSON data, do
//
//     final checkDeliveryZone = checkDeliveryZoneFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'check_delivery_zone_model.freezed.dart';
part 'check_delivery_zone_model.g.dart';

CheckDeliveryZoneModel checkDeliveryZoneModelFromJson(String str) => CheckDeliveryZoneModel.fromJson(json.decode(str));

String checkDeliveryZoneModelToJson(CheckDeliveryZoneModel data) => json.encode(data.toJson());

@freezed
class CheckDeliveryZoneModel with _$CheckDeliveryZoneModel {
  const factory CheckDeliveryZoneModel({
    @JsonKey(name: "client_address_id")
    required int clientAddressId,
    @JsonKey(name: "vendor_id")
    required int vendorId,
  }) = _CheckDeliveryZoneModel;

  factory CheckDeliveryZoneModel.fromJson(Map<String, dynamic> json) => _$CheckDeliveryZoneModelFromJson(json);
}
