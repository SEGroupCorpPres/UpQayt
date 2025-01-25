// To parse this JSON data, do
//
//     final calculateProduct = calculateProductFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'package:upqayt/features/data/remote/models/order_detail_model.dart';

part 'calculate_product_model.freezed.dart';
part 'calculate_product_model.g.dart';

// Map newData = {
//   "order_details": {
//     "product_id": 2,
//     "count": 4,
//   }
// }
CalculateProductModel calculateProductModelFromJson(String str) => CalculateProductModel.fromJson(json.decode(str));

String calculateProductModelToJson(CalculateProductModel data) => json.encode(data.toJson());

@freezed
class CalculateProductModel with _$CalculateProductModel {
  const factory CalculateProductModel({
    @JsonKey(name: "order_details")
    required List<OrderDetailModel> orderDetails,
  }) = _CalculateProductModel;

  factory CalculateProductModel.fromJson(Map<String, dynamic> json) => _$CalculateProductModelFromJson(json);
}
