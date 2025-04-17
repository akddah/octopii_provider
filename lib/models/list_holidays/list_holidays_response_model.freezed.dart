// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_holidays_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HolidayData _$HolidayDataFromJson(Map<String, dynamic> json) {
  return _HolidayData.fromJson(json);
}

/// @nodoc
mixin _$HolidayData {
  List<HolidayResponse> get response => throw _privateConstructorUsedError;

  /// Serializes this HolidayData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HolidayData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HolidayDataCopyWith<HolidayData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HolidayDataCopyWith<$Res> {
  factory $HolidayDataCopyWith(
          HolidayData value, $Res Function(HolidayData) then) =
      _$HolidayDataCopyWithImpl<$Res, HolidayData>;
  @useResult
  $Res call({List<HolidayResponse> response});
}

/// @nodoc
class _$HolidayDataCopyWithImpl<$Res, $Val extends HolidayData>
    implements $HolidayDataCopyWith<$Res> {
  _$HolidayDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HolidayData
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
              as List<HolidayResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HolidayDataImplCopyWith<$Res>
    implements $HolidayDataCopyWith<$Res> {
  factory _$$HolidayDataImplCopyWith(
          _$HolidayDataImpl value, $Res Function(_$HolidayDataImpl) then) =
      __$$HolidayDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<HolidayResponse> response});
}

/// @nodoc
class __$$HolidayDataImplCopyWithImpl<$Res>
    extends _$HolidayDataCopyWithImpl<$Res, _$HolidayDataImpl>
    implements _$$HolidayDataImplCopyWith<$Res> {
  __$$HolidayDataImplCopyWithImpl(
      _$HolidayDataImpl _value, $Res Function(_$HolidayDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of HolidayData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$HolidayDataImpl(
      response: null == response
          ? _value._response
          : response // ignore: cast_nullable_to_non_nullable
              as List<HolidayResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HolidayDataImpl implements _HolidayData {
  const _$HolidayDataImpl({required final List<HolidayResponse> response})
      : _response = response;

  factory _$HolidayDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$HolidayDataImplFromJson(json);

  final List<HolidayResponse> _response;
  @override
  List<HolidayResponse> get response {
    if (_response is EqualUnmodifiableListView) return _response;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_response);
  }

  @override
  String toString() {
    return 'HolidayData(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HolidayDataImpl &&
            const DeepCollectionEquality().equals(other._response, _response));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_response));

  /// Create a copy of HolidayData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HolidayDataImplCopyWith<_$HolidayDataImpl> get copyWith =>
      __$$HolidayDataImplCopyWithImpl<_$HolidayDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HolidayDataImplToJson(
      this,
    );
  }
}

abstract class _HolidayData implements HolidayData {
  const factory _HolidayData({required final List<HolidayResponse> response}) =
      _$HolidayDataImpl;

  factory _HolidayData.fromJson(Map<String, dynamic> json) =
      _$HolidayDataImpl.fromJson;

  @override
  List<HolidayResponse> get response;

  /// Create a copy of HolidayData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HolidayDataImplCopyWith<_$HolidayDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HolidayResponse _$HolidayResponseFromJson(Map<String, dynamic> json) {
  return _HolidayResponse.fromJson(json);
}

/// @nodoc
mixin _$HolidayResponse {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'provider_id')
  int get providerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String get from => throw _privateConstructorUsedError;
  String get to => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'deleted_at')
  DateTime? get deletedAt => throw _privateConstructorUsedError;

  /// Serializes this HolidayResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HolidayResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HolidayResponseCopyWith<HolidayResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HolidayResponseCopyWith<$Res> {
  factory $HolidayResponseCopyWith(
          HolidayResponse value, $Res Function(HolidayResponse) then) =
      _$HolidayResponseCopyWithImpl<$Res, HolidayResponse>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'provider_id') int providerId,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      String from,
      String to,
      String title,
      @JsonKey(name: 'deleted_at') DateTime? deletedAt});
}

/// @nodoc
class _$HolidayResponseCopyWithImpl<$Res, $Val extends HolidayResponse>
    implements $HolidayResponseCopyWith<$Res> {
  _$HolidayResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HolidayResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? providerId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? from = null,
    Object? to = null,
    Object? title = null,
    Object? deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      providerId: null == providerId
          ? _value.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HolidayResponseImplCopyWith<$Res>
    implements $HolidayResponseCopyWith<$Res> {
  factory _$$HolidayResponseImplCopyWith(_$HolidayResponseImpl value,
          $Res Function(_$HolidayResponseImpl) then) =
      __$$HolidayResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'provider_id') int providerId,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      String from,
      String to,
      String title,
      @JsonKey(name: 'deleted_at') DateTime? deletedAt});
}

/// @nodoc
class __$$HolidayResponseImplCopyWithImpl<$Res>
    extends _$HolidayResponseCopyWithImpl<$Res, _$HolidayResponseImpl>
    implements _$$HolidayResponseImplCopyWith<$Res> {
  __$$HolidayResponseImplCopyWithImpl(
      _$HolidayResponseImpl _value, $Res Function(_$HolidayResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of HolidayResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? providerId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? from = null,
    Object? to = null,
    Object? title = null,
    Object? deletedAt = freezed,
  }) {
    return _then(_$HolidayResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      providerId: null == providerId
          ? _value.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HolidayResponseImpl implements _HolidayResponse {
  const _$HolidayResponseImpl(
      {required this.id,
      @JsonKey(name: 'provider_id') required this.providerId,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      required this.from,
      required this.to,
      required this.title,
      @JsonKey(name: 'deleted_at') this.deletedAt});

  factory _$HolidayResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$HolidayResponseImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'provider_id')
  final int providerId;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  @override
  final String from;
  @override
  final String to;
  @override
  final String title;
  @override
  @JsonKey(name: 'deleted_at')
  final DateTime? deletedAt;

  @override
  String toString() {
    return 'HolidayResponse(id: $id, providerId: $providerId, createdAt: $createdAt, updatedAt: $updatedAt, from: $from, to: $to, title: $title, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HolidayResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.providerId, providerId) ||
                other.providerId == providerId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, providerId, createdAt,
      updatedAt, from, to, title, deletedAt);

  /// Create a copy of HolidayResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HolidayResponseImplCopyWith<_$HolidayResponseImpl> get copyWith =>
      __$$HolidayResponseImplCopyWithImpl<_$HolidayResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HolidayResponseImplToJson(
      this,
    );
  }
}

abstract class _HolidayResponse implements HolidayResponse {
  const factory _HolidayResponse(
          {required final int id,
          @JsonKey(name: 'provider_id') required final int providerId,
          @JsonKey(name: 'created_at') required final DateTime createdAt,
          @JsonKey(name: 'updated_at') required final DateTime updatedAt,
          required final String from,
          required final String to,
          required final String title,
          @JsonKey(name: 'deleted_at') final DateTime? deletedAt}) =
      _$HolidayResponseImpl;

  factory _HolidayResponse.fromJson(Map<String, dynamic> json) =
      _$HolidayResponseImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'provider_id')
  int get providerId;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @override
  String get from;
  @override
  String get to;
  @override
  String get title;
  @override
  @JsonKey(name: 'deleted_at')
  DateTime? get deletedAt;

  /// Create a copy of HolidayResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HolidayResponseImplCopyWith<_$HolidayResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
