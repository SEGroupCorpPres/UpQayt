// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calculate_product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CalculateProduct _$CalculateProductFromJson(Map<String, dynamic> json) {
  return _CalculateProduct.fromJson(json);
}

/// @nodoc
mixin _$CalculateProduct {
  @JsonKey(name: "order_details")
  List<OrderDetail> get orderDetails => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CalculateProductCopyWith<CalculateProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalculateProductCopyWith<$Res> {
  factory $CalculateProductCopyWith(
          CalculateProduct value, $Res Function(CalculateProduct) then) =
      _$CalculateProductCopyWithImpl<$Res, CalculateProduct>;
  @useResult
  $Res call({@JsonKey(name: "order_details") List<OrderDetail> orderDetails});
}

/// @nodoc
class _$CalculateProductCopyWithImpl<$Res, $Val extends CalculateProduct>
    implements $CalculateProductCopyWith<$Res> {
  _$CalculateProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderDetails = null,
  }) {
    return _then(_value.copyWith(
      orderDetails: null == orderDetails
          ? _value.orderDetails
          : orderDetails // ignore: cast_nullable_to_non_nullable
              as List<OrderDetail>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CalculateProductImplCopyWith<$Res>
    implements $CalculateProductCopyWith<$Res> {
  factory _$$CalculateProductImplCopyWith(_$CalculateProductImpl value,
          $Res Function(_$CalculateProductImpl) then) =
      __$$CalculateProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "order_details") List<OrderDetail> orderDetails});
}

/// @nodoc
class __$$CalculateProductImplCopyWithImpl<$Res>
    extends _$CalculateProductCopyWithImpl<$Res, _$CalculateProductImpl>
    implements _$$CalculateProductImplCopyWith<$Res> {
  __$$CalculateProductImplCopyWithImpl(_$CalculateProductImpl _value,
      $Res Function(_$CalculateProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderDetails = null,
  }) {
    return _then(_$CalculateProductImpl(
      orderDetails: null == orderDetails
          ? _value._orderDetails
          : orderDetails // ignore: cast_nullable_to_non_nullable
              as List<OrderDetail>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CalculateProductImpl implements _CalculateProduct {
  const _$CalculateProductImpl(
      {@JsonKey(name: "order_details")
      required final List<OrderDetail> orderDetails})
      : _orderDetails = orderDetails;

  factory _$CalculateProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$CalculateProductImplFromJson(json);

  final List<OrderDetail> _orderDetails;
  @override
  @JsonKey(name: "order_details")
  List<OrderDetail> get orderDetails {
    if (_orderDetails is EqualUnmodifiableListView) return _orderDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderDetails);
  }

  @override
  String toString() {
    return 'CalculateProduct(orderDetails: $orderDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalculateProductImpl &&
            const DeepCollectionEquality()
                .equals(other._orderDetails, _orderDetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_orderDetails));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CalculateProductImplCopyWith<_$CalculateProductImpl> get copyWith =>
      __$$CalculateProductImplCopyWithImpl<_$CalculateProductImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CalculateProductImplToJson(
      this,
    );
  }
}

abstract class _CalculateProduct implements CalculateProduct {
  const factory _CalculateProduct(
      {@JsonKey(name: "order_details")
      required final List<OrderDetail> orderDetails}) = _$CalculateProductImpl;

  factory _CalculateProduct.fromJson(Map<String, dynamic> json) =
      _$CalculateProductImpl.fromJson;

  @override
  @JsonKey(name: "order_details")
  List<OrderDetail> get orderDetails;
  @override
  @JsonKey(ignore: true)
  _$$CalculateProductImplCopyWith<_$CalculateProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderDetail _$OrderDetailFromJson(Map<String, dynamic> json) {
  return _OrderDetail.fromJson(json);
}

/// @nodoc
mixin _$OrderDetail {
  @JsonKey(name: "product_id")
  int get productId => throw _privateConstructorUsedError;
  @JsonKey(name: "count")
  int get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderDetailCopyWith<OrderDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDetailCopyWith<$Res> {
  factory $OrderDetailCopyWith(
          OrderDetail value, $Res Function(OrderDetail) then) =
      _$OrderDetailCopyWithImpl<$Res, OrderDetail>;
  @useResult
  $Res call(
      {@JsonKey(name: "product_id") int productId,
      @JsonKey(name: "count") int count});
}

/// @nodoc
class _$OrderDetailCopyWithImpl<$Res, $Val extends OrderDetail>
    implements $OrderDetailCopyWith<$Res> {
  _$OrderDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderDetailImplCopyWith<$Res>
    implements $OrderDetailCopyWith<$Res> {
  factory _$$OrderDetailImplCopyWith(
          _$OrderDetailImpl value, $Res Function(_$OrderDetailImpl) then) =
      __$$OrderDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "product_id") int productId,
      @JsonKey(name: "count") int count});
}

/// @nodoc
class __$$OrderDetailImplCopyWithImpl<$Res>
    extends _$OrderDetailCopyWithImpl<$Res, _$OrderDetailImpl>
    implements _$$OrderDetailImplCopyWith<$Res> {
  __$$OrderDetailImplCopyWithImpl(
      _$OrderDetailImpl _value, $Res Function(_$OrderDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? count = null,
  }) {
    return _then(_$OrderDetailImpl(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderDetailImpl implements _OrderDetail {
  const _$OrderDetailImpl(
      {@JsonKey(name: "product_id") required this.productId,
      @JsonKey(name: "count") required this.count});

  factory _$OrderDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderDetailImplFromJson(json);

  @override
  @JsonKey(name: "product_id")
  final int productId;
  @override
  @JsonKey(name: "count")
  final int count;

  @override
  String toString() {
    return 'OrderDetail(productId: $productId, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderDetailImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, productId, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderDetailImplCopyWith<_$OrderDetailImpl> get copyWith =>
      __$$OrderDetailImplCopyWithImpl<_$OrderDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderDetailImplToJson(
      this,
    );
  }
}

abstract class _OrderDetail implements OrderDetail {
  const factory _OrderDetail(
      {@JsonKey(name: "product_id") required final int productId,
      @JsonKey(name: "count") required final int count}) = _$OrderDetailImpl;

  factory _OrderDetail.fromJson(Map<String, dynamic> json) =
      _$OrderDetailImpl.fromJson;

  @override
  @JsonKey(name: "product_id")
  int get productId;
  @override
  @JsonKey(name: "count")
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$OrderDetailImplCopyWith<_$OrderDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
