// To parse this JSON data, do
//
//     final order = orderFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'package:upqayt/features/data/remote/models/order_detail_model.dart';

part 'order_model.freezed.dart';
part 'order_model.g.dart';
// Map newData = {
//   "vendor_id": ,
//   "client_address_id": ,
//   "comment": ,
//   "payment_type": ,
//   "order_details": [
//     {
//       "product_id": ,
//       "count": ,
//     },
//   ],
// };
OrderModel orderModelFromJson(String str) => OrderModel.fromJson(json.decode(str));

String orderModelToJson(OrderModel data) => json.encode(data.toJson());

@freezed
class OrderModel with _$OrderModel {
  const factory OrderModel({
    @JsonKey(name: "vendor_id")
    required int vendorId,
    @JsonKey(name: "client_address_id")
    required int clientAddressId,
    @JsonKey(name: "comment")
    required String comment,
    @JsonKey(name: "payment_type")
    required String paymentType,
    @JsonKey(name: "order_details")
    required List<OrderDetailModel> orderDetails,
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) => _$OrderModelFromJson(json);
}
