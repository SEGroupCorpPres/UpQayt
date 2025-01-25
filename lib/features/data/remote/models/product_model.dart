


import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:upqayt/features/data/remote/models/category_model.dart';
import 'package:upqayt/features/data/remote/models/vendor_model.dart';


part 'product_model.freezed.dart';
part 'product_model.g.dart';

ProductModel productModelFromJson(String str) => ProductModel.fromJson(json.decode(str));

String productModelToJson(ProductModel data) => json.encode(data.toJson());


@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "created_at") required DateTime createdAt,
    @JsonKey(name: "updated_at") required DateTime updatedAt,
    @JsonKey(name: "name_uz") required String nameUz,
    @JsonKey(name: "name_ru") required String nameRu,
    @JsonKey(name: "img_url") required String imgUrl,
    @JsonKey(name: "price") required int price,
    @JsonKey(name: "discount") required int discount,
    @JsonKey(name: "status") required String status,
    @JsonKey(name: "vendor") required VendorModel vendor,
    @JsonKey(name: "category") required CategoryModel category,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);
}
