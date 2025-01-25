// To parse this JSON data, do
//
//     final vendorProduct = vendorProductFromJson(jsonString);
// Map map = {
//   "success": true,
//   "data": {
//     "total": 24,
//     "page": 1,
//     "limit": 10,
//     "data": [
//       {
//         "id": 1,
//         "created_at": "",
//         "updated_at": "",
//         "name_uz": "",
//         "name_ru": "",
//         "name_en": "",
//         "img_url": "",
//         "price": 0,
//         "discount": 0,
//         "status": "",
//         "vendor": 3242,
//         "category": "",
//       }
//     ]
//   },
//   "error": "",
// };
import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:upqayt/features/data/remote/models/data_list_model.dart';

part 'data_model.freezed.dart';
part 'data_model.g.dart';



DataModel dataModelFromJson(String str) => DataModel.fromJson(json.decode(str));

String dataModelToJson<T>(DataModel<T> data, Object? Function(T) toJsonT) {
  return json.encode(data.toJson((data) => toJsonT(data)));
}

@freezed
class DataModel<T> with _$DataModel<T> {
  const factory DataModel({
    @JsonKey(name: "success") required bool success,
    @JsonKey(name: "data") required T data,
    @JsonKey(name: "error") required dynamic error,
  }) = _DataModel<T>;

  factory DataModel.fromJson(
      Map<String, dynamic> json,
      T Function(Object?) fromJsonT,
      ) {
    return _$DataModelFromJson(json).copyWith(data: fromJsonT(json['data']));
  }
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$DataModelToJson(this, toJsonT);
  }
}