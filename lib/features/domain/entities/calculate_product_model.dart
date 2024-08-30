// To parse this JSON data, do
//
//     final calculateProduct = calculateProductFromJson(jsonString);

import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'calculate_product_model.freezed.dart';
part 'calculate_product_model.g.dart';

CalculateProduct calculateProductFromJson(String str) => CalculateProduct.fromJson(json.decode(str));

String calculateProductToJson(CalculateProduct data) => json.encode(data.toJson());

@freezed
class CalculateProduct with _$CalculateProduct {
  const factory CalculateProduct({
    @JsonKey(name: "order_details")
    required List<OrderDetail> orderDetails,
  }) = _CalculateProduct;

  factory CalculateProduct.fromJson(Map<String, dynamic> json) => _$CalculateProductFromJson(json);
}

@freezed
class OrderDetail with _$OrderDetail {
  const factory OrderDetail({
    @JsonKey(name: "product_id")
    required int productId,
    @JsonKey(name: "count")
    required int count,
  }) = _OrderDetail;

  factory OrderDetail.fromJson(Map<String, dynamic> json) => _$OrderDetailFromJson(json);
}
