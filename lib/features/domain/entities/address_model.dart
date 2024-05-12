// To parse this JSON data, do
//
//     final Address = AddressFromJson(jsonString);

import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'package:upqayt/features/domain/entities/location_model.dart';

part 'address_model.freezed.dart';
part 'address_model.g.dart';

Address addressFromJson(String str) => Address.fromJson(json.decode(str));

String addressToJson(Address data) => json.encode(data.toJson());

@freezed
class Address with _$Address {
  const factory Address({
    @JsonKey(name: "custom_name")
    required String customName,
    @JsonKey(name: "location")
    required Location location,
    @JsonKey(name: "location_name")
    required String locationName,
    @JsonKey(name: "floor")
    required int floor,
    @JsonKey(name: "home")
    required int home,
    @JsonKey(name: "room")
    required int room,
    @JsonKey(name: "entrance")
    required int entrance,
    @JsonKey(name: "desc")
    required String desc,
    @JsonKey(name: "is_active")
    required bool isActive,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);
}
