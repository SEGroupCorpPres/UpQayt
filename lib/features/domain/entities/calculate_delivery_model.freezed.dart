// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calculate_delivery_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CalculateDelivery _$CalculateDeliveryFromJson(Map<String, dynamic> json) {
  return _CalculateDelivery.fromJson(json);
}

/// @nodoc
mixin _$CalculateDelivery {
  @JsonKey(name: "vendor_id")
  int get vendorId => throw _privateConstructorUsedError;
  @JsonKey(name: "client_address_id")
  int get clientAddressId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CalculateDeliveryCopyWith<CalculateDelivery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalculateDeliveryCopyWith<$Res> {
  factory $CalculateDeliveryCopyWith(
          CalculateDelivery value, $Res Function(CalculateDelivery) then) =
      _$CalculateDeliveryCopyWithImpl<$Res, CalculateDelivery>;
  @useResult
  $Res call(
      {@JsonKey(name: "vendor_id") int vendorId,
      @JsonKey(name: "client_address_id") int clientAddressId});
}

/// @nodoc
class _$CalculateDeliveryCopyWithImpl<$Res, $Val extends CalculateDelivery>
    implements $CalculateDeliveryCopyWith<$Res> {
  _$CalculateDeliveryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vendorId = null,
    Object? clientAddressId = null,
  }) {
    return _then(_value.copyWith(
      vendorId: null == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as int,
      clientAddressId: null == clientAddressId
          ? _value.clientAddressId
          : clientAddressId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CalculateDeliveryImplCopyWith<$Res>
    implements $CalculateDeliveryCopyWith<$Res> {
  factory _$$CalculateDeliveryImplCopyWith(_$CalculateDeliveryImpl value,
          $Res Function(_$CalculateDeliveryImpl) then) =
      __$$CalculateDeliveryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "vendor_id") int vendorId,
      @JsonKey(name: "client_address_id") int clientAddressId});
}

/// @nodoc
class __$$CalculateDeliveryImplCopyWithImpl<$Res>
    extends _$CalculateDeliveryCopyWithImpl<$Res, _$CalculateDeliveryImpl>
    implements _$$CalculateDeliveryImplCopyWith<$Res> {
  __$$CalculateDeliveryImplCopyWithImpl(_$CalculateDeliveryImpl _value,
      $Res Function(_$CalculateDeliveryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vendorId = null,
    Object? clientAddressId = null,
  }) {
    return _then(_$CalculateDeliveryImpl(
      vendorId: null == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as int,
      clientAddressId: null == clientAddressId
          ? _value.clientAddressId
          : clientAddressId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CalculateDeliveryImpl implements _CalculateDelivery {
  const _$CalculateDeliveryImpl(
      {@JsonKey(name: "vendor_id") required this.vendorId,
      @JsonKey(name: "client_address_id") required this.clientAddressId});

  factory _$CalculateDeliveryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CalculateDeliveryImplFromJson(json);

  @override
  @JsonKey(name: "vendor_id")
  final int vendorId;
  @override
  @JsonKey(name: "client_address_id")
  final int clientAddressId;

  @override
  String toString() {
    return 'CalculateDelivery(vendorId: $vendorId, clientAddressId: $clientAddressId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalculateDeliveryImpl &&
            (identical(other.vendorId, vendorId) ||
                other.vendorId == vendorId) &&
            (identical(other.clientAddressId, clientAddressId) ||
                other.clientAddressId == clientAddressId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, vendorId, clientAddressId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CalculateDeliveryImplCopyWith<_$CalculateDeliveryImpl> get copyWith =>
      __$$CalculateDeliveryImplCopyWithImpl<_$CalculateDeliveryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CalculateDeliveryImplToJson(
      this,
    );
  }
}

abstract class _CalculateDelivery implements CalculateDelivery {
  const factory _CalculateDelivery(
      {@JsonKey(name: "vendor_id") required final int vendorId,
      @JsonKey(name: "client_address_id")
      required final int clientAddressId}) = _$CalculateDeliveryImpl;

  factory _CalculateDelivery.fromJson(Map<String, dynamic> json) =
      _$CalculateDeliveryImpl.fromJson;

  @override
  @JsonKey(name: "vendor_id")
  int get vendorId;
  @override
  @JsonKey(name: "client_address_id")
  int get clientAddressId;
  @override
  @JsonKey(ignore: true)
  _$$CalculateDeliveryImplCopyWith<_$CalculateDeliveryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
