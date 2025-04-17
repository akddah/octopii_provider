// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country_list_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CountryListResponseModel _$CountryListResponseModelFromJson(
    Map<String, dynamic> json) {
  return _CountryListResponseModel.fromJson(json);
}

/// @nodoc
mixin _$CountryListResponseModel {
  Response get response => throw _privateConstructorUsedError;

  /// Serializes this CountryListResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CountryListResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CountryListResponseModelCopyWith<CountryListResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryListResponseModelCopyWith<$Res> {
  factory $CountryListResponseModelCopyWith(CountryListResponseModel value,
          $Res Function(CountryListResponseModel) then) =
      _$CountryListResponseModelCopyWithImpl<$Res, CountryListResponseModel>;
  @useResult
  $Res call({Response response});

  $ResponseCopyWith<$Res> get response;
}

/// @nodoc
class _$CountryListResponseModelCopyWithImpl<$Res,
        $Val extends CountryListResponseModel>
    implements $CountryListResponseModelCopyWith<$Res> {
  _$CountryListResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CountryListResponseModel
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
              as Response,
    ) as $Val);
  }

  /// Create a copy of CountryListResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResponseCopyWith<$Res> get response {
    return $ResponseCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CountryListResponseModelImplCopyWith<$Res>
    implements $CountryListResponseModelCopyWith<$Res> {
  factory _$$CountryListResponseModelImplCopyWith(
          _$CountryListResponseModelImpl value,
          $Res Function(_$CountryListResponseModelImpl) then) =
      __$$CountryListResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Response response});

  @override
  $ResponseCopyWith<$Res> get response;
}

/// @nodoc
class __$$CountryListResponseModelImplCopyWithImpl<$Res>
    extends _$CountryListResponseModelCopyWithImpl<$Res,
        _$CountryListResponseModelImpl>
    implements _$$CountryListResponseModelImplCopyWith<$Res> {
  __$$CountryListResponseModelImplCopyWithImpl(
      _$CountryListResponseModelImpl _value,
      $Res Function(_$CountryListResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CountryListResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$CountryListResponseModelImpl(
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as Response,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CountryListResponseModelImpl implements _CountryListResponseModel {
  const _$CountryListResponseModelImpl({required this.response});

  factory _$CountryListResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountryListResponseModelImplFromJson(json);

  @override
  final Response response;

  @override
  String toString() {
    return 'CountryListResponseModel(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountryListResponseModelImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, response);

  /// Create a copy of CountryListResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CountryListResponseModelImplCopyWith<_$CountryListResponseModelImpl>
      get copyWith => __$$CountryListResponseModelImplCopyWithImpl<
          _$CountryListResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CountryListResponseModelImplToJson(
      this,
    );
  }
}

abstract class _CountryListResponseModel implements CountryListResponseModel {
  const factory _CountryListResponseModel({required final Response response}) =
      _$CountryListResponseModelImpl;

  factory _CountryListResponseModel.fromJson(Map<String, dynamic> json) =
      _$CountryListResponseModelImpl.fromJson;

  @override
  Response get response;

  /// Create a copy of CountryListResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CountryListResponseModelImplCopyWith<_$CountryListResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Response _$ResponseFromJson(Map<String, dynamic> json) {
  return _Response.fromJson(json);
}

/// @nodoc
mixin _$Response {
  @JsonKey(name: 'current_page')
  int get currentPage => throw _privateConstructorUsedError;
  List<CountryData> get data => throw _privateConstructorUsedError;

  /// Serializes this Response to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseCopyWith<Response> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseCopyWith<$Res> {
  factory $ResponseCopyWith(Response value, $Res Function(Response) then) =
      _$ResponseCopyWithImpl<$Res, Response>;
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page') int currentPage, List<CountryData> data});
}

/// @nodoc
class _$ResponseCopyWithImpl<$Res, $Val extends Response>
    implements $ResponseCopyWith<$Res> {
  _$ResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CountryData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseImplCopyWith<$Res>
    implements $ResponseCopyWith<$Res> {
  factory _$$ResponseImplCopyWith(
          _$ResponseImpl value, $Res Function(_$ResponseImpl) then) =
      __$$ResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page') int currentPage, List<CountryData> data});
}

/// @nodoc
class __$$ResponseImplCopyWithImpl<$Res>
    extends _$ResponseCopyWithImpl<$Res, _$ResponseImpl>
    implements _$$ResponseImplCopyWith<$Res> {
  __$$ResponseImplCopyWithImpl(
      _$ResponseImpl _value, $Res Function(_$ResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? data = null,
  }) {
    return _then(_$ResponseImpl(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CountryData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseImpl implements _Response {
  const _$ResponseImpl(
      {@JsonKey(name: 'current_page') required this.currentPage,
      required final List<CountryData> data})
      : _data = data;

  factory _$ResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseImplFromJson(json);

  @override
  @JsonKey(name: 'current_page')
  final int currentPage;
  final List<CountryData> _data;
  @override
  List<CountryData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'Response(currentPage: $currentPage, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, currentPage, const DeepCollectionEquality().hash(_data));

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseImplCopyWith<_$ResponseImpl> get copyWith =>
      __$$ResponseImplCopyWithImpl<_$ResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseImplToJson(
      this,
    );
  }
}

abstract class _Response implements Response {
  const factory _Response(
      {@JsonKey(name: 'current_page') required final int currentPage,
      required final List<CountryData> data}) = _$ResponseImpl;

  factory _Response.fromJson(Map<String, dynamic> json) =
      _$ResponseImpl.fromJson;

  @override
  @JsonKey(name: 'current_page')
  int get currentPage;
  @override
  List<CountryData> get data;

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseImplCopyWith<_$ResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CountryData _$CountryDataFromJson(Map<String, dynamic> json) {
  return _CountryData.fromJson(json);
}

/// @nodoc
mixin _$CountryData {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  String get flag => throw _privateConstructorUsedError;
  @JsonKey(name: 'isocode')
  String get isoCode => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this CountryData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CountryData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CountryDataCopyWith<CountryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryDataCopyWith<$Res> {
  factory $CountryDataCopyWith(
          CountryData value, $Res Function(CountryData) then) =
      _$CountryDataCopyWithImpl<$Res, CountryData>;
  @useResult
  $Res call(
      {int id,
      String title,
      String code,
      String currency,
      String flag,
      @JsonKey(name: 'isocode') String isoCode,
      int status,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'created_at') DateTime? createdAt});
}

/// @nodoc
class _$CountryDataCopyWithImpl<$Res, $Val extends CountryData>
    implements $CountryDataCopyWith<$Res> {
  _$CountryDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CountryData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? code = null,
    Object? currency = null,
    Object? flag = null,
    Object? isoCode = null,
    Object? status = null,
    Object? updatedAt = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      flag: null == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as String,
      isoCode: null == isoCode
          ? _value.isoCode
          : isoCode // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CountryDataImplCopyWith<$Res>
    implements $CountryDataCopyWith<$Res> {
  factory _$$CountryDataImplCopyWith(
          _$CountryDataImpl value, $Res Function(_$CountryDataImpl) then) =
      __$$CountryDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String code,
      String currency,
      String flag,
      @JsonKey(name: 'isocode') String isoCode,
      int status,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'created_at') DateTime? createdAt});
}

/// @nodoc
class __$$CountryDataImplCopyWithImpl<$Res>
    extends _$CountryDataCopyWithImpl<$Res, _$CountryDataImpl>
    implements _$$CountryDataImplCopyWith<$Res> {
  __$$CountryDataImplCopyWithImpl(
      _$CountryDataImpl _value, $Res Function(_$CountryDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of CountryData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? code = null,
    Object? currency = null,
    Object? flag = null,
    Object? isoCode = null,
    Object? status = null,
    Object? updatedAt = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$CountryDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      flag: null == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as String,
      isoCode: null == isoCode
          ? _value.isoCode
          : isoCode // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CountryDataImpl implements _CountryData {
  const _$CountryDataImpl(
      {required this.id,
      required this.title,
      required this.code,
      required this.currency,
      required this.flag,
      @JsonKey(name: 'isocode') required this.isoCode,
      required this.status,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'created_at') this.createdAt});

  factory _$CountryDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountryDataImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String code;
  @override
  final String currency;
  @override
  final String flag;
  @override
  @JsonKey(name: 'isocode')
  final String isoCode;
  @override
  final int status;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;

  @override
  String toString() {
    return 'CountryData(id: $id, title: $title, code: $code, currency: $currency, flag: $flag, isoCode: $isoCode, status: $status, updatedAt: $updatedAt, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountryDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.flag, flag) || other.flag == flag) &&
            (identical(other.isoCode, isoCode) || other.isoCode == isoCode) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, code, currency, flag,
      isoCode, status, updatedAt, createdAt);

  /// Create a copy of CountryData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CountryDataImplCopyWith<_$CountryDataImpl> get copyWith =>
      __$$CountryDataImplCopyWithImpl<_$CountryDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CountryDataImplToJson(
      this,
    );
  }
}

abstract class _CountryData implements CountryData {
  const factory _CountryData(
          {required final int id,
          required final String title,
          required final String code,
          required final String currency,
          required final String flag,
          @JsonKey(name: 'isocode') required final String isoCode,
          required final int status,
          @JsonKey(name: 'updated_at') final DateTime? updatedAt,
          @JsonKey(name: 'created_at') final DateTime? createdAt}) =
      _$CountryDataImpl;

  factory _CountryData.fromJson(Map<String, dynamic> json) =
      _$CountryDataImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get code;
  @override
  String get currency;
  @override
  String get flag;
  @override
  @JsonKey(name: 'isocode')
  String get isoCode;
  @override
  int get status;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;

  /// Create a copy of CountryData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CountryDataImplCopyWith<_$CountryDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
