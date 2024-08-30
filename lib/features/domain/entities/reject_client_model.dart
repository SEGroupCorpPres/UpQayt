// To parse this JSON data, do
//
//     final rejectClient = rejectClientFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'reject_client_model.freezed.dart';
part 'reject_client_model.g.dart';

RejectClient rejectClientFromJson(String str) => RejectClient.fromJson(json.decode(str));

String rejectClientToJson(RejectClient data) => json.encode(data.toJson());

@freezed
class RejectClient with _$RejectClient {
  const factory RejectClient({
    @JsonKey(name: "order_id")
    required int orderId,
    @JsonKey(name: "rejection_reason")
    required String rejectionReason,
  }) = _RejectClient;

  factory RejectClient.fromJson(Map<String, dynamic> json) => _$RejectClientFromJson(json);
}
