// To parse this JSON data, do
//
//     final rejectClient = rejectClientFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'reject_client_model.freezed.dart';
part 'reject_client_model.g.dart';

RejectClientModel rejectClientModelFromJson(String str) => RejectClientModel.fromJson(json.decode(str));

String rejectClientModelToJson(RejectClientModel data) => json.encode(data.toJson());

@freezed
class RejectClientModel with _$RejectClientModel {
  const factory RejectClientModel({
    @JsonKey(name: "order_id")
    required int orderId,
    @JsonKey(name: "rejection_reason")
    required String rejectionReason,
  }) = _RejectClientModel;

  factory RejectClientModel.fromJson(Map<String, dynamic> json) => _$RejectClientModelFromJson(json);
}
