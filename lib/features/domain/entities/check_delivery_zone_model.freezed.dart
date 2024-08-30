// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_delivery_zone_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CheckDeliveryZone _$CheckDeliveryZoneFromJson(Map<String, dynamic> json) {
  return _CheckDeliveryZone.fromJson(json);
}

/// @nodoc
mixin _$CheckDeliveryZone {
  @JsonKey(name: "client_address_id")
  int get clientAddressId => throw _privateConstructorUsedError;
  @JsonKey(name: "vendor_id")
  int get vendorId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckDeliveryZoneCopyWith<CheckDeliveryZone> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckDeliveryZoneCopyWith<$Res> {
  factory $CheckDeliveryZoneCopyWith(
          CheckDeliveryZone value, $Res Function(CheckDeliveryZone) then) =
      _$CheckDeliveryZoneCopyWithImpl<$Res, CheckDeliveryZone>;
  @useResult
  $Res call(
      {@JsonKey(name: "client_address_id") int clientAddressId,
      @JsonKey(name: "vendor_id") int vendorId});
}

/// @nodoc
class _$CheckDeliveryZoneCopyWithImpl<$Res, $Val extends CheckDeliveryZone>
    implements $CheckDeliveryZoneCopyWith<$Res> {
  _$CheckDeliveryZoneCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientAddressId = null,
    Object? vendorId = null,
  }) {
    return _then(_value.copyWith(
      clientAddressId: null == clientAddressId
          ? _value.clientAddressId
          : clientAddressId // ignore: cast_nullable_to_non_nullable
              as int,
      vendorId: null == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckDeliveryZoneImplCopyWith<$Res>
    implements $CheckDeliveryZoneCopyWith<$Res> {
  factory _$$CheckDeliveryZoneImplCopyWith(_$CheckDeliveryZoneImpl value,
          $Res Function(_$CheckDeliveryZoneImpl) then) =
      __$$CheckDeliveryZoneImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "client_address_id") int clientAddressId,
      @JsonKey(name: "vendor_id") int vendorId});
}

/// @nodoc
class __$$CheckDeliveryZoneImplCopyWithImpl<$Res>
    extends _$CheckDeliveryZoneCopyWithImpl<$Res, _$CheckDeliveryZoneImpl>
    implements _$$CheckDeliveryZoneImplCopyWith<$Res> {
  __$$CheckDeliveryZoneImplCopyWithImpl(_$CheckDeliveryZoneImpl _value,
      $Res Function(_$CheckDeliveryZoneImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientAddressId = null,
    Object? vendorId = null,
  }) {
    return _then(_$CheckDeliveryZoneImpl(
      clientAddressId: null == clientAddressId
          ? _value.clientAddressId
          : clientAddressId // ignore: cast_nullable_to_non_nullable
              as int,
      vendorId: null == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckDeliveryZoneImpl implements _CheckDeliveryZone {
  const _$CheckDeliveryZoneImpl(
      {@JsonKey(name: "client_address_id") required this.clientAddressId,
      @JsonKey(name: "vendor_id") required this.vendorId});

  factory _$CheckDeliveryZoneImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckDeliveryZoneImplFromJson(json);

  @override
  @JsonKey(name: "client_address_id")
  final int clientAddressId;
  @override
  @JsonKey(name: "vendor_id")
  final int vendorId;

  @override
  String toString() {
    return 'CheckDeliveryZone(clientAddressId: $clientAddressId, vendorId: $vendorId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckDeliveryZoneImpl &&
            (identical(other.clientAddressId, clientAddressId) ||
                other.clientAddressId == clientAddressId) &&
            (identical(other.vendorId, vendorId) ||
                other.vendorId == vendorId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, clientAddressId, vendorId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckDeliveryZoneImplCopyWith<_$CheckDeliveryZoneImpl> get copyWith =>
      __$$CheckDeliveryZoneImplCopyWithImpl<_$CheckDeliveryZoneImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckDeliveryZoneImplToJson(
      this,
    );
  }
}

abstract class _CheckDeliveryZone implements CheckDeliveryZone {
  const factory _CheckDeliveryZone(
      {@JsonKey(name: "client_address_id") required final int clientAddressId,
      @JsonKey(name: "vendor_id")
      required final int vendorId}) = _$CheckDeliveryZoneImpl;

  factory _CheckDeliveryZone.fromJson(Map<String, dynamic> json) =
      _$CheckDeliveryZoneImpl.fromJson;

  @override
  @JsonKey(name: "client_address_id")
  int get clientAddressId;
  @override
  @JsonKey(name: "vendor_id")
  int get vendorId;
  @override
  @JsonKey(ignore: true)
  _$$CheckDeliveryZoneImplCopyWith<_$CheckDeliveryZoneImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
