
import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_model.freezed.dart';
part 'location_model.g.dart';

LocationModel locationModelFromJson(String str) => LocationModel.fromJson(json.decode(str));

String locationModelToJson(LocationModel data) => json.encode(data.toJson());

@freezed
class LocationModel with _$LocationModel {
  const factory LocationModel({
    @JsonKey(name: "lat")
    required double lat,
    @JsonKey(name: "long")
    required double long,
  }) = _LocationModel;

  factory LocationModel.fromJson(Map<String, dynamic> json) => _$LocationModelFromJson(json);
}
