// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reject_client_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RejectClient _$RejectClientFromJson(Map<String, dynamic> json) {
  return _RejectClient.fromJson(json);
}

/// @nodoc
mixin _$RejectClient {
  @JsonKey(name: "order_id")
  int get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: "rejection_reason")
  String get rejectionReason => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RejectClientCopyWith<RejectClient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RejectClientCopyWith<$Res> {
  factory $RejectClientCopyWith(
          RejectClient value, $Res Function(RejectClient) then) =
      _$RejectClientCopyWithImpl<$Res, RejectClient>;
  @useResult
  $Res call(
      {@JsonKey(name: "order_id") int orderId,
      @JsonKey(name: "rejection_reason") String rejectionReason});
}

/// @nodoc
class _$RejectClientCopyWithImpl<$Res, $Val extends RejectClient>
    implements $RejectClientCopyWith<$Res> {
  _$RejectClientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? rejectionReason = null,
  }) {
    return _then(_value.copyWith(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      rejectionReason: null == rejectionReason
          ? _value.rejectionReason
          : rejectionReason // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RejectClientImplCopyWith<$Res>
    implements $RejectClientCopyWith<$Res> {
  factory _$$RejectClientImplCopyWith(
          _$RejectClientImpl value, $Res Function(_$RejectClientImpl) then) =
      __$$RejectClientImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "order_id") int orderId,
      @JsonKey(name: "rejection_reason") String rejectionReason});
}

/// @nodoc
class __$$RejectClientImplCopyWithImpl<$Res>
    extends _$RejectClientCopyWithImpl<$Res, _$RejectClientImpl>
    implements _$$RejectClientImplCopyWith<$Res> {
  __$$RejectClientImplCopyWithImpl(
      _$RejectClientImpl _value, $Res Function(_$RejectClientImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? rejectionReason = null,
  }) {
    return _then(_$RejectClientImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      rejectionReason: null == rejectionReason
          ? _value.rejectionReason
          : rejectionReason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RejectClientImpl implements _RejectClient {
  const _$RejectClientImpl(
      {@JsonKey(name: "order_id") required this.orderId,
      @JsonKey(name: "rejection_reason") required this.rejectionReason});

  factory _$RejectClientImpl.fromJson(Map<String, dynamic> json) =>
      _$$RejectClientImplFromJson(json);

  @override
  @JsonKey(name: "order_id")
  final int orderId;
  @override
  @JsonKey(name: "rejection_reason")
  final String rejectionReason;

  @override
  String toString() {
    return 'RejectClient(orderId: $orderId, rejectionReason: $rejectionReason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RejectClientImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.rejectionReason, rejectionReason) ||
                other.rejectionReason == rejectionReason));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, orderId, rejectionReason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RejectClientImplCopyWith<_$RejectClientImpl> get copyWith =>
      __$$RejectClientImplCopyWithImpl<_$RejectClientImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RejectClientImplToJson(
      this,
    );
  }
}

abstract class _RejectClient implements RejectClient {
  const factory _RejectClient(
      {@JsonKey(name: "order_id") required final int orderId,
      @JsonKey(name: "rejection_reason")
      required final String rejectionReason}) = _$RejectClientImpl;

  factory _RejectClient.fromJson(Map<String, dynamic> json) =
      _$RejectClientImpl.fromJson;

  @override
  @JsonKey(name: "order_id")
  int get orderId;
  @override
  @JsonKey(name: "rejection_reason")
  String get rejectionReason;
  @override
  @JsonKey(ignore: true)
  _$$RejectClientImplCopyWith<_$RejectClientImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
