
import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_detail_model.freezed.dart';
part 'order_detail_model.g.dart';

// Map newData = {
//   "order_details": {
//     "product_id": 2,
//     "count": 4,
//   }
// }
OrderDetailModel orderDetailModelFromJson(String str) => OrderDetailModel.fromJson(json.decode(str));

String orderDetailModelToJson(OrderDetailModel data) => json.encode(data.toJson());
@freezed
class OrderDetailModel with _$OrderDetailModel {
  const factory OrderDetailModel({
    @JsonKey(name: "product_id")
    required int productId,
    @JsonKey(name: "count")
    required int count,
  }) = _OrderDetailModel;

  factory OrderDetailModel.fromJson(Map<String, dynamic> json) => _$OrderDetailModelFromJson(json);
}
