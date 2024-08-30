// To parse this JSON data, do
//
//     final checkDeliveryZone = checkDeliveryZoneFromJson(jsonString);

import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'check_delivery_zone_model.freezed.dart';
part 'check_delivery_zone_model.g.dart';

CheckDeliveryZone checkDeliveryZoneFromJson(String str) => CheckDeliveryZone.fromJson(json.decode(str));

String checkDeliveryZoneToJson(CheckDeliveryZone data) => json.encode(data.toJson());

@freezed
class CheckDeliveryZone with _$CheckDeliveryZone {
  const factory CheckDeliveryZone({
    @JsonKey(name: "client_address_id")
    required int clientAddressId,
    @JsonKey(name: "vendor_id")
    required int vendorId,
  }) = _CheckDeliveryZone;

  factory CheckDeliveryZone.fromJson(Map<String, dynamic> json) => _$CheckDeliveryZoneFromJson(json);
}
