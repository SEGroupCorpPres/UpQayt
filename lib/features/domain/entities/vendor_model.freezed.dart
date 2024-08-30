// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vendor_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Vendor _$VendorFromJson(Map<String, dynamic> json) {
  return _Vendor.fromJson(json);
}

/// @nodoc
mixin _$Vendor {
  @JsonKey(name: "success")
  bool get success => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  Data get data => throw _privateConstructorUsedError;
  @JsonKey(name: "error")
  dynamic get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VendorCopyWith<Vendor> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendorCopyWith<$Res> {
  factory $VendorCopyWith(Vendor value, $Res Function(Vendor) then) =
      _$VendorCopyWithImpl<$Res, Vendor>;
  @useResult
  $Res call(
      {@JsonKey(name: "success") bool success,
      @JsonKey(name: "data") Data data,
      @JsonKey(name: "error") dynamic error});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$VendorCopyWithImpl<$Res, $Val extends Vendor>
    implements $VendorCopyWith<$Res> {
  _$VendorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res> get data {
    return $DataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VendorImplCopyWith<$Res> implements $VendorCopyWith<$Res> {
  factory _$$VendorImplCopyWith(
          _$VendorImpl value, $Res Function(_$VendorImpl) then) =
      __$$VendorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "success") bool success,
      @JsonKey(name: "data") Data data,
      @JsonKey(name: "error") dynamic error});

  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$$VendorImplCopyWithImpl<$Res>
    extends _$VendorCopyWithImpl<$Res, _$VendorImpl>
    implements _$$VendorImplCopyWith<$Res> {
  __$$VendorImplCopyWithImpl(
      _$VendorImpl _value, $Res Function(_$VendorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
    Object? error = freezed,
  }) {
    return _then(_$VendorImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VendorImpl implements _Vendor {
  const _$VendorImpl(
      {@JsonKey(name: "success") required this.success,
      @JsonKey(name: "data") required this.data,
      @JsonKey(name: "error") required this.error});

  factory _$VendorImpl.fromJson(Map<String, dynamic> json) =>
      _$$VendorImplFromJson(json);

  @override
  @JsonKey(name: "success")
  final bool success;
  @override
  @JsonKey(name: "data")
  final Data data;
  @override
  @JsonKey(name: "error")
  final dynamic error;

  @override
  String toString() {
    return 'Vendor(success: $success, data: $data, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VendorImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, success, data, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VendorImplCopyWith<_$VendorImpl> get copyWith =>
      __$$VendorImplCopyWithImpl<_$VendorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VendorImplToJson(
      this,
    );
  }
}

abstract class _Vendor implements Vendor {
  const factory _Vendor(
      {@JsonKey(name: "success") required final bool success,
      @JsonKey(name: "data") required final Data data,
      @JsonKey(name: "error") required final dynamic error}) = _$VendorImpl;

  factory _Vendor.fromJson(Map<String, dynamic> json) = _$VendorImpl.fromJson;

  @override
  @JsonKey(name: "success")
  bool get success;
  @override
  @JsonKey(name: "data")
  Data get data;
  @override
  @JsonKey(name: "error")
  dynamic get error;
  @override
  @JsonKey(ignore: true)
  _$$VendorImplCopyWith<_$VendorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: "total")
  int get total => throw _privateConstructorUsedError;
  @JsonKey(name: "page")
  int get page => throw _privateConstructorUsedError;
  @JsonKey(name: "limit")
  int get limit => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<Datum> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {@JsonKey(name: "total") int total,
      @JsonKey(name: "page") int page,
      @JsonKey(name: "limit") int limit,
      @JsonKey(name: "data") List<Datum> data});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? page = null,
    Object? limit = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "total") int total,
      @JsonKey(name: "page") int page,
      @JsonKey(name: "limit") int limit,
      @JsonKey(name: "data") List<Datum> data});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? page = null,
    Object? limit = null,
    Object? data = null,
  }) {
    return _then(_$DataImpl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: "total") required this.total,
      @JsonKey(name: "page") required this.page,
      @JsonKey(name: "limit") required this.limit,
      @JsonKey(name: "data") required final List<Datum> data})
      : _data = data;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: "total")
  final int total;
  @override
  @JsonKey(name: "page")
  final int page;
  @override
  @JsonKey(name: "limit")
  final int limit;
  final List<Datum> _data;
  @override
  @JsonKey(name: "data")
  List<Datum> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'Data(total: $total, page: $page, limit: $limit, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, total, page, limit,
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {@JsonKey(name: "total") required final int total,
      @JsonKey(name: "page") required final int page,
      @JsonKey(name: "limit") required final int limit,
      @JsonKey(name: "data") required final List<Datum> data}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "total")
  int get total;
  @override
  @JsonKey(name: "page")
  int get page;
  @override
  @JsonKey(name: "limit")
  int get limit;
  @override
  @JsonKey(name: "data")
  List<Datum> get data;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Datum _$DatumFromJson(Map<String, dynamic> json) {
  return _Datum.fromJson(json);
}

/// @nodoc
mixin _$Datum {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "name_uz")
  String get nameUz => throw _privateConstructorUsedError;
  @JsonKey(name: "name_ru")
  String get nameRu => throw _privateConstructorUsedError;
  @JsonKey(name: "desc_uz")
  String get descUz => throw _privateConstructorUsedError;
  @JsonKey(name: "desc_ru")
  String get descRu => throw _privateConstructorUsedError;
  @JsonKey(name: "telegram_id")
  String get telegramId => throw _privateConstructorUsedError;
  @JsonKey(name: "background_img")
  String get backgroundImg => throw _privateConstructorUsedError;
  @JsonKey(name: "phone_number")
  String get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "address_uz")
  String get addressUz => throw _privateConstructorUsedError;
  @JsonKey(name: "address_ru")
  String get addressRu => throw _privateConstructorUsedError;
  @JsonKey(name: "location")
  Location get location => throw _privateConstructorUsedError;
  @JsonKey(name: "location_name")
  String get locationName => throw _privateConstructorUsedError;
  @JsonKey(name: "logo_img")
  String get logoImg => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DatumCopyWith<Datum> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatumCopyWith<$Res> {
  factory $DatumCopyWith(Datum value, $Res Function(Datum) then) =
      _$DatumCopyWithImpl<$Res, Datum>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "created_at") DateTime createdAt,
      @JsonKey(name: "updated_at") DateTime updatedAt,
      @JsonKey(name: "name_uz") String nameUz,
      @JsonKey(name: "name_ru") String nameRu,
      @JsonKey(name: "desc_uz") String descUz,
      @JsonKey(name: "desc_ru") String descRu,
      @JsonKey(name: "telegram_id") String telegramId,
      @JsonKey(name: "background_img") String backgroundImg,
      @JsonKey(name: "phone_number") String phoneNumber,
      @JsonKey(name: "address_uz") String addressUz,
      @JsonKey(name: "address_ru") String addressRu,
      @JsonKey(name: "location") Location location,
      @JsonKey(name: "location_name") String locationName,
      @JsonKey(name: "logo_img") String logoImg,
      @JsonKey(name: "status") String status});

  $LocationCopyWith<$Res> get location;
}

/// @nodoc
class _$DatumCopyWithImpl<$Res, $Val extends Datum>
    implements $DatumCopyWith<$Res> {
  _$DatumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? nameUz = null,
    Object? nameRu = null,
    Object? descUz = null,
    Object? descRu = null,
    Object? telegramId = null,
    Object? backgroundImg = null,
    Object? phoneNumber = null,
    Object? addressUz = null,
    Object? addressRu = null,
    Object? location = null,
    Object? locationName = null,
    Object? logoImg = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      nameUz: null == nameUz
          ? _value.nameUz
          : nameUz // ignore: cast_nullable_to_non_nullable
              as String,
      nameRu: null == nameRu
          ? _value.nameRu
          : nameRu // ignore: cast_nullable_to_non_nullable
              as String,
      descUz: null == descUz
          ? _value.descUz
          : descUz // ignore: cast_nullable_to_non_nullable
              as String,
      descRu: null == descRu
          ? _value.descRu
          : descRu // ignore: cast_nullable_to_non_nullable
              as String,
      telegramId: null == telegramId
          ? _value.telegramId
          : telegramId // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundImg: null == backgroundImg
          ? _value.backgroundImg
          : backgroundImg // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      addressUz: null == addressUz
          ? _value.addressUz
          : addressUz // ignore: cast_nullable_to_non_nullable
              as String,
      addressRu: null == addressRu
          ? _value.addressRu
          : addressRu // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      locationName: null == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String,
      logoImg: null == logoImg
          ? _value.logoImg
          : logoImg // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res> get location {
    return $LocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DatumImplCopyWith<$Res> implements $DatumCopyWith<$Res> {
  factory _$$DatumImplCopyWith(
          _$DatumImpl value, $Res Function(_$DatumImpl) then) =
      __$$DatumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "created_at") DateTime createdAt,
      @JsonKey(name: "updated_at") DateTime updatedAt,
      @JsonKey(name: "name_uz") String nameUz,
      @JsonKey(name: "name_ru") String nameRu,
      @JsonKey(name: "desc_uz") String descUz,
      @JsonKey(name: "desc_ru") String descRu,
      @JsonKey(name: "telegram_id") String telegramId,
      @JsonKey(name: "background_img") String backgroundImg,
      @JsonKey(name: "phone_number") String phoneNumber,
      @JsonKey(name: "address_uz") String addressUz,
      @JsonKey(name: "address_ru") String addressRu,
      @JsonKey(name: "location") Location location,
      @JsonKey(name: "location_name") String locationName,
      @JsonKey(name: "logo_img") String logoImg,
      @JsonKey(name: "status") String status});

  @override
  $LocationCopyWith<$Res> get location;
}

/// @nodoc
class __$$DatumImplCopyWithImpl<$Res>
    extends _$DatumCopyWithImpl<$Res, _$DatumImpl>
    implements _$$DatumImplCopyWith<$Res> {
  __$$DatumImplCopyWithImpl(
      _$DatumImpl _value, $Res Function(_$DatumImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? nameUz = null,
    Object? nameRu = null,
    Object? descUz = null,
    Object? descRu = null,
    Object? telegramId = null,
    Object? backgroundImg = null,
    Object? phoneNumber = null,
    Object? addressUz = null,
    Object? addressRu = null,
    Object? location = null,
    Object? locationName = null,
    Object? logoImg = null,
    Object? status = null,
  }) {
    return _then(_$DatumImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      nameUz: null == nameUz
          ? _value.nameUz
          : nameUz // ignore: cast_nullable_to_non_nullable
              as String,
      nameRu: null == nameRu
          ? _value.nameRu
          : nameRu // ignore: cast_nullable_to_non_nullable
              as String,
      descUz: null == descUz
          ? _value.descUz
          : descUz // ignore: cast_nullable_to_non_nullable
              as String,
      descRu: null == descRu
          ? _value.descRu
          : descRu // ignore: cast_nullable_to_non_nullable
              as String,
      telegramId: null == telegramId
          ? _value.telegramId
          : telegramId // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundImg: null == backgroundImg
          ? _value.backgroundImg
          : backgroundImg // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      addressUz: null == addressUz
          ? _value.addressUz
          : addressUz // ignore: cast_nullable_to_non_nullable
              as String,
      addressRu: null == addressRu
          ? _value.addressRu
          : addressRu // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      locationName: null == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String,
      logoImg: null == logoImg
          ? _value.logoImg
          : logoImg // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DatumImpl implements _Datum {
  const _$DatumImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "created_at") required this.createdAt,
      @JsonKey(name: "updated_at") required this.updatedAt,
      @JsonKey(name: "name_uz") required this.nameUz,
      @JsonKey(name: "name_ru") required this.nameRu,
      @JsonKey(name: "desc_uz") required this.descUz,
      @JsonKey(name: "desc_ru") required this.descRu,
      @JsonKey(name: "telegram_id") required this.telegramId,
      @JsonKey(name: "background_img") required this.backgroundImg,
      @JsonKey(name: "phone_number") required this.phoneNumber,
      @JsonKey(name: "address_uz") required this.addressUz,
      @JsonKey(name: "address_ru") required this.addressRu,
      @JsonKey(name: "location") required this.location,
      @JsonKey(name: "location_name") required this.locationName,
      @JsonKey(name: "logo_img") required this.logoImg,
      @JsonKey(name: "status") required this.status});

  factory _$DatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatumImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "created_at")
  final DateTime createdAt;
  @override
  @JsonKey(name: "updated_at")
  final DateTime updatedAt;
  @override
  @JsonKey(name: "name_uz")
  final String nameUz;
  @override
  @JsonKey(name: "name_ru")
  final String nameRu;
  @override
  @JsonKey(name: "desc_uz")
  final String descUz;
  @override
  @JsonKey(name: "desc_ru")
  final String descRu;
  @override
  @JsonKey(name: "telegram_id")
  final String telegramId;
  @override
  @JsonKey(name: "background_img")
  final String backgroundImg;
  @override
  @JsonKey(name: "phone_number")
  final String phoneNumber;
  @override
  @JsonKey(name: "address_uz")
  final String addressUz;
  @override
  @JsonKey(name: "address_ru")
  final String addressRu;
  @override
  @JsonKey(name: "location")
  final Location location;
  @override
  @JsonKey(name: "location_name")
  final String locationName;
  @override
  @JsonKey(name: "logo_img")
  final String logoImg;
  @override
  @JsonKey(name: "status")
  final String status;

  @override
  String toString() {
    return 'Datum(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, nameUz: $nameUz, nameRu: $nameRu, descUz: $descUz, descRu: $descRu, telegramId: $telegramId, backgroundImg: $backgroundImg, phoneNumber: $phoneNumber, addressUz: $addressUz, addressRu: $addressRu, location: $location, locationName: $locationName, logoImg: $logoImg, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatumImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.nameUz, nameUz) || other.nameUz == nameUz) &&
            (identical(other.nameRu, nameRu) || other.nameRu == nameRu) &&
            (identical(other.descUz, descUz) || other.descUz == descUz) &&
            (identical(other.descRu, descRu) || other.descRu == descRu) &&
            (identical(other.telegramId, telegramId) ||
                other.telegramId == telegramId) &&
            (identical(other.backgroundImg, backgroundImg) ||
                other.backgroundImg == backgroundImg) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.addressUz, addressUz) ||
                other.addressUz == addressUz) &&
            (identical(other.addressRu, addressRu) ||
                other.addressRu == addressRu) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.locationName, locationName) ||
                other.locationName == locationName) &&
            (identical(other.logoImg, logoImg) || other.logoImg == logoImg) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      createdAt,
      updatedAt,
      nameUz,
      nameRu,
      descUz,
      descRu,
      telegramId,
      backgroundImg,
      phoneNumber,
      addressUz,
      addressRu,
      location,
      locationName,
      logoImg,
      status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      __$$DatumImplCopyWithImpl<_$DatumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DatumImplToJson(
      this,
    );
  }
}

abstract class _Datum implements Datum {
  const factory _Datum(
      {@JsonKey(name: "id") required final int id,
      @JsonKey(name: "created_at") required final DateTime createdAt,
      @JsonKey(name: "updated_at") required final DateTime updatedAt,
      @JsonKey(name: "name_uz") required final String nameUz,
      @JsonKey(name: "name_ru") required final String nameRu,
      @JsonKey(name: "desc_uz") required final String descUz,
      @JsonKey(name: "desc_ru") required final String descRu,
      @JsonKey(name: "telegram_id") required final String telegramId,
      @JsonKey(name: "background_img") required final String backgroundImg,
      @JsonKey(name: "phone_number") required final String phoneNumber,
      @JsonKey(name: "address_uz") required final String addressUz,
      @JsonKey(name: "address_ru") required final String addressRu,
      @JsonKey(name: "location") required final Location location,
      @JsonKey(name: "location_name") required final String locationName,
      @JsonKey(name: "logo_img") required final String logoImg,
      @JsonKey(name: "status") required final String status}) = _$DatumImpl;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$DatumImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "created_at")
  DateTime get createdAt;
  @override
  @JsonKey(name: "updated_at")
  DateTime get updatedAt;
  @override
  @JsonKey(name: "name_uz")
  String get nameUz;
  @override
  @JsonKey(name: "name_ru")
  String get nameRu;
  @override
  @JsonKey(name: "desc_uz")
  String get descUz;
  @override
  @JsonKey(name: "desc_ru")
  String get descRu;
  @override
  @JsonKey(name: "telegram_id")
  String get telegramId;
  @override
  @JsonKey(name: "background_img")
  String get backgroundImg;
  @override
  @JsonKey(name: "phone_number")
  String get phoneNumber;
  @override
  @JsonKey(name: "address_uz")
  String get addressUz;
  @override
  @JsonKey(name: "address_ru")
  String get addressRu;
  @override
  @JsonKey(name: "location")
  Location get location;
  @override
  @JsonKey(name: "location_name")
  String get locationName;
  @override
  @JsonKey(name: "logo_img")
  String get logoImg;
  @override
  @JsonKey(name: "status")
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Location _$LocationFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

/// @nodoc
mixin _$Location {
  @JsonKey(name: "lat")
  String get lat => throw _privateConstructorUsedError;
  @JsonKey(name: "long")
  String get long => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationCopyWith<Location> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res, Location>;
  @useResult
  $Res call(
      {@JsonKey(name: "lat") String lat, @JsonKey(name: "long") String long});
}

/// @nodoc
class _$LocationCopyWithImpl<$Res, $Val extends Location>
    implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? long = null,
  }) {
    return _then(_value.copyWith(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      long: null == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationImplCopyWith<$Res>
    implements $LocationCopyWith<$Res> {
  factory _$$LocationImplCopyWith(
          _$LocationImpl value, $Res Function(_$LocationImpl) then) =
      __$$LocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "lat") String lat, @JsonKey(name: "long") String long});
}

/// @nodoc
class __$$LocationImplCopyWithImpl<$Res>
    extends _$LocationCopyWithImpl<$Res, _$LocationImpl>
    implements _$$LocationImplCopyWith<$Res> {
  __$$LocationImplCopyWithImpl(
      _$LocationImpl _value, $Res Function(_$LocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? long = null,
  }) {
    return _then(_$LocationImpl(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      long: null == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationImpl implements _Location {
  const _$LocationImpl(
      {@JsonKey(name: "lat") required this.lat,
      @JsonKey(name: "long") required this.long});

  factory _$LocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationImplFromJson(json);

  @override
  @JsonKey(name: "lat")
  final String lat;
  @override
  @JsonKey(name: "long")
  final String long;

  @override
  String toString() {
    return 'Location(lat: $lat, long: $long)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.long, long) || other.long == long));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lat, long);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      __$$LocationImplCopyWithImpl<_$LocationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationImplToJson(
      this,
    );
  }
}

abstract class _Location implements Location {
  const factory _Location(
      {@JsonKey(name: "lat") required final String lat,
      @JsonKey(name: "long") required final String long}) = _$LocationImpl;

  factory _Location.fromJson(Map<String, dynamic> json) =
      _$LocationImpl.fromJson;

  @override
  @JsonKey(name: "lat")
  String get lat;
  @override
  @JsonKey(name: "long")
  String get long;
  @override
  @JsonKey(ignore: true)
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
