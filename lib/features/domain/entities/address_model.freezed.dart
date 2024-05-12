// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Address _$AddressFromJson(Map<String, dynamic> json) {
  return _Address.fromJson(json);
}

/// @nodoc
mixin _$Address {
  @JsonKey(name: "custom_name")
  String get customName => throw _privateConstructorUsedError;
  @JsonKey(name: "location")
  Location get location => throw _privateConstructorUsedError;
  @JsonKey(name: "location_name")
  String get locationName => throw _privateConstructorUsedError;
  @JsonKey(name: "floor")
  int get floor => throw _privateConstructorUsedError;
  @JsonKey(name: "home")
  int get home => throw _privateConstructorUsedError;
  @JsonKey(name: "room")
  int get room => throw _privateConstructorUsedError;
  @JsonKey(name: "entrance")
  int get entrance => throw _privateConstructorUsedError;
  @JsonKey(name: "desc")
  String get desc => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active")
  bool get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressCopyWith<Address> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) then) =
      _$AddressCopyWithImpl<$Res, Address>;
  @useResult
  $Res call(
      {@JsonKey(name: "custom_name") String customName,
      @JsonKey(name: "location") Location location,
      @JsonKey(name: "location_name") String locationName,
      @JsonKey(name: "floor") int floor,
      @JsonKey(name: "home") int home,
      @JsonKey(name: "room") int room,
      @JsonKey(name: "entrance") int entrance,
      @JsonKey(name: "desc") String desc,
      @JsonKey(name: "is_active") bool isActive});

  $LocationCopyWith<$Res> get location;
}

/// @nodoc
class _$AddressCopyWithImpl<$Res, $Val extends Address>
    implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customName = null,
    Object? location = null,
    Object? locationName = null,
    Object? floor = null,
    Object? home = null,
    Object? room = null,
    Object? entrance = null,
    Object? desc = null,
    Object? isActive = null,
  }) {
    return _then(_value.copyWith(
      customName: null == customName
          ? _value.customName
          : customName // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      locationName: null == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String,
      floor: null == floor
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as int,
      home: null == home
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as int,
      room: null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as int,
      entrance: null == entrance
          ? _value.entrance
          : entrance // ignore: cast_nullable_to_non_nullable
              as int,
      desc: null == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$$AddressImplCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$$AddressImplCopyWith(
          _$AddressImpl value, $Res Function(_$AddressImpl) then) =
      __$$AddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "custom_name") String customName,
      @JsonKey(name: "location") Location location,
      @JsonKey(name: "location_name") String locationName,
      @JsonKey(name: "floor") int floor,
      @JsonKey(name: "home") int home,
      @JsonKey(name: "room") int room,
      @JsonKey(name: "entrance") int entrance,
      @JsonKey(name: "desc") String desc,
      @JsonKey(name: "is_active") bool isActive});

  @override
  $LocationCopyWith<$Res> get location;
}

/// @nodoc
class __$$AddressImplCopyWithImpl<$Res>
    extends _$AddressCopyWithImpl<$Res, _$AddressImpl>
    implements _$$AddressImplCopyWith<$Res> {
  __$$AddressImplCopyWithImpl(
      _$AddressImpl _value, $Res Function(_$AddressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customName = null,
    Object? location = null,
    Object? locationName = null,
    Object? floor = null,
    Object? home = null,
    Object? room = null,
    Object? entrance = null,
    Object? desc = null,
    Object? isActive = null,
  }) {
    return _then(_$AddressImpl(
      customName: null == customName
          ? _value.customName
          : customName // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      locationName: null == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String,
      floor: null == floor
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as int,
      home: null == home
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as int,
      room: null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as int,
      entrance: null == entrance
          ? _value.entrance
          : entrance // ignore: cast_nullable_to_non_nullable
              as int,
      desc: null == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressImpl implements _Address {
  const _$AddressImpl(
      {@JsonKey(name: "custom_name") required this.customName,
      @JsonKey(name: "location") required this.location,
      @JsonKey(name: "location_name") required this.locationName,
      @JsonKey(name: "floor") required this.floor,
      @JsonKey(name: "home") required this.home,
      @JsonKey(name: "room") required this.room,
      @JsonKey(name: "entrance") required this.entrance,
      @JsonKey(name: "desc") required this.desc,
      @JsonKey(name: "is_active") required this.isActive});

  factory _$AddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressImplFromJson(json);

  @override
  @JsonKey(name: "custom_name")
  final String customName;
  @override
  @JsonKey(name: "location")
  final Location location;
  @override
  @JsonKey(name: "location_name")
  final String locationName;
  @override
  @JsonKey(name: "floor")
  final int floor;
  @override
  @JsonKey(name: "home")
  final int home;
  @override
  @JsonKey(name: "room")
  final int room;
  @override
  @JsonKey(name: "entrance")
  final int entrance;
  @override
  @JsonKey(name: "desc")
  final String desc;
  @override
  @JsonKey(name: "is_active")
  final bool isActive;

  @override
  String toString() {
    return 'Address(customName: $customName, location: $location, locationName: $locationName, floor: $floor, home: $home, room: $room, entrance: $entrance, desc: $desc, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressImpl &&
            (identical(other.customName, customName) ||
                other.customName == customName) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.locationName, locationName) ||
                other.locationName == locationName) &&
            (identical(other.floor, floor) || other.floor == floor) &&
            (identical(other.home, home) || other.home == home) &&
            (identical(other.room, room) || other.room == room) &&
            (identical(other.entrance, entrance) ||
                other.entrance == entrance) &&
            (identical(other.desc, desc) || other.desc == desc) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, customName, location,
      locationName, floor, home, room, entrance, desc, isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      __$$AddressImplCopyWithImpl<_$AddressImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressImplToJson(
      this,
    );
  }
}

abstract class _Address implements Address {
  const factory _Address(
          {@JsonKey(name: "custom_name") required final String customName,
          @JsonKey(name: "location") required final Location location,
          @JsonKey(name: "location_name") required final String locationName,
          @JsonKey(name: "floor") required final int floor,
          @JsonKey(name: "home") required final int home,
          @JsonKey(name: "room") required final int room,
          @JsonKey(name: "entrance") required final int entrance,
          @JsonKey(name: "desc") required final String desc,
          @JsonKey(name: "is_active") required final bool isActive}) =
      _$AddressImpl;

  factory _Address.fromJson(Map<String, dynamic> json) = _$AddressImpl.fromJson;

  @override
  @JsonKey(name: "custom_name")
  String get customName;
  @override
  @JsonKey(name: "location")
  Location get location;
  @override
  @JsonKey(name: "location_name")
  String get locationName;
  @override
  @JsonKey(name: "floor")
  int get floor;
  @override
  @JsonKey(name: "home")
  int get home;
  @override
  @JsonKey(name: "room")
  int get room;
  @override
  @JsonKey(name: "entrance")
  int get entrance;
  @override
  @JsonKey(name: "desc")
  String get desc;
  @override
  @JsonKey(name: "is_active")
  bool get isActive;
  @override
  @JsonKey(ignore: true)
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
