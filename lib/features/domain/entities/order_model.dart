// To parse this JSON data, do
//
//     final order = orderFromJson(jsonString);

import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'order_model.freezed.dart';
part 'order_model.g.dart';

Order orderFromJson(String str) => Order.fromJson(json.decode(str));

String orderToJson(Order data) => json.encode(data.toJson());

@freezed
class Order with _$Order {
  const factory Order({
    @JsonKey(name: "vendor_id")
    required int vendorId,
    @JsonKey(name: "client_address_id")
    required int clientAddressId,
    @JsonKey(name: "comment")
    required String comment,
    @JsonKey(name: "payment_type")
    required String paymentType,
    @JsonKey(name: "order_details")
    required List<OrderDetail> orderDetails,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
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
