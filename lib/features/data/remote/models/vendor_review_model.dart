// To parse this JSON data, do
//
//     final vendorReviewModel = vendorReviewModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'vendor_review_model.freezed.dart';
part 'vendor_review_model.g.dart';

VendorReviewModel vendorReviewModelFromJson(String str) => VendorReviewModel.fromJson(json.decode(str));

String vendorReviewModelToJson(VendorReviewModel data) => json.encode(data.toJson());

@freezed
class VendorReviewModel with _$VendorReviewModel {
  const factory VendorReviewModel({
    @JsonKey(name: "review_id")
    required int reviewId,
    @JsonKey(name: "vendor_id")
    required int vendorId,
    @JsonKey(name: "user_id")
    required int userId,
    @JsonKey(name: "rating")
    required int rating,
    @JsonKey(name: "comment")
    required String comment,
    @JsonKey(name: "created_at")
    required DateTime createdAt,
    @JsonKey(name: "updated_at")
    required DateTime updatedAt,
  }) = _VendorReviewModel;

  factory VendorReviewModel.fromJson(Map<String, dynamic> json) => _$VendorReviewModelFromJson(json);
}
