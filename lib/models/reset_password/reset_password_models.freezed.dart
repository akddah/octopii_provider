// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reset_password_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResetPasswordResponseData _$ResetPasswordResponseDataFromJson(
    Map<String, dynamic> json) {
  return _ResetPasswordResponseData.fromJson(json);
}

/// @nodoc
mixin _$ResetPasswordResponseData {
  ResetPasswordResponse? get response => throw _privateConstructorUsedError;

  /// Serializes this ResetPasswordResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResetPasswordResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResetPasswordResponseDataCopyWith<ResetPasswordResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPasswordResponseDataCopyWith<$Res> {
  factory $ResetPasswordResponseDataCopyWith(ResetPasswordResponseData value,
          $Res Function(ResetPasswordResponseData) then) =
      _$ResetPasswordResponseDataCopyWithImpl<$Res, ResetPasswordResponseData>;
  @useResult
  $Res call({ResetPasswordResponse? response});

  $ResetPasswordResponseCopyWith<$Res>? get response;
}

/// @nodoc
class _$ResetPasswordResponseDataCopyWithImpl<$Res,
        $Val extends ResetPasswordResponseData>
    implements $ResetPasswordResponseDataCopyWith<$Res> {
  _$ResetPasswordResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResetPasswordResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_value.copyWith(
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as ResetPasswordResponse?,
    ) as $Val);
  }

  /// Create a copy of ResetPasswordResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResetPasswordResponseCopyWith<$Res>? get response {
    if (_value.response == null) {
      return null;
    }

    return $ResetPasswordResponseCopyWith<$Res>(_value.response!, (value) {
      return _then(_value.copyWith(response: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResetPasswordResponseDataImplCopyWith<$Res>
    implements $ResetPasswordResponseDataCopyWith<$Res> {
  factory _$$ResetPasswordResponseDataImplCopyWith(
          _$ResetPasswordResponseDataImpl value,
          $Res Function(_$ResetPasswordResponseDataImpl) then) =
      __$$ResetPasswordResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ResetPasswordResponse? response});

  @override
  $ResetPasswordResponseCopyWith<$Res>? get response;
}

/// @nodoc
class __$$ResetPasswordResponseDataImplCopyWithImpl<$Res>
    extends _$ResetPasswordResponseDataCopyWithImpl<$Res,
        _$ResetPasswordResponseDataImpl>
    implements _$$ResetPasswordResponseDataImplCopyWith<$Res> {
  __$$ResetPasswordResponseDataImplCopyWithImpl(
      _$ResetPasswordResponseDataImpl _value,
      $Res Function(_$ResetPasswordResponseDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResetPasswordResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_$ResetPasswordResponseDataImpl(
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as ResetPasswordResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResetPasswordResponseDataImpl implements _ResetPasswordResponseData {
  const _$ResetPasswordResponseDataImpl({required this.response});

  factory _$ResetPasswordResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResetPasswordResponseDataImplFromJson(json);

  @override
  final ResetPasswordResponse? response;

  @override
  String toString() {
    return 'ResetPasswordResponseData(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetPasswordResponseDataImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, response);

  /// Create a copy of ResetPasswordResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetPasswordResponseDataImplCopyWith<_$ResetPasswordResponseDataImpl>
      get copyWith => __$$ResetPasswordResponseDataImplCopyWithImpl<
          _$ResetPasswordResponseDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResetPasswordResponseDataImplToJson(
      this,
    );
  }
}

abstract class _ResetPasswordResponseData implements ResetPasswordResponseData {
  const factory _ResetPasswordResponseData(
          {required final ResetPasswordResponse? response}) =
      _$ResetPasswordResponseDataImpl;

  factory _ResetPasswordResponseData.fromJson(Map<String, dynamic> json) =
      _$ResetPasswordResponseDataImpl.fromJson;

  @override
  ResetPasswordResponse? get response;

  /// Create a copy of ResetPasswordResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResetPasswordResponseDataImplCopyWith<_$ResetPasswordResponseDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ResetPasswordResponse _$ResetPasswordResponseFromJson(
    Map<String, dynamic> json) {
  return _ResetPasswordResponse.fromJson(json);
}

/// @nodoc
mixin _$ResetPasswordResponse {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  int? get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'country_id')
  int get countryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String get lastName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get dob => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'deleted_at')
  DateTime? get deletedAt => throw _privateConstructorUsedError;

  /// Serializes this ResetPasswordResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResetPasswordResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResetPasswordResponseCopyWith<ResetPasswordResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPasswordResponseCopyWith<$Res> {
  factory $ResetPasswordResponseCopyWith(ResetPasswordResponse value,
          $Res Function(ResetPasswordResponse) then) =
      _$ResetPasswordResponseCopyWithImpl<$Res, ResetPasswordResponse>;
  @useResult
  $Res call(
      {int id,
      String name,
      String phone,
      int? gender,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'country_id') int countryId,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      String? email,
      String? dob,
      String? image,
      @JsonKey(name: 'deleted_at') DateTime? deletedAt});
}

/// @nodoc
class _$ResetPasswordResponseCopyWithImpl<$Res,
        $Val extends ResetPasswordResponse>
    implements $ResetPasswordResponseCopyWith<$Res> {
  _$ResetPasswordResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResetPasswordResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? phone = null,
    Object? gender = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? countryId = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = freezed,
    Object? dob = freezed,
    Object? image = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      countryId: null == countryId
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResetPasswordResponseImplCopyWith<$Res>
    implements $ResetPasswordResponseCopyWith<$Res> {
  factory _$$ResetPasswordResponseImplCopyWith(
          _$ResetPasswordResponseImpl value,
          $Res Function(_$ResetPasswordResponseImpl) then) =
      __$$ResetPasswordResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String phone,
      int? gender,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'country_id') int countryId,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      String? email,
      String? dob,
      String? image,
      @JsonKey(name: 'deleted_at') DateTime? deletedAt});
}

/// @nodoc
class __$$ResetPasswordResponseImplCopyWithImpl<$Res>
    extends _$ResetPasswordResponseCopyWithImpl<$Res,
        _$ResetPasswordResponseImpl>
    implements _$$ResetPasswordResponseImplCopyWith<$Res> {
  __$$ResetPasswordResponseImplCopyWithImpl(_$ResetPasswordResponseImpl _value,
      $Res Function(_$ResetPasswordResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResetPasswordResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? phone = null,
    Object? gender = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? countryId = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = freezed,
    Object? dob = freezed,
    Object? image = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_$ResetPasswordResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      countryId: null == countryId
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResetPasswordResponseImpl implements _ResetPasswordResponse {
  const _$ResetPasswordResponseImpl(
      {required this.id,
      required this.name,
      required this.phone,
      required this.gender,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'country_id') required this.countryId,
      @JsonKey(name: 'first_name') required this.firstName,
      @JsonKey(name: 'last_name') required this.lastName,
      this.email,
      this.dob,
      this.image,
      @JsonKey(name: 'deleted_at') this.deletedAt});

  factory _$ResetPasswordResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResetPasswordResponseImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String phone;
  @override
  final int? gender;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  @override
  @JsonKey(name: 'country_id')
  final int countryId;
  @override
  @JsonKey(name: 'first_name')
  final String firstName;
  @override
  @JsonKey(name: 'last_name')
  final String lastName;
  @override
  final String? email;
  @override
  final String? dob;
  @override
  final String? image;
  @override
  @JsonKey(name: 'deleted_at')
  final DateTime? deletedAt;

  @override
  String toString() {
    return 'ResetPasswordResponse(id: $id, name: $name, phone: $phone, gender: $gender, createdAt: $createdAt, updatedAt: $updatedAt, countryId: $countryId, firstName: $firstName, lastName: $lastName, email: $email, dob: $dob, image: $image, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetPasswordResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.countryId, countryId) ||
                other.countryId == countryId) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.dob, dob) || other.dob == dob) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      phone,
      gender,
      createdAt,
      updatedAt,
      countryId,
      firstName,
      lastName,
      email,
      dob,
      image,
      deletedAt);

  /// Create a copy of ResetPasswordResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetPasswordResponseImplCopyWith<_$ResetPasswordResponseImpl>
      get copyWith => __$$ResetPasswordResponseImplCopyWithImpl<
          _$ResetPasswordResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResetPasswordResponseImplToJson(
      this,
    );
  }
}

abstract class _ResetPasswordResponse implements ResetPasswordResponse {
  const factory _ResetPasswordResponse(
          {required final int id,
          required final String name,
          required final String phone,
          required final int? gender,
          @JsonKey(name: 'created_at') required final DateTime createdAt,
          @JsonKey(name: 'updated_at') required final DateTime updatedAt,
          @JsonKey(name: 'country_id') required final int countryId,
          @JsonKey(name: 'first_name') required final String firstName,
          @JsonKey(name: 'last_name') required final String lastName,
          final String? email,
          final String? dob,
          final String? image,
          @JsonKey(name: 'deleted_at') final DateTime? deletedAt}) =
      _$ResetPasswordResponseImpl;

  factory _ResetPasswordResponse.fromJson(Map<String, dynamic> json) =
      _$ResetPasswordResponseImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get phone;
  @override
  int? get gender;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @override
  @JsonKey(name: 'country_id')
  int get countryId;
  @override
  @JsonKey(name: 'first_name')
  String get firstName;
  @override
  @JsonKey(name: 'last_name')
  String get lastName;
  @override
  String? get email;
  @override
  String? get dob;
  @override
  String? get image;
  @override
  @JsonKey(name: 'deleted_at')
  DateTime? get deletedAt;

  /// Create a copy of ResetPasswordResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResetPasswordResponseImplCopyWith<_$ResetPasswordResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
