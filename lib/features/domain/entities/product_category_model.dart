// To parse this JSON data, do
//
//     final productCategory = productCategoryFromJson(jsonString);

import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'product_category_model.freezed.dart';
part 'product_category_model.g.dart';

ProductCategory productCategoryFromJson(String str) => ProductCategory.fromJson(json.decode(str));

String productCategoryToJson(ProductCategory data) => json.encode(data.toJson());

@freezed
class ProductCategory with _$ProductCategory {
  const factory ProductCategory({
    @JsonKey(name: "success")
    required bool success,
    @JsonKey(name: "data")
    required Data data,
    @JsonKey(name: "error")
    required dynamic error,
  }) = _ProductCategory;

  factory ProductCategory.fromJson(Map<String, dynamic> json) => _$ProductCategoryFromJson(json);
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
    @JsonKey(name: "order")
    required int order,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}
