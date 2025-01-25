// To parse this JSON data, do
//
//     final dataListModel = dataListModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'data_list_model.freezed.dart';
part 'data_list_model.g.dart';

DataListModel dataListModelFromJson(String str) => DataListModel.fromJson(json.decode(str));

String dataListModelToJson<T>(DataListModel<T> data, Object? Function(T) toJsonT) {
  return json.encode(data.toJson((data) => toJsonT(data)));
}
@freezed
class DataListModel<T> with _$DataListModel<T> {
  const factory DataListModel({
    @JsonKey(name: "total") required int total,
    @JsonKey(name: "page") required int page,
    @JsonKey(name: "limit") required int limit,
    @JsonKey(name: "data") required List<T> data,
  }) = _DataListModel<T>;

  factory DataListModel.fromJson(
      Map<String, dynamic> json,
      T Function(Object?) fromJsonT,
      ) {
    final list = (json['data'] as List<dynamic>).map(fromJsonT).toList();
    return _$DataListModelFromJson(json).copyWith(data: list);
  }

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$DataListModelToJson(this, toJsonT);
  }
}