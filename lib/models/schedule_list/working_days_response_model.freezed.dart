// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'working_days_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WorkingDaysData _$WorkingDaysDataFromJson(Map<String, dynamic> json) {
  return _WorkingDaysData.fromJson(json);
}

/// @nodoc
mixin _$WorkingDaysData {
  List<WorkingDay> get response => throw _privateConstructorUsedError;

  /// Serializes this WorkingDaysData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WorkingDaysData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkingDaysDataCopyWith<WorkingDaysData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkingDaysDataCopyWith<$Res> {
  factory $WorkingDaysDataCopyWith(
          WorkingDaysData value, $Res Function(WorkingDaysData) then) =
      _$WorkingDaysDataCopyWithImpl<$Res, WorkingDaysData>;
  @useResult
  $Res call({List<WorkingDay> response});
}

/// @nodoc
class _$WorkingDaysDataCopyWithImpl<$Res, $Val extends WorkingDaysData>
    implements $WorkingDaysDataCopyWith<$Res> {
  _$WorkingDaysDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkingDaysData
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
              as List<WorkingDay>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkingDaysDataImplCopyWith<$Res>
    implements $WorkingDaysDataCopyWith<$Res> {
  factory _$$WorkingDaysDataImplCopyWith(_$WorkingDaysDataImpl value,
          $Res Function(_$WorkingDaysDataImpl) then) =
      __$$WorkingDaysDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<WorkingDay> response});
}

/// @nodoc
class __$$WorkingDaysDataImplCopyWithImpl<$Res>
    extends _$WorkingDaysDataCopyWithImpl<$Res, _$WorkingDaysDataImpl>
    implements _$$WorkingDaysDataImplCopyWith<$Res> {
  __$$WorkingDaysDataImplCopyWithImpl(
      _$WorkingDaysDataImpl _value, $Res Function(_$WorkingDaysDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkingDaysData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$WorkingDaysDataImpl(
      response: null == response
          ? _value._response
          : response // ignore: cast_nullable_to_non_nullable
              as List<WorkingDay>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkingDaysDataImpl implements _WorkingDaysData {
  const _$WorkingDaysDataImpl({required final List<WorkingDay> response})
      : _response = response;

  factory _$WorkingDaysDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkingDaysDataImplFromJson(json);

  final List<WorkingDay> _response;
  @override
  List<WorkingDay> get response {
    if (_response is EqualUnmodifiableListView) return _response;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_response);
  }

  @override
  String toString() {
    return 'WorkingDaysData(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkingDaysDataImpl &&
            const DeepCollectionEquality().equals(other._response, _response));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_response));

  /// Create a copy of WorkingDaysData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkingDaysDataImplCopyWith<_$WorkingDaysDataImpl> get copyWith =>
      __$$WorkingDaysDataImplCopyWithImpl<_$WorkingDaysDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkingDaysDataImplToJson(
      this,
    );
  }
}

abstract class _WorkingDaysData implements WorkingDaysData {
  const factory _WorkingDaysData({required final List<WorkingDay> response}) =
      _$WorkingDaysDataImpl;

  factory _WorkingDaysData.fromJson(Map<String, dynamic> json) =
      _$WorkingDaysDataImpl.fromJson;

  @override
  List<WorkingDay> get response;

  /// Create a copy of WorkingDaysData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkingDaysDataImplCopyWith<_$WorkingDaysDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WorkingDay _$WorkingDayFromJson(Map<String, dynamic> json) {
  return _WorkingDay.fromJson(json);
}

/// @nodoc
mixin _$WorkingDay {
  String get day => throw _privateConstructorUsedError;
  bool get off => throw _privateConstructorUsedError;
  num? get from => throw _privateConstructorUsedError;
  num? get to => throw _privateConstructorUsedError;

  /// Serializes this WorkingDay to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WorkingDay
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkingDayCopyWith<WorkingDay> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkingDayCopyWith<$Res> {
  factory $WorkingDayCopyWith(
          WorkingDay value, $Res Function(WorkingDay) then) =
      _$WorkingDayCopyWithImpl<$Res, WorkingDay>;
  @useResult
  $Res call({String day, bool off, num? from, num? to});
}

/// @nodoc
class _$WorkingDayCopyWithImpl<$Res, $Val extends WorkingDay>
    implements $WorkingDayCopyWith<$Res> {
  _$WorkingDayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkingDay
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? off = null,
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_value.copyWith(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      off: null == off
          ? _value.off
          : off // ignore: cast_nullable_to_non_nullable
              as bool,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as num?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkingDayImplCopyWith<$Res>
    implements $WorkingDayCopyWith<$Res> {
  factory _$$WorkingDayImplCopyWith(
          _$WorkingDayImpl value, $Res Function(_$WorkingDayImpl) then) =
      __$$WorkingDayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String day, bool off, num? from, num? to});
}

/// @nodoc
class __$$WorkingDayImplCopyWithImpl<$Res>
    extends _$WorkingDayCopyWithImpl<$Res, _$WorkingDayImpl>
    implements _$$WorkingDayImplCopyWith<$Res> {
  __$$WorkingDayImplCopyWithImpl(
      _$WorkingDayImpl _value, $Res Function(_$WorkingDayImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkingDay
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? off = null,
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_$WorkingDayImpl(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      off: null == off
          ? _value.off
          : off // ignore: cast_nullable_to_non_nullable
              as bool,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as num?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkingDayImpl implements _WorkingDay {
  const _$WorkingDayImpl(
      {required this.day, required this.off, this.from, this.to});

  factory _$WorkingDayImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkingDayImplFromJson(json);

  @override
  final String day;
  @override
  final bool off;
  @override
  final num? from;
  @override
  final num? to;

  @override
  String toString() {
    return 'WorkingDay(day: $day, off: $off, from: $from, to: $to)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkingDayImpl &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.off, off) || other.off == off) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, day, off, from, to);

  /// Create a copy of WorkingDay
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkingDayImplCopyWith<_$WorkingDayImpl> get copyWith =>
      __$$WorkingDayImplCopyWithImpl<_$WorkingDayImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkingDayImplToJson(
      this,
    );
  }
}

abstract class _WorkingDay implements WorkingDay {
  const factory _WorkingDay(
      {required final String day,
      required final bool off,
      final num? from,
      final num? to}) = _$WorkingDayImpl;

  factory _WorkingDay.fromJson(Map<String, dynamic> json) =
      _$WorkingDayImpl.fromJson;

  @override
  String get day;
  @override
  bool get off;
  @override
  num? get from;
  @override
  num? get to;

  /// Create a copy of WorkingDay
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkingDayImplCopyWith<_$WorkingDayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
