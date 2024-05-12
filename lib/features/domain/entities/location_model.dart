
import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_model.freezed.dart';
part 'location_model.g.dart';
Location locationFromJson(String str) => Location.fromJson(json.decode(str));

String locationToJson(Location data) => json.encode(data.toJson());

@freezed
class Location with _$Location {
  const factory Location({
    @JsonKey(name: "lat")
    required double lat,
    @JsonKey(name: "long")
    required double long,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);
}
