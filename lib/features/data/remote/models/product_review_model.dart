// To parse this JSON data, do
//
//     final productReviewModel = productReviewModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'product_review_model.freezed.dart';
part 'product_review_model.g.dart';

ProductReviewModel productReviewModelFromJson(String str) => ProductReviewModel.fromJson(json.decode(str));

String productReviewModelToJson(ProductReviewModel data) => json.encode(data.toJson());

@freezed
class ProductReviewModel with _$ProductReviewModel {
  const factory ProductReviewModel({
    @JsonKey(name: "review_id")
    required int reviewId,
    @JsonKey(name: "product_id")
    required int productId,
    @JsonKey(name: "user_id")
    required int userId,
    @JsonKey(name: "rating")
    required double rating,
    @JsonKey(name: "comment")
    required String comment,
    @JsonKey(name: "created_at")
    required DateTime createdAt,
    @JsonKey(name: "updated_at")
    required DateTime updatedAt,
  }) = _ProductReviewModel;

  factory ProductReviewModel.fromJson(Map<String, dynamic> json) => _$ProductReviewModelFromJson(json);
}
