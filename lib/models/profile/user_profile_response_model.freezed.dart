// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserProfileData _$UserProfileDataFromJson(Map<String, dynamic> json) {
  return _UserProfileData.fromJson(json);
}

/// @nodoc
mixin _$UserProfileData {
  UserProfileResponse get response => throw _privateConstructorUsedError;

  /// Serializes this UserProfileData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserProfileData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserProfileDataCopyWith<UserProfileData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileDataCopyWith<$Res> {
  factory $UserProfileDataCopyWith(
          UserProfileData value, $Res Function(UserProfileData) then) =
      _$UserProfileDataCopyWithImpl<$Res, UserProfileData>;
  @useResult
  $Res call({UserProfileResponse response});

  $UserProfileResponseCopyWith<$Res> get response;
}

/// @nodoc
class _$UserProfileDataCopyWithImpl<$Res, $Val extends UserProfileData>
    implements $UserProfileDataCopyWith<$Res> {
  _$UserProfileDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserProfileData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_value.copyWith(
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as UserProfileResponse,
    ) as $Val);
  }

  /// Create a copy of UserProfileData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserProfileResponseCopyWith<$Res> get response {
    return $UserProfileResponseCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserProfileDataImplCopyWith<$Res>
    implements $UserProfileDataCopyWith<$Res> {
  factory _$$UserProfileDataImplCopyWith(_$UserProfileDataImpl value,
          $Res Function(_$UserProfileDataImpl) then) =
      __$$UserProfileDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserProfileResponse response});

  @override
  $UserProfileResponseCopyWith<$Res> get response;
}

/// @nodoc
class __$$UserProfileDataImplCopyWithImpl<$Res>
    extends _$UserProfileDataCopyWithImpl<$Res, _$UserProfileDataImpl>
    implements _$$UserProfileDataImplCopyWith<$Res> {
  __$$UserProfileDataImplCopyWithImpl(
      _$UserProfileDataImpl _value, $Res Function(_$UserProfileDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserProfileData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$UserProfileDataImpl(
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as UserProfileResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserProfileDataImpl implements _UserProfileData {
  const _$UserProfileDataImpl({required this.response});

  factory _$UserProfileDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserProfileDataImplFromJson(json);

  @override
  final UserProfileResponse response;

  @override
  String toString() {
    return 'UserProfileData(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileDataImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, response);

  /// Create a copy of UserProfileData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileDataImplCopyWith<_$UserProfileDataImpl> get copyWith =>
      __$$UserProfileDataImplCopyWithImpl<_$UserProfileDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserProfileDataImplToJson(
      this,
    );
  }
}

abstract class _UserProfileData implements UserProfileData {
  const factory _UserProfileData(
      {required final UserProfileResponse response}) = _$UserProfileDataImpl;

  factory _UserProfileData.fromJson(Map<String, dynamic> json) =
      _$UserProfileDataImpl.fromJson;

  @override
  UserProfileResponse get response;

  /// Create a copy of UserProfileData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserProfileDataImplCopyWith<_$UserProfileDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserProfileResponse _$UserProfileResponseFromJson(Map<String, dynamic> json) {
  return _UserProfileResponse.fromJson(json);
}

/// @nodoc
mixin _$UserProfileResponse {
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String get lastName => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  num get bookings => throw _privateConstructorUsedError;
  num get commissions => throw _privateConstructorUsedError;
  num get salaries => throw _privateConstructorUsedError;
  num get earnings => throw _privateConstructorUsedError;
  num get outstanding => throw _privateConstructorUsedError;
  UserProfileCountry? get country => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  DateTime? get dob => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;

  /// Serializes this UserProfileResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserProfileResponseCopyWith<UserProfileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileResponseCopyWith<$Res> {
  factory $UserProfileResponseCopyWith(
          UserProfileResponse value, $Res Function(UserProfileResponse) then) =
      _$UserProfileResponseCopyWithImpl<$Res, UserProfileResponse>;
  @useResult
  $Res call(
      {String name,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      String phone,
      num bookings,
      num commissions,
      num salaries,
      num earnings,
      num outstanding,
      UserProfileCountry? country,
      String? image,
      DateTime? dob,
      String? email});

  $UserProfileCountryCopyWith<$Res>? get country;
}

/// @nodoc
class _$UserProfileResponseCopyWithImpl<$Res, $Val extends UserProfileResponse>
    implements $UserProfileResponseCopyWith<$Res> {
  _$UserProfileResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? phone = null,
    Object? bookings = null,
    Object? commissions = null,
    Object? salaries = null,
    Object? earnings = null,
    Object? outstanding = null,
    Object? country = freezed,
    Object? image = freezed,
    Object? dob = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      bookings: null == bookings
          ? _value.bookings
          : bookings // ignore: cast_nullable_to_non_nullable
              as num,
      commissions: null == commissions
          ? _value.commissions
          : commissions // ignore: cast_nullable_to_non_nullable
              as num,
      salaries: null == salaries
          ? _value.salaries
          : salaries // ignore: cast_nullable_to_non_nullable
              as num,
      earnings: null == earnings
          ? _value.earnings
          : earnings // ignore: cast_nullable_to_non_nullable
              as num,
      outstanding: null == outstanding
          ? _value.outstanding
          : outstanding // ignore: cast_nullable_to_non_nullable
              as num,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as UserProfileCountry?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of UserProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserProfileCountryCopyWith<$Res>? get country {
    if (_value.country == null) {
      return null;
    }

    return $UserProfileCountryCopyWith<$Res>(_value.country!, (value) {
      return _then(_value.copyWith(country: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserProfileResponseImplCopyWith<$Res>
    implements $UserProfileResponseCopyWith<$Res> {
  factory _$$UserProfileResponseImplCopyWith(_$UserProfileResponseImpl value,
          $Res Function(_$UserProfileResponseImpl) then) =
      __$$UserProfileResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      String phone,
      num bookings,
      num commissions,
      num salaries,
      num earnings,
      num outstanding,
      UserProfileCountry? country,
      String? image,
      DateTime? dob,
      String? email});

  @override
  $UserProfileCountryCopyWith<$Res>? get country;
}

/// @nodoc
class __$$UserProfileResponseImplCopyWithImpl<$Res>
    extends _$UserProfileResponseCopyWithImpl<$Res, _$UserProfileResponseImpl>
    implements _$$UserProfileResponseImplCopyWith<$Res> {
  __$$UserProfileResponseImplCopyWithImpl(_$UserProfileResponseImpl _value,
      $Res Function(_$UserProfileResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? phone = null,
    Object? bookings = null,
    Object? commissions = null,
    Object? salaries = null,
    Object? earnings = null,
    Object? outstanding = null,
    Object? country = freezed,
    Object? image = freezed,
    Object? dob = freezed,
    Object? email = freezed,
  }) {
    return _then(_$UserProfileResponseImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      bookings: null == bookings
          ? _value.bookings
          : bookings // ignore: cast_nullable_to_non_nullable
              as num,
      commissions: null == commissions
          ? _value.commissions
          : commissions // ignore: cast_nullable_to_non_nullable
              as num,
      salaries: null == salaries
          ? _value.salaries
          : salaries // ignore: cast_nullable_to_non_nullable
              as num,
      earnings: null == earnings
          ? _value.earnings
          : earnings // ignore: cast_nullable_to_non_nullable
              as num,
      outstanding: null == outstanding
          ? _value.outstanding
          : outstanding // ignore: cast_nullable_to_non_nullable
              as num,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as UserProfileCountry?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserProfileResponseImpl implements _UserProfileResponse {
  const _$UserProfileResponseImpl(
      {required this.name,
      @JsonKey(name: 'first_name') required this.firstName,
      @JsonKey(name: 'last_name') required this.lastName,
      required this.phone,
      required this.bookings,
      required this.commissions,
      required this.salaries,
      required this.earnings,
      required this.outstanding,
      this.country,
      this.image,
      this.dob,
      this.email});

  factory _$UserProfileResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserProfileResponseImplFromJson(json);

  @override
  final String name;
  @override
  @JsonKey(name: 'first_name')
  final String firstName;
  @override
  @JsonKey(name: 'last_name')
  final String lastName;
  @override
  final String phone;
  @override
  final num bookings;
  @override
  final num commissions;
  @override
  final num salaries;
  @override
  final num earnings;
  @override
  final num outstanding;
  @override
  final UserProfileCountry? country;
  @override
  final String? image;
  @override
  final DateTime? dob;
  @override
  final String? email;

  @override
  String toString() {
    return 'UserProfileResponse(name: $name, firstName: $firstName, lastName: $lastName, phone: $phone, bookings: $bookings, commissions: $commissions, salaries: $salaries, earnings: $earnings, outstanding: $outstanding, country: $country, image: $image, dob: $dob, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileResponseImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.bookings, bookings) ||
                other.bookings == bookings) &&
            (identical(other.commissions, commissions) ||
                other.commissions == commissions) &&
            (identical(other.salaries, salaries) ||
                other.salaries == salaries) &&
            (identical(other.earnings, earnings) ||
                other.earnings == earnings) &&
            (identical(other.outstanding, outstanding) ||
                other.outstanding == outstanding) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.dob, dob) || other.dob == dob) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      firstName,
      lastName,
      phone,
      bookings,
      commissions,
      salaries,
      earnings,
      outstanding,
      country,
      image,
      dob,
      email);

  /// Create a copy of UserProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileResponseImplCopyWith<_$UserProfileResponseImpl> get copyWith =>
      __$$UserProfileResponseImplCopyWithImpl<_$UserProfileResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserProfileResponseImplToJson(
      this,
    );
  }
}

abstract class _UserProfileResponse implements UserProfileResponse {
  const factory _UserProfileResponse(
      {required final String name,
      @JsonKey(name: 'first_name') required final String firstName,
      @JsonKey(name: 'last_name') required final String lastName,
      required final String phone,
      required final num bookings,
      required final num commissions,
      required final num salaries,
      required final num earnings,
      required final num outstanding,
      final UserProfileCountry? country,
      final String? image,
      final DateTime? dob,
      final String? email}) = _$UserProfileResponseImpl;

  factory _UserProfileResponse.fromJson(Map<String, dynamic> json) =
      _$UserProfileResponseImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(name: 'first_name')
  String get firstName;
  @override
  @JsonKey(name: 'last_name')
  String get lastName;
  @override
  String get phone;
  @override
  num get bookings;
  @override
  num get commissions;
  @override
  num get salaries;
  @override
  num get earnings;
  @override
  num get outstanding;
  @override
  UserProfileCountry? get country;
  @override
  String? get image;
  @override
  DateTime? get dob;
  @override
  String? get email;

  /// Create a copy of UserProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserProfileResponseImplCopyWith<_$UserProfileResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserProfileCountry _$UserProfileCountryFromJson(Map<String, dynamic> json) {
  return _UserProfileCountry.fromJson(json);
}

/// @nodoc
mixin _$UserProfileCountry {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title_ar')
  String? get titleAr => throw _privateConstructorUsedError;
  @JsonKey(name: 'title_en')
  String? get titleEn => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get flag => throw _privateConstructorUsedError;

  /// Serializes this UserProfileCountry to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserProfileCountry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserProfileCountryCopyWith<UserProfileCountry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileCountryCopyWith<$Res> {
  factory $UserProfileCountryCopyWith(
          UserProfileCountry value, $Res Function(UserProfileCountry) then) =
      _$UserProfileCountryCopyWithImpl<$Res, UserProfileCountry>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'title_ar') String? titleAr,
      @JsonKey(name: 'title_en') String? titleEn,
      String? code,
      String? flag});
}

/// @nodoc
class _$UserProfileCountryCopyWithImpl<$Res, $Val extends UserProfileCountry>
    implements $UserProfileCountryCopyWith<$Res> {
  _$UserProfileCountryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserProfileCountry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? titleAr = freezed,
    Object? titleEn = freezed,
    Object? code = freezed,
    Object? flag = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      titleAr: freezed == titleAr
          ? _value.titleAr
          : titleAr // ignore: cast_nullable_to_non_nullable
              as String?,
      titleEn: freezed == titleEn
          ? _value.titleEn
          : titleEn // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      flag: freezed == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserProfileCountryImplCopyWith<$Res>
    implements $UserProfileCountryCopyWith<$Res> {
  factory _$$UserProfileCountryImplCopyWith(_$UserProfileCountryImpl value,
          $Res Function(_$UserProfileCountryImpl) then) =
      __$$UserProfileCountryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'title_ar') String? titleAr,
      @JsonKey(name: 'title_en') String? titleEn,
      String? code,
      String? flag});
}

/// @nodoc
class __$$UserProfileCountryImplCopyWithImpl<$Res>
    extends _$UserProfileCountryCopyWithImpl<$Res, _$UserProfileCountryImpl>
    implements _$$UserProfileCountryImplCopyWith<$Res> {
  __$$UserProfileCountryImplCopyWithImpl(_$UserProfileCountryImpl _value,
      $Res Function(_$UserProfileCountryImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserProfileCountry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? titleAr = freezed,
    Object? titleEn = freezed,
    Object? code = freezed,
    Object? flag = freezed,
  }) {
    return _then(_$UserProfileCountryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      titleAr: freezed == titleAr
          ? _value.titleAr
          : titleAr // ignore: cast_nullable_to_non_nullable
              as String?,
      titleEn: freezed == titleEn
          ? _value.titleEn
          : titleEn // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      flag: freezed == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserProfileCountryImpl extends _UserProfileCountry {
  const _$UserProfileCountryImpl(
      {required this.id,
      @JsonKey(name: 'title_ar') this.titleAr,
      @JsonKey(name: 'title_en') this.titleEn,
      this.code,
      this.flag})
      : super._();

  factory _$UserProfileCountryImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserProfileCountryImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'title_ar')
  final String? titleAr;
  @override
  @JsonKey(name: 'title_en')
  final String? titleEn;
  @override
  final String? code;
  @override
  final String? flag;

  @override
  String toString() {
    return 'UserProfileCountry(id: $id, titleAr: $titleAr, titleEn: $titleEn, code: $code, flag: $flag)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileCountryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.titleAr, titleAr) || other.titleAr == titleAr) &&
            (identical(other.titleEn, titleEn) || other.titleEn == titleEn) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.flag, flag) || other.flag == flag));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, titleAr, titleEn, code, flag);

  /// Create a copy of UserProfileCountry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileCountryImplCopyWith<_$UserProfileCountryImpl> get copyWith =>
      __$$UserProfileCountryImplCopyWithImpl<_$UserProfileCountryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserProfileCountryImplToJson(
      this,
    );
  }
}

abstract class _UserProfileCountry extends UserProfileCountry {
  const factory _UserProfileCountry(
      {required final int id,
      @JsonKey(name: 'title_ar') final String? titleAr,
      @JsonKey(name: 'title_en') final String? titleEn,
      final String? code,
      final String? flag}) = _$UserProfileCountryImpl;
  const _UserProfileCountry._() : super._();

  factory _UserProfileCountry.fromJson(Map<String, dynamic> json) =
      _$UserProfileCountryImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'title_ar')
  String? get titleAr;
  @override
  @JsonKey(name: 'title_en')
  String? get titleEn;
  @override
  String? get code;
  @override
  String? get flag;

  /// Create a copy of UserProfileCountry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserProfileCountryImplCopyWith<_$UserProfileCountryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
