// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_verify_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OtpVerification _$OtpVerificationFromJson(Map<String, dynamic> json) {
  return _OtpVerification.fromJson(json);
}

/// @nodoc
mixin _$OtpVerification {
  @JsonKey(name: "phone_number")
  String get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "otp")
  String get otp => throw _privateConstructorUsedError;
  @JsonKey(name: "session_id")
  int get sessionId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OtpVerificationCopyWith<OtpVerification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpVerificationCopyWith<$Res> {
  factory $OtpVerificationCopyWith(
          OtpVerification value, $Res Function(OtpVerification) then) =
      _$OtpVerificationCopyWithImpl<$Res, OtpVerification>;
  @useResult
  $Res call(
      {@JsonKey(name: "phone_number") String phoneNumber,
      @JsonKey(name: "otp") String otp,
      @JsonKey(name: "session_id") int sessionId});
}

/// @nodoc
class _$OtpVerificationCopyWithImpl<$Res, $Val extends OtpVerification>
    implements $OtpVerificationCopyWith<$Res> {
  _$OtpVerificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? otp = null,
    Object? sessionId = null,
  }) {
    return _then(_value.copyWith(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      sessionId: null == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OtpVerificationImplCopyWith<$Res>
    implements $OtpVerificationCopyWith<$Res> {
  factory _$$OtpVerificationImplCopyWith(_$OtpVerificationImpl value,
          $Res Function(_$OtpVerificationImpl) then) =
      __$$OtpVerificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "phone_number") String phoneNumber,
      @JsonKey(name: "otp") String otp,
      @JsonKey(name: "session_id") int sessionId});
}

/// @nodoc
class __$$OtpVerificationImplCopyWithImpl<$Res>
    extends _$OtpVerificationCopyWithImpl<$Res, _$OtpVerificationImpl>
    implements _$$OtpVerificationImplCopyWith<$Res> {
  __$$OtpVerificationImplCopyWithImpl(
      _$OtpVerificationImpl _value, $Res Function(_$OtpVerificationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? otp = null,
    Object? sessionId = null,
  }) {
    return _then(_$OtpVerificationImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      sessionId: null == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OtpVerificationImpl implements _OtpVerification {
  const _$OtpVerificationImpl(
      {@JsonKey(name: "phone_number") required this.phoneNumber,
      @JsonKey(name: "otp") required this.otp,
      @JsonKey(name: "session_id") required this.sessionId});

  factory _$OtpVerificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$OtpVerificationImplFromJson(json);

  @override
  @JsonKey(name: "phone_number")
  final String phoneNumber;
  @override
  @JsonKey(name: "otp")
  final String otp;
  @override
  @JsonKey(name: "session_id")
  final int sessionId;

  @override
  String toString() {
    return 'OtpVerification(phoneNumber: $phoneNumber, otp: $otp, sessionId: $sessionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpVerificationImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, otp, sessionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpVerificationImplCopyWith<_$OtpVerificationImpl> get copyWith =>
      __$$OtpVerificationImplCopyWithImpl<_$OtpVerificationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OtpVerificationImplToJson(
      this,
    );
  }
}

abstract class _OtpVerification implements OtpVerification {
  const factory _OtpVerification(
          {@JsonKey(name: "phone_number") required final String phoneNumber,
          @JsonKey(name: "otp") required final String otp,
          @JsonKey(name: "session_id") required final int sessionId}) =
      _$OtpVerificationImpl;

  factory _OtpVerification.fromJson(Map<String, dynamic> json) =
      _$OtpVerificationImpl.fromJson;

  @override
  @JsonKey(name: "phone_number")
  String get phoneNumber;
  @override
  @JsonKey(name: "otp")
  String get otp;
  @override
  @JsonKey(name: "session_id")
  int get sessionId;
  @override
  @JsonKey(ignore: true)
  _$$OtpVerificationImplCopyWith<_$OtpVerificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
