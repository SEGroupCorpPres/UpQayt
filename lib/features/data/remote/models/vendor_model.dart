import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:upqayt/features/data/remote/models/location_model.dart';


part 'vendor_model.freezed.dart';
part 'vendor_model.g.dart';

VendorModel vendorModelFromJson(String str) => VendorModel.fromJson(json.decode(str));

String vendorModelToJson(VendorModel data) => json.encode(data.toJson());

@freezed
class VendorModel with _$VendorModel{
  const factory VendorModel({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "created_at") required DateTime createdAt,
    @JsonKey(name: "updated_at") required DateTime updatedAt,
    @JsonKey(name: "name_uz") required String nameUz,
    @JsonKey(name: "name_ru") required String nameRu,
    @JsonKey(name: "desc_uz") required String descUz,
    @JsonKey(name: "desc_ru") required String descRu,
    @JsonKey(name: "telegram_id") required String telegramId,
    @JsonKey(name: "background_img") required String backgroundImg,
    @JsonKey(name: "phone_number") required String phoneNumber,
    @JsonKey(name: "address_uz") required String addressUz,
    @JsonKey(name: "address_ru") required String addressRu,
    @JsonKey(name: "location") required LocationModel location,
    @JsonKey(name: "location_name") required String locationName,
    @JsonKey(name: "logo_img") required String logoImg,
    @JsonKey(name: "status") required String status,
  }) = _VendorModel;

  factory VendorModel.fromJson(Map<String, dynamic> json) => _$VendorModelFromJson(json);
}