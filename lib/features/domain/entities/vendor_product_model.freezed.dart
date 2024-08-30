// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vendor_product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VendorProduct _$VendorProductFromJson(Map<String, dynamic> json) {
  return _VendorProduct.fromJson(json);
}

/// @nodoc
mixin _$VendorProduct {
  @JsonKey(name: "success")
  bool get success => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  Data get data => throw _privateConstructorUsedError;
  @JsonKey(name: "error")
  dynamic get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VendorProductCopyWith<VendorProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendorProductCopyWith<$Res> {
  factory $VendorProductCopyWith(
          VendorProduct value, $Res Function(VendorProduct) then) =
      _$VendorProductCopyWithImpl<$Res, VendorProduct>;
  @useResult
  $Res call(
      {@JsonKey(name: "success") bool success,
      @JsonKey(name: "data") Data data,
      @JsonKey(name: "error") dynamic error});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$VendorProductCopyWithImpl<$Res, $Val extends VendorProduct>
    implements $VendorProductCopyWith<$Res> {
  _$VendorProductCopyWithImpl(this._value, this._then);

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
abstract class _$$VendorProductImplCopyWith<$Res>
    implements $VendorProductCopyWith<$Res> {
  factory _$$VendorProductImplCopyWith(
          _$VendorProductImpl value, $Res Function(_$VendorProductImpl) then) =
      __$$VendorProductImplCopyWithImpl<$Res>;
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
class __$$VendorProductImplCopyWithImpl<$Res>
    extends _$VendorProductCopyWithImpl<$Res, _$VendorProductImpl>
    implements _$$VendorProductImplCopyWith<$Res> {
  __$$VendorProductImplCopyWithImpl(
      _$VendorProductImpl _value, $Res Function(_$VendorProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
    Object? error = freezed,
  }) {
    return _then(_$VendorProductImpl(
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
class _$VendorProductImpl implements _VendorProduct {
  const _$VendorProductImpl(
      {@JsonKey(name: "success") required this.success,
      @JsonKey(name: "data") required this.data,
      @JsonKey(name: "error") required this.error});

  factory _$VendorProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$VendorProductImplFromJson(json);

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
    return 'VendorProduct(success: $success, data: $data, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VendorProductImpl &&
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
  _$$VendorProductImplCopyWith<_$VendorProductImpl> get copyWith =>
      __$$VendorProductImplCopyWithImpl<_$VendorProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VendorProductImplToJson(
      this,
    );
  }
}

abstract class _VendorProduct implements VendorProduct {
  const factory _VendorProduct(
          {@JsonKey(name: "success") required final bool success,
          @JsonKey(name: "data") required final Data data,
          @JsonKey(name: "error") required final dynamic error}) =
      _$VendorProductImpl;

  factory _VendorProduct.fromJson(Map<String, dynamic> json) =
      _$VendorProductImpl.fromJson;

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
  _$$VendorProductImplCopyWith<_$VendorProductImpl> get copyWith =>
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
  @JsonKey(name: "img_url")
  String get imgUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  int get price => throw _privateConstructorUsedError;
  @JsonKey(name: "discount")
  int get discount => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: "vendor")
  Vendor get vendor => throw _privateConstructorUsedError;
  @JsonKey(name: "category")
  ProductCategory get category => throw _privateConstructorUsedError;

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
      @JsonKey(name: "img_url") String imgUrl,
      @JsonKey(name: "price") int price,
      @JsonKey(name: "discount") int discount,
      @JsonKey(name: "status") String status,
      @JsonKey(name: "vendor") Vendor vendor,
      @JsonKey(name: "category") ProductCategory category});

  $VendorCopyWith<$Res> get vendor;
  $ProductCategoryCopyWith<$Res> get category;
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
    Object? imgUrl = null,
    Object? price = null,
    Object? discount = null,
    Object? status = null,
    Object? vendor = null,
    Object? category = null,
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
      imgUrl: null == imgUrl
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      vendor: null == vendor
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as Vendor,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ProductCategory,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VendorCopyWith<$Res> get vendor {
    return $VendorCopyWith<$Res>(_value.vendor, (value) {
      return _then(_value.copyWith(vendor: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCategoryCopyWith<$Res> get category {
    return $ProductCategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value) as $Val);
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
      @JsonKey(name: "img_url") String imgUrl,
      @JsonKey(name: "price") int price,
      @JsonKey(name: "discount") int discount,
      @JsonKey(name: "status") String status,
      @JsonKey(name: "vendor") Vendor vendor,
      @JsonKey(name: "category") ProductCategory category});

  @override
  $VendorCopyWith<$Res> get vendor;
  @override
  $ProductCategoryCopyWith<$Res> get category;
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
    Object? imgUrl = null,
    Object? price = null,
    Object? discount = null,
    Object? status = null,
    Object? vendor = null,
    Object? category = null,
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
      imgUrl: null == imgUrl
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      vendor: null == vendor
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as Vendor,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ProductCategory,
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
      @JsonKey(name: "img_url") required this.imgUrl,
      @JsonKey(name: "price") required this.price,
      @JsonKey(name: "discount") required this.discount,
      @JsonKey(name: "status") required this.status,
      @JsonKey(name: "vendor") required this.vendor,
      @JsonKey(name: "category") required this.category});

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
  @JsonKey(name: "img_url")
  final String imgUrl;
  @override
  @JsonKey(name: "price")
  final int price;
  @override
  @JsonKey(name: "discount")
  final int discount;
  @override
  @JsonKey(name: "status")
  final String status;
  @override
  @JsonKey(name: "vendor")
  final Vendor vendor;
  @override
  @JsonKey(name: "category")
  final ProductCategory category;

  @override
  String toString() {
    return 'Datum(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, nameUz: $nameUz, nameRu: $nameRu, imgUrl: $imgUrl, price: $price, discount: $discount, status: $status, vendor: $vendor, category: $category)';
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
            (identical(other.imgUrl, imgUrl) || other.imgUrl == imgUrl) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.vendor, vendor) || other.vendor == vendor) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, createdAt, updatedAt, nameUz,
      nameRu, imgUrl, price, discount, status, vendor, category);

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
          @JsonKey(name: "img_url") required final String imgUrl,
          @JsonKey(name: "price") required final int price,
          @JsonKey(name: "discount") required final int discount,
          @JsonKey(name: "status") required final String status,
          @JsonKey(name: "vendor") required final Vendor vendor,
          @JsonKey(name: "category") required final ProductCategory category}) =
      _$DatumImpl;

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
  @JsonKey(name: "img_url")
  String get imgUrl;
  @override
  @JsonKey(name: "price")
  int get price;
  @override
  @JsonKey(name: "discount")
  int get discount;
  @override
  @JsonKey(name: "status")
  String get status;
  @override
  @JsonKey(name: "vendor")
  Vendor get vendor;
  @override
  @JsonKey(name: "category")
  ProductCategory get category;
  @override
  @JsonKey(ignore: true)
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
