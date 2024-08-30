// To parse this JSON data, do
//
//     final vendorProduct = vendorProductFromJson(jsonString);

import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'package:upqayt/features/domain/entities/product_category_model.dart';
import 'package:upqayt/features/domain/entities/vendor_model.dart';

part 'vendor_product_model.freezed.dart';
part 'vendor_product_model.g.dart';

VendorProduct vendorProductFromJson(String str) => VendorProduct.fromJson(json.decode(str));

String vendorProductToJson(VendorProduct data) => json.encode(data.toJson());

@freezed
class VendorProduct with _$VendorProduct {
  const factory VendorProduct({
    @JsonKey(name: "success")
    required bool success,
    @JsonKey(name: "data")
    required Data data,
    @JsonKey(name: "error")
    required dynamic error,
  }) = _VendorProduct;

  factory VendorProduct.fromJson(Map<String, dynamic> json) => _$VendorProductFromJson(json);
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
    @JsonKey(name: "img_url")
    required String imgUrl,
    @JsonKey(name: "price")
    required int price,
    @JsonKey(name: "discount")
    required int discount,
    @JsonKey(name: "status")
    required String status,
    @JsonKey(name: "vendor")
    required Vendor vendor,
    @JsonKey(name: "category")
    required ProductCategory category,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}

