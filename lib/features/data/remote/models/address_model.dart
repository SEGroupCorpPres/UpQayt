// To parse this JSON data, do
//
//     final Address = AddressFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:upqayt/features/data/remote/models/location_model.dart';
import 'dart:convert';


part 'address_model.freezed.dart';
part 'address_model.g.dart';
// Map newData = {
//   "custom_name": ,
//   "location": {
//     "lat": ,
//     "long": ,
//   },
//   "location_name": ,
//   "floor": ,
//   "home": ,
//   "room": ,
//   "entrance": ,
//   "desc": ,
//   "is_active": ,
// };
AddressModel addressModelFromJson(String str) => AddressModel.fromJson(json.decode(str));

String addressModelToJson(AddressModel data) => json.encode(data.toJson());

@freezed
class AddressModel with _$AddressModel {
  const factory AddressModel({
    @JsonKey(name: "custom_name")
    required String customName,
    @JsonKey(name: "location")
    required LocationModel location,
    @JsonKey(name: "location_name")
    required String locationName,
    @JsonKey(name: "floor")
    required int floor,
    @JsonKey(name: "home")
    required int home,
    @JsonKey(name: "room")
    required int room,
    @JsonKey(name: "entrance")
    required int entrance,
    @JsonKey(name: "desc")
    required String desc,
    @JsonKey(name: "is_active")
    required bool isActive,
  }) = _AddressModel;

  factory AddressModel.fromJson(Map<String, dynamic> json) => _$AddressModelFromJson(json);
}
