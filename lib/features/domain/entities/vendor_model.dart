// To parse this JSON data, do
//
//     final vendor = vendorFromJson(jsonString);

import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'vendor_model.freezed.dart';
part 'vendor_model.g.dart';

Vendor vendorFromJson(String str) => Vendor.fromJson(json.decode(str));

String vendorToJson(Vendor data) => json.encode(data.toJson());

@freezed
class Vendor with _$Vendor {
  const factory Vendor({
    @JsonKey(name: "success")
    required bool success,
    @JsonKey(name: "data")
    required Data data,
    @JsonKey(name: "error")
    required dynamic error,
  }) = _Vendor;

  factory Vendor.fromJson(Map<String, dynamic> json) => _$VendorFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "total")
    required int total,
    @JsonKey(name: "page")
    required int page,
    @JsonKey(name: "limit")
    required int limit,
    @JsonKey(name: "data")
    required List<Datum> data,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Datum with _$Datum {
  const factory Datum({
    @JsonKey(name: "id")
    required int id,
    @JsonKey(name: "created_at")
    required DateTime createdAt,
    @JsonKey(name: "updated_at")
    required DateTime updatedAt,
    @JsonKey(name: "name_uz")
    required String nameUz,
    @JsonKey(name: "name_ru")
    required String nameRu,
    @JsonKey(name: "desc_uz")
    required String descUz,
    @JsonKey(name: "desc_ru")
    required String descRu,
    @JsonKey(name: "telegram_id")
    required String telegramId,
    @JsonKey(name: "background_img")
    required String backgroundImg,
    @JsonKey(name: "phone_number")
    required String phoneNumber,
    @JsonKey(name: "address_uz")
    required String addressUz,
    @JsonKey(name: "address_ru")
    required String addressRu,
    @JsonKey(name: "location")
    required Location location,
    @JsonKey(name: "location_name")
    required String locationName,
    @JsonKey(name: "logo_img")
    required String logoImg,
    @JsonKey(name: "status")
    required String status,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}

@freezed
class Location with _$Location {
  const factory Location({
    @JsonKey(name: "lat")
    required String lat,
    @JsonKey(name: "long")
    required String long,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);
}
