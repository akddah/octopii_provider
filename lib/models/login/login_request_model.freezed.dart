// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GenericLoginRequestModel {
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'country_id', defaultValue: 1)
  int? get countryId => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get otp => throw _privateConstructorUsedError;
  @JsonKey(name: 'device_type', includeIfNull: false)
  String? get deviceType => throw _privateConstructorUsedError;
  @JsonKey(name: 'fcm_token', includeIfNull: false)
  String? get fcmToken => throw _privateConstructorUsedError;

  /// Serializes this GenericLoginRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GenericLoginRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GenericLoginRequestModelCopyWith<GenericLoginRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenericLoginRequestModelCopyWith<$Res> {
  factory $GenericLoginRequestModelCopyWith(GenericLoginRequestModel value,
          $Res Function(GenericLoginRequestModel) then) =
      _$GenericLoginRequestModelCopyWithImpl<$Res, GenericLoginRequestModel>;
  @useResult
  $Res call(
      {String phone,
      @JsonKey(name: 'country_id', defaultValue: 1) int? countryId,
      String? password,
      String? otp,
      @JsonKey(name: 'device_type', includeIfNull: false) String? deviceType,
      @JsonKey(name: 'fcm_token', includeIfNull: false) String? fcmToken});
}

/// @nodoc
class _$GenericLoginRequestModelCopyWithImpl<$Res,
        $Val extends GenericLoginRequestModel>
    implements $GenericLoginRequestModelCopyWith<$Res> {
  _$GenericLoginRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GenericLoginRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? countryId = freezed,
    Object? password = freezed,
    Object? otp = freezed,
    Object? deviceType = freezed,
    Object? fcmToken = freezed,
  }) {
    return _then(_value.copyWith(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      countryId: freezed == countryId
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as int?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceType: freezed == deviceType
          ? _value.deviceType
          : deviceType // ignore: cast_nullable_to_non_nullable
              as String?,
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GenericLoginRequestModelImplCopyWith<$Res>
    implements $GenericLoginRequestModelCopyWith<$Res> {
  factory _$$GenericLoginRequestModelImplCopyWith(
          _$GenericLoginRequestModelImpl value,
          $Res Function(_$GenericLoginRequestModelImpl) then) =
      __$$GenericLoginRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String phone,
      @JsonKey(name: 'country_id', defaultValue: 1) int? countryId,
      String? password,
      String? otp,
      @JsonKey(name: 'device_type', includeIfNull: false) String? deviceType,
      @JsonKey(name: 'fcm_token', includeIfNull: false) String? fcmToken});
}

/// @nodoc
class __$$GenericLoginRequestModelImplCopyWithImpl<$Res>
    extends _$GenericLoginRequestModelCopyWithImpl<$Res,
        _$GenericLoginRequestModelImpl>
    implements _$$GenericLoginRequestModelImplCopyWith<$Res> {
  __$$GenericLoginRequestModelImplCopyWithImpl(
      _$GenericLoginRequestModelImpl _value,
      $Res Function(_$GenericLoginRequestModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of GenericLoginRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? countryId = freezed,
    Object? password = freezed,
    Object? otp = freezed,
    Object? deviceType = freezed,
    Object? fcmToken = freezed,
  }) {
    return _then(_$GenericLoginRequestModelImpl(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      countryId: freezed == countryId
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as int?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceType: freezed == deviceType
          ? _value.deviceType
          : deviceType // ignore: cast_nullable_to_non_nullable
              as String?,
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$GenericLoginRequestModelImpl implements _GenericLoginRequestModel {
  const _$GenericLoginRequestModelImpl(
      {required this.phone,
      @JsonKey(name: 'country_id', defaultValue: 1) this.countryId,
      required this.password,
      required this.otp,
      @JsonKey(name: 'device_type', includeIfNull: false) this.deviceType,
      @JsonKey(name: 'fcm_token', includeIfNull: false) this.fcmToken});

  @override
  final String phone;
  @override
  @JsonKey(name: 'country_id', defaultValue: 1)
  final int? countryId;
  @override
  final String? password;
  @override
  final String? otp;
  @override
  @JsonKey(name: 'device_type', includeIfNull: false)
  final String? deviceType;
  @override
  @JsonKey(name: 'fcm_token', includeIfNull: false)
  final String? fcmToken;

  @override
  String toString() {
    return 'GenericLoginRequestModel(phone: $phone, countryId: $countryId, password: $password, otp: $otp, deviceType: $deviceType, fcmToken: $fcmToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenericLoginRequestModelImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.countryId, countryId) ||
                other.countryId == countryId) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.deviceType, deviceType) ||
                other.deviceType == deviceType) &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, phone, countryId, password, otp, deviceType, fcmToken);

  /// Create a copy of GenericLoginRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenericLoginRequestModelImplCopyWith<_$GenericLoginRequestModelImpl>
      get copyWith => __$$GenericLoginRequestModelImplCopyWithImpl<
          _$GenericLoginRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GenericLoginRequestModelImplToJson(
      this,
    );
  }
}

abstract class _GenericLoginRequestModel implements GenericLoginRequestModel {
  const factory _GenericLoginRequestModel(
      {required final String phone,
      @JsonKey(name: 'country_id', defaultValue: 1) final int? countryId,
      required final String? password,
      required final String? otp,
      @JsonKey(name: 'device_type', includeIfNull: false)
      final String? deviceType,
      @JsonKey(name: 'fcm_token', includeIfNull: false)
      final String? fcmToken}) = _$GenericLoginRequestModelImpl;

  @override
  String get phone;
  @override
  @JsonKey(name: 'country_id', defaultValue: 1)
  int? get countryId;
  @override
  String? get password;
  @override
  String? get otp;
  @override
  @JsonKey(name: 'device_type', includeIfNull: false)
  String? get deviceType;
  @override
  @JsonKey(name: 'fcm_token', includeIfNull: false)
  String? get fcmToken;

  /// Create a copy of GenericLoginRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenericLoginRequestModelImplCopyWith<_$GenericLoginRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
