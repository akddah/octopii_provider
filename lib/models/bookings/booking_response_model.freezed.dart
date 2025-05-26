// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookingResponseModel _$BookingResponseModelFromJson(Map<String, dynamic> json) {
  return _BookingResponseModel.fromJson(json);
}

/// @nodoc
mixin _$BookingResponseModel {
  BookingResponseData? get response => throw _privateConstructorUsedError;

  /// Serializes this BookingResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookingResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookingResponseModelCopyWith<BookingResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingResponseModelCopyWith<$Res> {
  factory $BookingResponseModelCopyWith(BookingResponseModel value,
          $Res Function(BookingResponseModel) then) =
      _$BookingResponseModelCopyWithImpl<$Res, BookingResponseModel>;
  @useResult
  $Res call({BookingResponseData? response});

  $BookingResponseDataCopyWith<$Res>? get response;
}

/// @nodoc
class _$BookingResponseModelCopyWithImpl<$Res,
        $Val extends BookingResponseModel>
    implements $BookingResponseModelCopyWith<$Res> {
  _$BookingResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookingResponseModel
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
              as BookingResponseData?,
    ) as $Val);
  }

  /// Create a copy of BookingResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BookingResponseDataCopyWith<$Res>? get response {
    if (_value.response == null) {
      return null;
    }

    return $BookingResponseDataCopyWith<$Res>(_value.response!, (value) {
      return _then(_value.copyWith(response: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookingResponseModelImplCopyWith<$Res>
    implements $BookingResponseModelCopyWith<$Res> {
  factory _$$BookingResponseModelImplCopyWith(_$BookingResponseModelImpl value,
          $Res Function(_$BookingResponseModelImpl) then) =
      __$$BookingResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BookingResponseData? response});

  @override
  $BookingResponseDataCopyWith<$Res>? get response;
}

/// @nodoc
class __$$BookingResponseModelImplCopyWithImpl<$Res>
    extends _$BookingResponseModelCopyWithImpl<$Res, _$BookingResponseModelImpl>
    implements _$$BookingResponseModelImplCopyWith<$Res> {
  __$$BookingResponseModelImplCopyWithImpl(_$BookingResponseModelImpl _value,
      $Res Function(_$BookingResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookingResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_$BookingResponseModelImpl(
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as BookingResponseData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingResponseModelImpl implements _BookingResponseModel {
  _$BookingResponseModelImpl({this.response});

  factory _$BookingResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingResponseModelImplFromJson(json);

  @override
  final BookingResponseData? response;

  @override
  String toString() {
    return 'BookingResponseModel(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingResponseModelImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, response);

  /// Create a copy of BookingResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingResponseModelImplCopyWith<_$BookingResponseModelImpl>
      get copyWith =>
          __$$BookingResponseModelImplCopyWithImpl<_$BookingResponseModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingResponseModelImplToJson(
      this,
    );
  }
}

abstract class _BookingResponseModel implements BookingResponseModel {
  factory _BookingResponseModel({final BookingResponseData? response}) =
      _$BookingResponseModelImpl;

  factory _BookingResponseModel.fromJson(Map<String, dynamic> json) =
      _$BookingResponseModelImpl.fromJson;

  @override
  BookingResponseData? get response;

  /// Create a copy of BookingResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookingResponseModelImplCopyWith<_$BookingResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BookingResponseData _$BookingResponseDataFromJson(Map<String, dynamic> json) {
  return _BookingResponseData.fromJson(json);
}

/// @nodoc
mixin _$BookingResponseData {
  @JsonKey(name: 'current_page')
  int? get currentPage => throw _privateConstructorUsedError;
  List<BookingDetails> get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page')
  int? get lastPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_page')
  int get perPage => throw _privateConstructorUsedError;
  int? get to => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  num? get from => throw _privateConstructorUsedError;

  /// Serializes this BookingResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookingResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookingResponseDataCopyWith<BookingResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingResponseDataCopyWith<$Res> {
  factory $BookingResponseDataCopyWith(
          BookingResponseData value, $Res Function(BookingResponseData) then) =
      _$BookingResponseDataCopyWithImpl<$Res, BookingResponseData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page') int? currentPage,
      List<BookingDetails> data,
      @JsonKey(name: 'last_page') int? lastPage,
      @JsonKey(name: 'per_page') int perPage,
      int? to,
      int? total,
      num? from});
}

/// @nodoc
class _$BookingResponseDataCopyWithImpl<$Res, $Val extends BookingResponseData>
    implements $BookingResponseDataCopyWith<$Res> {
  _$BookingResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookingResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? data = null,
    Object? lastPage = freezed,
    Object? perPage = null,
    Object? to = freezed,
    Object? total = freezed,
    Object? from = freezed,
  }) {
    return _then(_value.copyWith(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BookingDetails>,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookingResponseDataImplCopyWith<$Res>
    implements $BookingResponseDataCopyWith<$Res> {
  factory _$$BookingResponseDataImplCopyWith(_$BookingResponseDataImpl value,
          $Res Function(_$BookingResponseDataImpl) then) =
      __$$BookingResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page') int? currentPage,
      List<BookingDetails> data,
      @JsonKey(name: 'last_page') int? lastPage,
      @JsonKey(name: 'per_page') int perPage,
      int? to,
      int? total,
      num? from});
}

/// @nodoc
class __$$BookingResponseDataImplCopyWithImpl<$Res>
    extends _$BookingResponseDataCopyWithImpl<$Res, _$BookingResponseDataImpl>
    implements _$$BookingResponseDataImplCopyWith<$Res> {
  __$$BookingResponseDataImplCopyWithImpl(_$BookingResponseDataImpl _value,
      $Res Function(_$BookingResponseDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookingResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? data = null,
    Object? lastPage = freezed,
    Object? perPage = null,
    Object? to = freezed,
    Object? total = freezed,
    Object? from = freezed,
  }) {
    return _then(_$BookingResponseDataImpl(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BookingDetails>,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingResponseDataImpl implements _BookingResponseData {
  _$BookingResponseDataImpl(
      {@JsonKey(name: 'current_page') required this.currentPage,
      required final List<BookingDetails> data,
      @JsonKey(name: 'last_page') required this.lastPage,
      @JsonKey(name: 'per_page') required this.perPage,
      this.to,
      this.total,
      this.from})
      : _data = data;

  factory _$BookingResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingResponseDataImplFromJson(json);

  @override
  @JsonKey(name: 'current_page')
  final int? currentPage;
  final List<BookingDetails> _data;
  @override
  List<BookingDetails> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey(name: 'last_page')
  final int? lastPage;
  @override
  @JsonKey(name: 'per_page')
  final int perPage;
  @override
  final int? to;
  @override
  final int? total;
  @override
  final num? from;

  @override
  String toString() {
    return 'BookingResponseData(currentPage: $currentPage, data: $data, lastPage: $lastPage, perPage: $perPage, to: $to, total: $total, from: $from)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingResponseDataImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.from, from) || other.from == from));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentPage,
      const DeepCollectionEquality().hash(_data),
      lastPage,
      perPage,
      to,
      total,
      from);

  /// Create a copy of BookingResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingResponseDataImplCopyWith<_$BookingResponseDataImpl> get copyWith =>
      __$$BookingResponseDataImplCopyWithImpl<_$BookingResponseDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingResponseDataImplToJson(
      this,
    );
  }
}

abstract class _BookingResponseData implements BookingResponseData {
  factory _BookingResponseData(
      {@JsonKey(name: 'current_page') required final int? currentPage,
      required final List<BookingDetails> data,
      @JsonKey(name: 'last_page') required final int? lastPage,
      @JsonKey(name: 'per_page') required final int perPage,
      final int? to,
      final int? total,
      final num? from}) = _$BookingResponseDataImpl;

  factory _BookingResponseData.fromJson(Map<String, dynamic> json) =
      _$BookingResponseDataImpl.fromJson;

  @override
  @JsonKey(name: 'current_page')
  int? get currentPage;
  @override
  List<BookingDetails> get data;
  @override
  @JsonKey(name: 'last_page')
  int? get lastPage;
  @override
  @JsonKey(name: 'per_page')
  int get perPage;
  @override
  int? get to;
  @override
  int? get total;
  @override
  num? get from;

  /// Create a copy of BookingResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookingResponseDataImplCopyWith<_$BookingResponseDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BookingDetails _$BookingDetailsFromJson(Map<String, dynamic> json) {
  return _BookingDetails.fromJson(json);
}

/// @nodoc
mixin _$BookingDetails {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'sector_id')
  int? get sectorId => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_price')
  int? get totalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'service_id')
  int? get serviceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'service_title')
  String? get serviceTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'service_cost')
  String? get serviceCost => throw _privateConstructorUsedError;
  @JsonKey(name: 'areas_id')
  int? get areasId => throw _privateConstructorUsedError;
  Payment? get payment => throw _privateConstructorUsedError;
  List<Provider>? get providers => throw _privateConstructorUsedError;
  List<Service>? get services => throw _privateConstructorUsedError;
  int? get markup => throw _privateConstructorUsedError;
  @JsonKey(name: 'base_price')
  int? get basePrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_id')
  dynamic get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_phone')
  String? get customerPhone => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_name')
  String? get customerName => throw _privateConstructorUsedError;
  @JsonKey(name: 'count_provider')
  int? get countProvider => throw _privateConstructorUsedError;
  @JsonKey(name: 'service_duration')
  num? get serviceDuration => throw _privateConstructorUsedError;
  @JsonKey(name: 'cities_id')
  int? get citiesId => throw _privateConstructorUsedError;
  @JsonKey(name: 'cities_title')
  String? get citiesTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'area_title')
  String? get areaTitle => throw _privateConstructorUsedError;
  @JsonKey(fromJson: stringFromAnyNull, name: 'reference_id')
  String? get referenceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_foreign')
  bool? get isForeign => throw _privateConstructorUsedError;
  @JsonKey(name: 'foreign_address')
  ForeignAddress? get foreignAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'foreign_customer')
  ForeignCustomer? get foreignCustomer => throw _privateConstructorUsedError;

  /// Serializes this BookingDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookingDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookingDetailsCopyWith<BookingDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingDetailsCopyWith<$Res> {
  factory $BookingDetailsCopyWith(
          BookingDetails value, $Res Function(BookingDetails) then) =
      _$BookingDetailsCopyWithImpl<$Res, BookingDetails>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'sector_id') int? sectorId,
      DateTime? date,
      int? status,
      int? total,
      @JsonKey(name: 'total_price') int? totalPrice,
      @JsonKey(name: 'service_id') int? serviceId,
      @JsonKey(name: 'service_title') String? serviceTitle,
      @JsonKey(name: 'service_cost') String? serviceCost,
      @JsonKey(name: 'areas_id') int? areasId,
      Payment? payment,
      List<Provider>? providers,
      List<Service>? services,
      int? markup,
      @JsonKey(name: 'base_price') int? basePrice,
      @JsonKey(name: 'customer_id') dynamic customerId,
      @JsonKey(name: 'customer_phone') String? customerPhone,
      @JsonKey(name: 'customer_name') String? customerName,
      @JsonKey(name: 'count_provider') int? countProvider,
      @JsonKey(name: 'service_duration') num? serviceDuration,
      @JsonKey(name: 'cities_id') int? citiesId,
      @JsonKey(name: 'cities_title') String? citiesTitle,
      @JsonKey(name: 'area_title') String? areaTitle,
      @JsonKey(fromJson: stringFromAnyNull, name: 'reference_id')
      String? referenceId,
      @JsonKey(name: 'is_foreign') bool? isForeign,
      @JsonKey(name: 'foreign_address') ForeignAddress? foreignAddress,
      @JsonKey(name: 'foreign_customer') ForeignCustomer? foreignCustomer});

  $PaymentCopyWith<$Res>? get payment;
  $ForeignAddressCopyWith<$Res>? get foreignAddress;
  $ForeignCustomerCopyWith<$Res>? get foreignCustomer;
}

/// @nodoc
class _$BookingDetailsCopyWithImpl<$Res, $Val extends BookingDetails>
    implements $BookingDetailsCopyWith<$Res> {
  _$BookingDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookingDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sectorId = freezed,
    Object? date = freezed,
    Object? status = freezed,
    Object? total = freezed,
    Object? totalPrice = freezed,
    Object? serviceId = freezed,
    Object? serviceTitle = freezed,
    Object? serviceCost = freezed,
    Object? areasId = freezed,
    Object? payment = freezed,
    Object? providers = freezed,
    Object? services = freezed,
    Object? markup = freezed,
    Object? basePrice = freezed,
    Object? customerId = freezed,
    Object? customerPhone = freezed,
    Object? customerName = freezed,
    Object? countProvider = freezed,
    Object? serviceDuration = freezed,
    Object? citiesId = freezed,
    Object? citiesTitle = freezed,
    Object? areaTitle = freezed,
    Object? referenceId = freezed,
    Object? isForeign = freezed,
    Object? foreignAddress = freezed,
    Object? foreignCustomer = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      sectorId: freezed == sectorId
          ? _value.sectorId
          : sectorId // ignore: cast_nullable_to_non_nullable
              as int?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      serviceId: freezed == serviceId
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as int?,
      serviceTitle: freezed == serviceTitle
          ? _value.serviceTitle
          : serviceTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceCost: freezed == serviceCost
          ? _value.serviceCost
          : serviceCost // ignore: cast_nullable_to_non_nullable
              as String?,
      areasId: freezed == areasId
          ? _value.areasId
          : areasId // ignore: cast_nullable_to_non_nullable
              as int?,
      payment: freezed == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as Payment?,
      providers: freezed == providers
          ? _value.providers
          : providers // ignore: cast_nullable_to_non_nullable
              as List<Provider>?,
      services: freezed == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<Service>?,
      markup: freezed == markup
          ? _value.markup
          : markup // ignore: cast_nullable_to_non_nullable
              as int?,
      basePrice: freezed == basePrice
          ? _value.basePrice
          : basePrice // ignore: cast_nullable_to_non_nullable
              as int?,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      customerPhone: freezed == customerPhone
          ? _value.customerPhone
          : customerPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      countProvider: freezed == countProvider
          ? _value.countProvider
          : countProvider // ignore: cast_nullable_to_non_nullable
              as int?,
      serviceDuration: freezed == serviceDuration
          ? _value.serviceDuration
          : serviceDuration // ignore: cast_nullable_to_non_nullable
              as num?,
      citiesId: freezed == citiesId
          ? _value.citiesId
          : citiesId // ignore: cast_nullable_to_non_nullable
              as int?,
      citiesTitle: freezed == citiesTitle
          ? _value.citiesTitle
          : citiesTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      areaTitle: freezed == areaTitle
          ? _value.areaTitle
          : areaTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceId: freezed == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String?,
      isForeign: freezed == isForeign
          ? _value.isForeign
          : isForeign // ignore: cast_nullable_to_non_nullable
              as bool?,
      foreignAddress: freezed == foreignAddress
          ? _value.foreignAddress
          : foreignAddress // ignore: cast_nullable_to_non_nullable
              as ForeignAddress?,
      foreignCustomer: freezed == foreignCustomer
          ? _value.foreignCustomer
          : foreignCustomer // ignore: cast_nullable_to_non_nullable
              as ForeignCustomer?,
    ) as $Val);
  }

  /// Create a copy of BookingDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentCopyWith<$Res>? get payment {
    if (_value.payment == null) {
      return null;
    }

    return $PaymentCopyWith<$Res>(_value.payment!, (value) {
      return _then(_value.copyWith(payment: value) as $Val);
    });
  }

  /// Create a copy of BookingDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ForeignAddressCopyWith<$Res>? get foreignAddress {
    if (_value.foreignAddress == null) {
      return null;
    }

    return $ForeignAddressCopyWith<$Res>(_value.foreignAddress!, (value) {
      return _then(_value.copyWith(foreignAddress: value) as $Val);
    });
  }

  /// Create a copy of BookingDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ForeignCustomerCopyWith<$Res>? get foreignCustomer {
    if (_value.foreignCustomer == null) {
      return null;
    }

    return $ForeignCustomerCopyWith<$Res>(_value.foreignCustomer!, (value) {
      return _then(_value.copyWith(foreignCustomer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookingDetailsImplCopyWith<$Res>
    implements $BookingDetailsCopyWith<$Res> {
  factory _$$BookingDetailsImplCopyWith(_$BookingDetailsImpl value,
          $Res Function(_$BookingDetailsImpl) then) =
      __$$BookingDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'sector_id') int? sectorId,
      DateTime? date,
      int? status,
      int? total,
      @JsonKey(name: 'total_price') int? totalPrice,
      @JsonKey(name: 'service_id') int? serviceId,
      @JsonKey(name: 'service_title') String? serviceTitle,
      @JsonKey(name: 'service_cost') String? serviceCost,
      @JsonKey(name: 'areas_id') int? areasId,
      Payment? payment,
      List<Provider>? providers,
      List<Service>? services,
      int? markup,
      @JsonKey(name: 'base_price') int? basePrice,
      @JsonKey(name: 'customer_id') dynamic customerId,
      @JsonKey(name: 'customer_phone') String? customerPhone,
      @JsonKey(name: 'customer_name') String? customerName,
      @JsonKey(name: 'count_provider') int? countProvider,
      @JsonKey(name: 'service_duration') num? serviceDuration,
      @JsonKey(name: 'cities_id') int? citiesId,
      @JsonKey(name: 'cities_title') String? citiesTitle,
      @JsonKey(name: 'area_title') String? areaTitle,
      @JsonKey(fromJson: stringFromAnyNull, name: 'reference_id')
      String? referenceId,
      @JsonKey(name: 'is_foreign') bool? isForeign,
      @JsonKey(name: 'foreign_address') ForeignAddress? foreignAddress,
      @JsonKey(name: 'foreign_customer') ForeignCustomer? foreignCustomer});

  @override
  $PaymentCopyWith<$Res>? get payment;
  @override
  $ForeignAddressCopyWith<$Res>? get foreignAddress;
  @override
  $ForeignCustomerCopyWith<$Res>? get foreignCustomer;
}

/// @nodoc
class __$$BookingDetailsImplCopyWithImpl<$Res>
    extends _$BookingDetailsCopyWithImpl<$Res, _$BookingDetailsImpl>
    implements _$$BookingDetailsImplCopyWith<$Res> {
  __$$BookingDetailsImplCopyWithImpl(
      _$BookingDetailsImpl _value, $Res Function(_$BookingDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookingDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sectorId = freezed,
    Object? date = freezed,
    Object? status = freezed,
    Object? total = freezed,
    Object? totalPrice = freezed,
    Object? serviceId = freezed,
    Object? serviceTitle = freezed,
    Object? serviceCost = freezed,
    Object? areasId = freezed,
    Object? payment = freezed,
    Object? providers = freezed,
    Object? services = freezed,
    Object? markup = freezed,
    Object? basePrice = freezed,
    Object? customerId = freezed,
    Object? customerPhone = freezed,
    Object? customerName = freezed,
    Object? countProvider = freezed,
    Object? serviceDuration = freezed,
    Object? citiesId = freezed,
    Object? citiesTitle = freezed,
    Object? areaTitle = freezed,
    Object? referenceId = freezed,
    Object? isForeign = freezed,
    Object? foreignAddress = freezed,
    Object? foreignCustomer = freezed,
  }) {
    return _then(_$BookingDetailsImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      sectorId: freezed == sectorId
          ? _value.sectorId
          : sectorId // ignore: cast_nullable_to_non_nullable
              as int?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      serviceId: freezed == serviceId
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as int?,
      serviceTitle: freezed == serviceTitle
          ? _value.serviceTitle
          : serviceTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceCost: freezed == serviceCost
          ? _value.serviceCost
          : serviceCost // ignore: cast_nullable_to_non_nullable
              as String?,
      areasId: freezed == areasId
          ? _value.areasId
          : areasId // ignore: cast_nullable_to_non_nullable
              as int?,
      payment: freezed == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as Payment?,
      providers: freezed == providers
          ? _value._providers
          : providers // ignore: cast_nullable_to_non_nullable
              as List<Provider>?,
      services: freezed == services
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<Service>?,
      markup: freezed == markup
          ? _value.markup
          : markup // ignore: cast_nullable_to_non_nullable
              as int?,
      basePrice: freezed == basePrice
          ? _value.basePrice
          : basePrice // ignore: cast_nullable_to_non_nullable
              as int?,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      customerPhone: freezed == customerPhone
          ? _value.customerPhone
          : customerPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      countProvider: freezed == countProvider
          ? _value.countProvider
          : countProvider // ignore: cast_nullable_to_non_nullable
              as int?,
      serviceDuration: freezed == serviceDuration
          ? _value.serviceDuration
          : serviceDuration // ignore: cast_nullable_to_non_nullable
              as num?,
      citiesId: freezed == citiesId
          ? _value.citiesId
          : citiesId // ignore: cast_nullable_to_non_nullable
              as int?,
      citiesTitle: freezed == citiesTitle
          ? _value.citiesTitle
          : citiesTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      areaTitle: freezed == areaTitle
          ? _value.areaTitle
          : areaTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceId: freezed == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String?,
      isForeign: freezed == isForeign
          ? _value.isForeign
          : isForeign // ignore: cast_nullable_to_non_nullable
              as bool?,
      foreignAddress: freezed == foreignAddress
          ? _value.foreignAddress
          : foreignAddress // ignore: cast_nullable_to_non_nullable
              as ForeignAddress?,
      foreignCustomer: freezed == foreignCustomer
          ? _value.foreignCustomer
          : foreignCustomer // ignore: cast_nullable_to_non_nullable
              as ForeignCustomer?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingDetailsImpl implements _BookingDetails {
  _$BookingDetailsImpl(
      {required this.id,
      @JsonKey(name: 'sector_id') required this.sectorId,
      required this.date,
      required this.status,
      required this.total,
      @JsonKey(name: 'total_price') required this.totalPrice,
      @JsonKey(name: 'service_id') required this.serviceId,
      @JsonKey(name: 'service_title') required this.serviceTitle,
      @JsonKey(name: 'service_cost') required this.serviceCost,
      @JsonKey(name: 'areas_id') required this.areasId,
      required this.payment,
      required final List<Provider>? providers,
      required final List<Service>? services,
      this.markup,
      @JsonKey(name: 'base_price') this.basePrice,
      @JsonKey(name: 'customer_id') this.customerId,
      @JsonKey(name: 'customer_phone') this.customerPhone,
      @JsonKey(name: 'customer_name') this.customerName,
      @JsonKey(name: 'count_provider') this.countProvider,
      @JsonKey(name: 'service_duration') this.serviceDuration,
      @JsonKey(name: 'cities_id') this.citiesId,
      @JsonKey(name: 'cities_title') this.citiesTitle,
      @JsonKey(name: 'area_title') this.areaTitle,
      @JsonKey(fromJson: stringFromAnyNull, name: 'reference_id')
      this.referenceId,
      @JsonKey(name: 'is_foreign') this.isForeign,
      @JsonKey(name: 'foreign_address') this.foreignAddress,
      @JsonKey(name: 'foreign_customer') this.foreignCustomer})
      : _providers = providers,
        _services = services;

  factory _$BookingDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingDetailsImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'sector_id')
  final int? sectorId;
  @override
  final DateTime? date;
  @override
  final int? status;
  @override
  final int? total;
  @override
  @JsonKey(name: 'total_price')
  final int? totalPrice;
  @override
  @JsonKey(name: 'service_id')
  final int? serviceId;
  @override
  @JsonKey(name: 'service_title')
  final String? serviceTitle;
  @override
  @JsonKey(name: 'service_cost')
  final String? serviceCost;
  @override
  @JsonKey(name: 'areas_id')
  final int? areasId;
  @override
  final Payment? payment;
  final List<Provider>? _providers;
  @override
  List<Provider>? get providers {
    final value = _providers;
    if (value == null) return null;
    if (_providers is EqualUnmodifiableListView) return _providers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Service>? _services;
  @override
  List<Service>? get services {
    final value = _services;
    if (value == null) return null;
    if (_services is EqualUnmodifiableListView) return _services;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? markup;
  @override
  @JsonKey(name: 'base_price')
  final int? basePrice;
  @override
  @JsonKey(name: 'customer_id')
  final dynamic customerId;
  @override
  @JsonKey(name: 'customer_phone')
  final String? customerPhone;
  @override
  @JsonKey(name: 'customer_name')
  final String? customerName;
  @override
  @JsonKey(name: 'count_provider')
  final int? countProvider;
  @override
  @JsonKey(name: 'service_duration')
  final num? serviceDuration;
  @override
  @JsonKey(name: 'cities_id')
  final int? citiesId;
  @override
  @JsonKey(name: 'cities_title')
  final String? citiesTitle;
  @override
  @JsonKey(name: 'area_title')
  final String? areaTitle;
  @override
  @JsonKey(fromJson: stringFromAnyNull, name: 'reference_id')
  final String? referenceId;
  @override
  @JsonKey(name: 'is_foreign')
  final bool? isForeign;
  @override
  @JsonKey(name: 'foreign_address')
  final ForeignAddress? foreignAddress;
  @override
  @JsonKey(name: 'foreign_customer')
  final ForeignCustomer? foreignCustomer;

  @override
  String toString() {
    return 'BookingDetails(id: $id, sectorId: $sectorId, date: $date, status: $status, total: $total, totalPrice: $totalPrice, serviceId: $serviceId, serviceTitle: $serviceTitle, serviceCost: $serviceCost, areasId: $areasId, payment: $payment, providers: $providers, services: $services, markup: $markup, basePrice: $basePrice, customerId: $customerId, customerPhone: $customerPhone, customerName: $customerName, countProvider: $countProvider, serviceDuration: $serviceDuration, citiesId: $citiesId, citiesTitle: $citiesTitle, areaTitle: $areaTitle, referenceId: $referenceId, isForeign: $isForeign, foreignAddress: $foreignAddress, foreignCustomer: $foreignCustomer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingDetailsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sectorId, sectorId) ||
                other.sectorId == sectorId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.serviceId, serviceId) ||
                other.serviceId == serviceId) &&
            (identical(other.serviceTitle, serviceTitle) ||
                other.serviceTitle == serviceTitle) &&
            (identical(other.serviceCost, serviceCost) ||
                other.serviceCost == serviceCost) &&
            (identical(other.areasId, areasId) || other.areasId == areasId) &&
            (identical(other.payment, payment) || other.payment == payment) &&
            const DeepCollectionEquality()
                .equals(other._providers, _providers) &&
            const DeepCollectionEquality().equals(other._services, _services) &&
            (identical(other.markup, markup) || other.markup == markup) &&
            (identical(other.basePrice, basePrice) ||
                other.basePrice == basePrice) &&
            const DeepCollectionEquality()
                .equals(other.customerId, customerId) &&
            (identical(other.customerPhone, customerPhone) ||
                other.customerPhone == customerPhone) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.countProvider, countProvider) ||
                other.countProvider == countProvider) &&
            (identical(other.serviceDuration, serviceDuration) ||
                other.serviceDuration == serviceDuration) &&
            (identical(other.citiesId, citiesId) ||
                other.citiesId == citiesId) &&
            (identical(other.citiesTitle, citiesTitle) ||
                other.citiesTitle == citiesTitle) &&
            (identical(other.areaTitle, areaTitle) ||
                other.areaTitle == areaTitle) &&
            (identical(other.referenceId, referenceId) ||
                other.referenceId == referenceId) &&
            (identical(other.isForeign, isForeign) ||
                other.isForeign == isForeign) &&
            (identical(other.foreignAddress, foreignAddress) ||
                other.foreignAddress == foreignAddress) &&
            (identical(other.foreignCustomer, foreignCustomer) ||
                other.foreignCustomer == foreignCustomer));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        sectorId,
        date,
        status,
        total,
        totalPrice,
        serviceId,
        serviceTitle,
        serviceCost,
        areasId,
        payment,
        const DeepCollectionEquality().hash(_providers),
        const DeepCollectionEquality().hash(_services),
        markup,
        basePrice,
        const DeepCollectionEquality().hash(customerId),
        customerPhone,
        customerName,
        countProvider,
        serviceDuration,
        citiesId,
        citiesTitle,
        areaTitle,
        referenceId,
        isForeign,
        foreignAddress,
        foreignCustomer
      ]);

  /// Create a copy of BookingDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingDetailsImplCopyWith<_$BookingDetailsImpl> get copyWith =>
      __$$BookingDetailsImplCopyWithImpl<_$BookingDetailsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingDetailsImplToJson(
      this,
    );
  }
}

abstract class _BookingDetails implements BookingDetails {
  factory _BookingDetails(
      {required final int? id,
      @JsonKey(name: 'sector_id') required final int? sectorId,
      required final DateTime? date,
      required final int? status,
      required final int? total,
      @JsonKey(name: 'total_price') required final int? totalPrice,
      @JsonKey(name: 'service_id') required final int? serviceId,
      @JsonKey(name: 'service_title') required final String? serviceTitle,
      @JsonKey(name: 'service_cost') required final String? serviceCost,
      @JsonKey(name: 'areas_id') required final int? areasId,
      required final Payment? payment,
      required final List<Provider>? providers,
      required final List<Service>? services,
      final int? markup,
      @JsonKey(name: 'base_price') final int? basePrice,
      @JsonKey(name: 'customer_id') final dynamic customerId,
      @JsonKey(name: 'customer_phone') final String? customerPhone,
      @JsonKey(name: 'customer_name') final String? customerName,
      @JsonKey(name: 'count_provider') final int? countProvider,
      @JsonKey(name: 'service_duration') final num? serviceDuration,
      @JsonKey(name: 'cities_id') final int? citiesId,
      @JsonKey(name: 'cities_title') final String? citiesTitle,
      @JsonKey(name: 'area_title') final String? areaTitle,
      @JsonKey(fromJson: stringFromAnyNull, name: 'reference_id')
      final String? referenceId,
      @JsonKey(name: 'is_foreign') final bool? isForeign,
      @JsonKey(name: 'foreign_address') final ForeignAddress? foreignAddress,
      @JsonKey(name: 'foreign_customer')
      final ForeignCustomer? foreignCustomer}) = _$BookingDetailsImpl;

  factory _BookingDetails.fromJson(Map<String, dynamic> json) =
      _$BookingDetailsImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'sector_id')
  int? get sectorId;
  @override
  DateTime? get date;
  @override
  int? get status;
  @override
  int? get total;
  @override
  @JsonKey(name: 'total_price')
  int? get totalPrice;
  @override
  @JsonKey(name: 'service_id')
  int? get serviceId;
  @override
  @JsonKey(name: 'service_title')
  String? get serviceTitle;
  @override
  @JsonKey(name: 'service_cost')
  String? get serviceCost;
  @override
  @JsonKey(name: 'areas_id')
  int? get areasId;
  @override
  Payment? get payment;
  @override
  List<Provider>? get providers;
  @override
  List<Service>? get services;
  @override
  int? get markup;
  @override
  @JsonKey(name: 'base_price')
  int? get basePrice;
  @override
  @JsonKey(name: 'customer_id')
  dynamic get customerId;
  @override
  @JsonKey(name: 'customer_phone')
  String? get customerPhone;
  @override
  @JsonKey(name: 'customer_name')
  String? get customerName;
  @override
  @JsonKey(name: 'count_provider')
  int? get countProvider;
  @override
  @JsonKey(name: 'service_duration')
  num? get serviceDuration;
  @override
  @JsonKey(name: 'cities_id')
  int? get citiesId;
  @override
  @JsonKey(name: 'cities_title')
  String? get citiesTitle;
  @override
  @JsonKey(name: 'area_title')
  String? get areaTitle;
  @override
  @JsonKey(fromJson: stringFromAnyNull, name: 'reference_id')
  String? get referenceId;
  @override
  @JsonKey(name: 'is_foreign')
  bool? get isForeign;
  @override
  @JsonKey(name: 'foreign_address')
  ForeignAddress? get foreignAddress;
  @override
  @JsonKey(name: 'foreign_customer')
  ForeignCustomer? get foreignCustomer;

  /// Create a copy of BookingDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookingDetailsImplCopyWith<_$BookingDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ForeignAddress _$ForeignAddressFromJson(Map<String, dynamic> json) {
  return _ForeignAddress.fromJson(json);
}

/// @nodoc
mixin _$ForeignAddress {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'owner_id')
  int? get ownerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'owner_type')
  int? get owner_type => throw _privateConstructorUsedError;
  @JsonKey(name: 'area_id')
  int? get area_id => throw _privateConstructorUsedError;
  @JsonKey(name: 'location_name')
  String? get location_name => throw _privateConstructorUsedError;
  @JsonKey(name: 'unit_type')
  int? get unit_type => throw _privateConstructorUsedError;
  @JsonKey(name: 'street_name')
  String? get street_name => throw _privateConstructorUsedError;
  @JsonKey(name: 'building_number')
  String? get building_number => throw _privateConstructorUsedError;
  @JsonKey(name: 'floor_number')
  String? get floor_number => throw _privateConstructorUsedError;
  @JsonKey(name: 'unit_number')
  String? get unit_number => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String? get lat => throw _privateConstructorUsedError;
  String? get lng => throw _privateConstructorUsedError;

  /// Serializes this ForeignAddress to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ForeignAddress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ForeignAddressCopyWith<ForeignAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForeignAddressCopyWith<$Res> {
  factory $ForeignAddressCopyWith(
          ForeignAddress value, $Res Function(ForeignAddress) then) =
      _$ForeignAddressCopyWithImpl<$Res, ForeignAddress>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'owner_id') int? ownerId,
      @JsonKey(name: 'owner_type') int? owner_type,
      @JsonKey(name: 'area_id') int? area_id,
      @JsonKey(name: 'location_name') String? location_name,
      @JsonKey(name: 'unit_type') int? unit_type,
      @JsonKey(name: 'street_name') String? street_name,
      @JsonKey(name: 'building_number') String? building_number,
      @JsonKey(name: 'floor_number') String? floor_number,
      @JsonKey(name: 'unit_number') String? unit_number,
      String? notes,
      String? lat,
      String? lng});
}

/// @nodoc
class _$ForeignAddressCopyWithImpl<$Res, $Val extends ForeignAddress>
    implements $ForeignAddressCopyWith<$Res> {
  _$ForeignAddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ForeignAddress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? ownerId = freezed,
    Object? owner_type = freezed,
    Object? area_id = freezed,
    Object? location_name = freezed,
    Object? unit_type = freezed,
    Object? street_name = freezed,
    Object? building_number = freezed,
    Object? floor_number = freezed,
    Object? unit_number = freezed,
    Object? notes = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      ownerId: freezed == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int?,
      owner_type: freezed == owner_type
          ? _value.owner_type
          : owner_type // ignore: cast_nullable_to_non_nullable
              as int?,
      area_id: freezed == area_id
          ? _value.area_id
          : area_id // ignore: cast_nullable_to_non_nullable
              as int?,
      location_name: freezed == location_name
          ? _value.location_name
          : location_name // ignore: cast_nullable_to_non_nullable
              as String?,
      unit_type: freezed == unit_type
          ? _value.unit_type
          : unit_type // ignore: cast_nullable_to_non_nullable
              as int?,
      street_name: freezed == street_name
          ? _value.street_name
          : street_name // ignore: cast_nullable_to_non_nullable
              as String?,
      building_number: freezed == building_number
          ? _value.building_number
          : building_number // ignore: cast_nullable_to_non_nullable
              as String?,
      floor_number: freezed == floor_number
          ? _value.floor_number
          : floor_number // ignore: cast_nullable_to_non_nullable
              as String?,
      unit_number: freezed == unit_number
          ? _value.unit_number
          : unit_number // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForeignAddressImplCopyWith<$Res>
    implements $ForeignAddressCopyWith<$Res> {
  factory _$$ForeignAddressImplCopyWith(_$ForeignAddressImpl value,
          $Res Function(_$ForeignAddressImpl) then) =
      __$$ForeignAddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'owner_id') int? ownerId,
      @JsonKey(name: 'owner_type') int? owner_type,
      @JsonKey(name: 'area_id') int? area_id,
      @JsonKey(name: 'location_name') String? location_name,
      @JsonKey(name: 'unit_type') int? unit_type,
      @JsonKey(name: 'street_name') String? street_name,
      @JsonKey(name: 'building_number') String? building_number,
      @JsonKey(name: 'floor_number') String? floor_number,
      @JsonKey(name: 'unit_number') String? unit_number,
      String? notes,
      String? lat,
      String? lng});
}

/// @nodoc
class __$$ForeignAddressImplCopyWithImpl<$Res>
    extends _$ForeignAddressCopyWithImpl<$Res, _$ForeignAddressImpl>
    implements _$$ForeignAddressImplCopyWith<$Res> {
  __$$ForeignAddressImplCopyWithImpl(
      _$ForeignAddressImpl _value, $Res Function(_$ForeignAddressImpl) _then)
      : super(_value, _then);

  /// Create a copy of ForeignAddress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? ownerId = freezed,
    Object? owner_type = freezed,
    Object? area_id = freezed,
    Object? location_name = freezed,
    Object? unit_type = freezed,
    Object? street_name = freezed,
    Object? building_number = freezed,
    Object? floor_number = freezed,
    Object? unit_number = freezed,
    Object? notes = freezed,
    Object? lat = freezed,
    Object? lng = freezed,
  }) {
    return _then(_$ForeignAddressImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      ownerId: freezed == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int?,
      owner_type: freezed == owner_type
          ? _value.owner_type
          : owner_type // ignore: cast_nullable_to_non_nullable
              as int?,
      area_id: freezed == area_id
          ? _value.area_id
          : area_id // ignore: cast_nullable_to_non_nullable
              as int?,
      location_name: freezed == location_name
          ? _value.location_name
          : location_name // ignore: cast_nullable_to_non_nullable
              as String?,
      unit_type: freezed == unit_type
          ? _value.unit_type
          : unit_type // ignore: cast_nullable_to_non_nullable
              as int?,
      street_name: freezed == street_name
          ? _value.street_name
          : street_name // ignore: cast_nullable_to_non_nullable
              as String?,
      building_number: freezed == building_number
          ? _value.building_number
          : building_number // ignore: cast_nullable_to_non_nullable
              as String?,
      floor_number: freezed == floor_number
          ? _value.floor_number
          : floor_number // ignore: cast_nullable_to_non_nullable
              as String?,
      unit_number: freezed == unit_number
          ? _value.unit_number
          : unit_number // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForeignAddressImpl implements _ForeignAddress {
  _$ForeignAddressImpl(
      {this.id,
      @JsonKey(name: 'owner_id') this.ownerId,
      @JsonKey(name: 'owner_type') this.owner_type,
      @JsonKey(name: 'area_id') this.area_id,
      @JsonKey(name: 'location_name') this.location_name,
      @JsonKey(name: 'unit_type') this.unit_type,
      @JsonKey(name: 'street_name') this.street_name,
      @JsonKey(name: 'building_number') this.building_number,
      @JsonKey(name: 'floor_number') this.floor_number,
      @JsonKey(name: 'unit_number') this.unit_number,
      this.notes,
      this.lat,
      this.lng});

  factory _$ForeignAddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForeignAddressImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'owner_id')
  final int? ownerId;
  @override
  @JsonKey(name: 'owner_type')
  final int? owner_type;
  @override
  @JsonKey(name: 'area_id')
  final int? area_id;
  @override
  @JsonKey(name: 'location_name')
  final String? location_name;
  @override
  @JsonKey(name: 'unit_type')
  final int? unit_type;
  @override
  @JsonKey(name: 'street_name')
  final String? street_name;
  @override
  @JsonKey(name: 'building_number')
  final String? building_number;
  @override
  @JsonKey(name: 'floor_number')
  final String? floor_number;
  @override
  @JsonKey(name: 'unit_number')
  final String? unit_number;
  @override
  final String? notes;
  @override
  final String? lat;
  @override
  final String? lng;

  @override
  String toString() {
    return 'ForeignAddress(id: $id, ownerId: $ownerId, owner_type: $owner_type, area_id: $area_id, location_name: $location_name, unit_type: $unit_type, street_name: $street_name, building_number: $building_number, floor_number: $floor_number, unit_number: $unit_number, notes: $notes, lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForeignAddressImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.owner_type, owner_type) ||
                other.owner_type == owner_type) &&
            (identical(other.area_id, area_id) || other.area_id == area_id) &&
            (identical(other.location_name, location_name) ||
                other.location_name == location_name) &&
            (identical(other.unit_type, unit_type) ||
                other.unit_type == unit_type) &&
            (identical(other.street_name, street_name) ||
                other.street_name == street_name) &&
            (identical(other.building_number, building_number) ||
                other.building_number == building_number) &&
            (identical(other.floor_number, floor_number) ||
                other.floor_number == floor_number) &&
            (identical(other.unit_number, unit_number) ||
                other.unit_number == unit_number) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      ownerId,
      owner_type,
      area_id,
      location_name,
      unit_type,
      street_name,
      building_number,
      floor_number,
      unit_number,
      notes,
      lat,
      lng);

  /// Create a copy of ForeignAddress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForeignAddressImplCopyWith<_$ForeignAddressImpl> get copyWith =>
      __$$ForeignAddressImplCopyWithImpl<_$ForeignAddressImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForeignAddressImplToJson(
      this,
    );
  }
}

abstract class _ForeignAddress implements ForeignAddress {
  factory _ForeignAddress(
      {final int? id,
      @JsonKey(name: 'owner_id') final int? ownerId,
      @JsonKey(name: 'owner_type') final int? owner_type,
      @JsonKey(name: 'area_id') final int? area_id,
      @JsonKey(name: 'location_name') final String? location_name,
      @JsonKey(name: 'unit_type') final int? unit_type,
      @JsonKey(name: 'street_name') final String? street_name,
      @JsonKey(name: 'building_number') final String? building_number,
      @JsonKey(name: 'floor_number') final String? floor_number,
      @JsonKey(name: 'unit_number') final String? unit_number,
      final String? notes,
      final String? lat,
      final String? lng}) = _$ForeignAddressImpl;

  factory _ForeignAddress.fromJson(Map<String, dynamic> json) =
      _$ForeignAddressImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'owner_id')
  int? get ownerId;
  @override
  @JsonKey(name: 'owner_type')
  int? get owner_type;
  @override
  @JsonKey(name: 'area_id')
  int? get area_id;
  @override
  @JsonKey(name: 'location_name')
  String? get location_name;
  @override
  @JsonKey(name: 'unit_type')
  int? get unit_type;
  @override
  @JsonKey(name: 'street_name')
  String? get street_name;
  @override
  @JsonKey(name: 'building_number')
  String? get building_number;
  @override
  @JsonKey(name: 'floor_number')
  String? get floor_number;
  @override
  @JsonKey(name: 'unit_number')
  String? get unit_number;
  @override
  String? get notes;
  @override
  String? get lat;
  @override
  String? get lng;

  /// Create a copy of ForeignAddress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForeignAddressImplCopyWith<_$ForeignAddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ForeignCustomer _$ForeignCustomerFromJson(Map<String, dynamic> json) {
  return _ForeignCustomer.fromJson(json);
}

/// @nodoc
mixin _$ForeignCustomer {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;

  /// Serializes this ForeignCustomer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ForeignCustomer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ForeignCustomerCopyWith<ForeignCustomer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForeignCustomerCopyWith<$Res> {
  factory $ForeignCustomerCopyWith(
          ForeignCustomer value, $Res Function(ForeignCustomer) then) =
      _$ForeignCustomerCopyWithImpl<$Res, ForeignCustomer>;
  @useResult
  $Res call({int? id, String? name, String? phone});
}

/// @nodoc
class _$ForeignCustomerCopyWithImpl<$Res, $Val extends ForeignCustomer>
    implements $ForeignCustomerCopyWith<$Res> {
  _$ForeignCustomerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ForeignCustomer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? phone = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForeignCustomerImplCopyWith<$Res>
    implements $ForeignCustomerCopyWith<$Res> {
  factory _$$ForeignCustomerImplCopyWith(_$ForeignCustomerImpl value,
          $Res Function(_$ForeignCustomerImpl) then) =
      __$$ForeignCustomerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, String? phone});
}

/// @nodoc
class __$$ForeignCustomerImplCopyWithImpl<$Res>
    extends _$ForeignCustomerCopyWithImpl<$Res, _$ForeignCustomerImpl>
    implements _$$ForeignCustomerImplCopyWith<$Res> {
  __$$ForeignCustomerImplCopyWithImpl(
      _$ForeignCustomerImpl _value, $Res Function(_$ForeignCustomerImpl) _then)
      : super(_value, _then);

  /// Create a copy of ForeignCustomer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? phone = freezed,
  }) {
    return _then(_$ForeignCustomerImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForeignCustomerImpl implements _ForeignCustomer {
  _$ForeignCustomerImpl({this.id, this.name, this.phone});

  factory _$ForeignCustomerImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForeignCustomerImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? phone;

  @override
  String toString() {
    return 'ForeignCustomer(id: $id, name: $name, phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForeignCustomerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, phone);

  /// Create a copy of ForeignCustomer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForeignCustomerImplCopyWith<_$ForeignCustomerImpl> get copyWith =>
      __$$ForeignCustomerImplCopyWithImpl<_$ForeignCustomerImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForeignCustomerImplToJson(
      this,
    );
  }
}

abstract class _ForeignCustomer implements ForeignCustomer {
  factory _ForeignCustomer(
      {final int? id,
      final String? name,
      final String? phone}) = _$ForeignCustomerImpl;

  factory _ForeignCustomer.fromJson(Map<String, dynamic> json) =
      _$ForeignCustomerImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get phone;

  /// Create a copy of ForeignCustomer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForeignCustomerImplCopyWith<_$ForeignCustomerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Payment _$PaymentFromJson(Map<String, dynamic> json) {
  return _Payment.fromJson(json);
}

/// @nodoc
mixin _$Payment {
  @JsonKey(fromJson: PaymentMethodExtension.fromJson)
  PaymentMethod get method => throw _privateConstructorUsedError;
  @JsonKey(fromJson: PaymentStatusExtension.fromJson)
  PaymentStatus get status => throw _privateConstructorUsedError;

  /// Serializes this Payment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentCopyWith<Payment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentCopyWith<$Res> {
  factory $PaymentCopyWith(Payment value, $Res Function(Payment) then) =
      _$PaymentCopyWithImpl<$Res, Payment>;
  @useResult
  $Res call(
      {@JsonKey(fromJson: PaymentMethodExtension.fromJson) PaymentMethod method,
      @JsonKey(fromJson: PaymentStatusExtension.fromJson)
      PaymentStatus status});
}

/// @nodoc
class _$PaymentCopyWithImpl<$Res, $Val extends Payment>
    implements $PaymentCopyWith<$Res> {
  _$PaymentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? method = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as PaymentMethod,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PaymentStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentImplCopyWith<$Res> implements $PaymentCopyWith<$Res> {
  factory _$$PaymentImplCopyWith(
          _$PaymentImpl value, $Res Function(_$PaymentImpl) then) =
      __$$PaymentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: PaymentMethodExtension.fromJson) PaymentMethod method,
      @JsonKey(fromJson: PaymentStatusExtension.fromJson)
      PaymentStatus status});
}

/// @nodoc
class __$$PaymentImplCopyWithImpl<$Res>
    extends _$PaymentCopyWithImpl<$Res, _$PaymentImpl>
    implements _$$PaymentImplCopyWith<$Res> {
  __$$PaymentImplCopyWithImpl(
      _$PaymentImpl _value, $Res Function(_$PaymentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? method = null,
    Object? status = null,
  }) {
    return _then(_$PaymentImpl(
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as PaymentMethod,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PaymentStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentImpl implements _Payment {
  _$PaymentImpl(
      {@JsonKey(fromJson: PaymentMethodExtension.fromJson) required this.method,
      @JsonKey(fromJson: PaymentStatusExtension.fromJson)
      required this.status});

  factory _$PaymentImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentImplFromJson(json);

  @override
  @JsonKey(fromJson: PaymentMethodExtension.fromJson)
  final PaymentMethod method;
  @override
  @JsonKey(fromJson: PaymentStatusExtension.fromJson)
  final PaymentStatus status;

  @override
  String toString() {
    return 'Payment(method: $method, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentImpl &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, method, status);

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentImplCopyWith<_$PaymentImpl> get copyWith =>
      __$$PaymentImplCopyWithImpl<_$PaymentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentImplToJson(
      this,
    );
  }
}

abstract class _Payment implements Payment {
  factory _Payment(
      {@JsonKey(fromJson: PaymentMethodExtension.fromJson)
      required final PaymentMethod method,
      @JsonKey(fromJson: PaymentStatusExtension.fromJson)
      required final PaymentStatus status}) = _$PaymentImpl;

  factory _Payment.fromJson(Map<String, dynamic> json) = _$PaymentImpl.fromJson;

  @override
  @JsonKey(fromJson: PaymentMethodExtension.fromJson)
  PaymentMethod get method;
  @override
  @JsonKey(fromJson: PaymentStatusExtension.fromJson)
  PaymentStatus get status;

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentImplCopyWith<_$PaymentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Provider _$ProviderFromJson(Map<String, dynamic> json) {
  return _Provider.fromJson(json);
}

/// @nodoc
mixin _$Provider {
  int get id => throw _privateConstructorUsedError;
  int get rank => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String get lastName => throw _privateConstructorUsedError;

  /// Serializes this Provider to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Provider
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProviderCopyWith<Provider> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProviderCopyWith<$Res> {
  factory $ProviderCopyWith(Provider value, $Res Function(Provider) then) =
      _$ProviderCopyWithImpl<$Res, Provider>;
  @useResult
  $Res call(
      {int id,
      int rank,
      int rating,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName});
}

/// @nodoc
class _$ProviderCopyWithImpl<$Res, $Val extends Provider>
    implements $ProviderCopyWith<$Res> {
  _$ProviderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Provider
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? rank = null,
    Object? rating = null,
    Object? firstName = null,
    Object? lastName = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProviderImplCopyWith<$Res>
    implements $ProviderCopyWith<$Res> {
  factory _$$ProviderImplCopyWith(
          _$ProviderImpl value, $Res Function(_$ProviderImpl) then) =
      __$$ProviderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int rank,
      int rating,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName});
}

/// @nodoc
class __$$ProviderImplCopyWithImpl<$Res>
    extends _$ProviderCopyWithImpl<$Res, _$ProviderImpl>
    implements _$$ProviderImplCopyWith<$Res> {
  __$$ProviderImplCopyWithImpl(
      _$ProviderImpl _value, $Res Function(_$ProviderImpl) _then)
      : super(_value, _then);

  /// Create a copy of Provider
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? rank = null,
    Object? rating = null,
    Object? firstName = null,
    Object? lastName = null,
  }) {
    return _then(_$ProviderImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProviderImpl implements _Provider {
  _$ProviderImpl(
      {required this.id,
      required this.rank,
      required this.rating,
      @JsonKey(name: 'first_name') required this.firstName,
      @JsonKey(name: 'last_name') required this.lastName});

  factory _$ProviderImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProviderImplFromJson(json);

  @override
  final int id;
  @override
  final int rank;
  @override
  final int rating;
  @override
  @JsonKey(name: 'first_name')
  final String firstName;
  @override
  @JsonKey(name: 'last_name')
  final String lastName;

  @override
  String toString() {
    return 'Provider(id: $id, rank: $rank, rating: $rating, firstName: $firstName, lastName: $lastName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProviderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.rank, rank) || other.rank == rank) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, rank, rating, firstName, lastName);

  /// Create a copy of Provider
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProviderImplCopyWith<_$ProviderImpl> get copyWith =>
      __$$ProviderImplCopyWithImpl<_$ProviderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProviderImplToJson(
      this,
    );
  }
}

abstract class _Provider implements Provider {
  factory _Provider(
          {required final int id,
          required final int rank,
          required final int rating,
          @JsonKey(name: 'first_name') required final String firstName,
          @JsonKey(name: 'last_name') required final String lastName}) =
      _$ProviderImpl;

  factory _Provider.fromJson(Map<String, dynamic> json) =
      _$ProviderImpl.fromJson;

  @override
  int get id;
  @override
  int get rank;
  @override
  int get rating;
  @override
  @JsonKey(name: 'first_name')
  String get firstName;
  @override
  @JsonKey(name: 'last_name')
  String get lastName;

  /// Create a copy of Provider
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProviderImplCopyWith<_$ProviderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Service _$ServiceFromJson(Map<String, dynamic> json) {
  return _Service.fromJson(json);
}

/// @nodoc
mixin _$Service {
  int get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'title_en')
  String? get titleEn => throw _privateConstructorUsedError;
  @JsonKey(name: 'title_ar')
  String? get titleAr => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  num? get duration => throw _privateConstructorUsedError;

  /// Serializes this Service to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Service
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServiceCopyWith<Service> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceCopyWith<$Res> {
  factory $ServiceCopyWith(Service value, $Res Function(Service) then) =
      _$ServiceCopyWithImpl<$Res, Service>;
  @useResult
  $Res call(
      {int id,
      String? title,
      @JsonKey(name: 'title_en') String? titleEn,
      @JsonKey(name: 'title_ar') String? titleAr,
      String? icon,
      num? duration});
}

/// @nodoc
class _$ServiceCopyWithImpl<$Res, $Val extends Service>
    implements $ServiceCopyWith<$Res> {
  _$ServiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Service
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? titleEn = freezed,
    Object? titleAr = freezed,
    Object? icon = freezed,
    Object? duration = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      titleEn: freezed == titleEn
          ? _value.titleEn
          : titleEn // ignore: cast_nullable_to_non_nullable
              as String?,
      titleAr: freezed == titleAr
          ? _value.titleAr
          : titleAr // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServiceImplCopyWith<$Res> implements $ServiceCopyWith<$Res> {
  factory _$$ServiceImplCopyWith(
          _$ServiceImpl value, $Res Function(_$ServiceImpl) then) =
      __$$ServiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? title,
      @JsonKey(name: 'title_en') String? titleEn,
      @JsonKey(name: 'title_ar') String? titleAr,
      String? icon,
      num? duration});
}

/// @nodoc
class __$$ServiceImplCopyWithImpl<$Res>
    extends _$ServiceCopyWithImpl<$Res, _$ServiceImpl>
    implements _$$ServiceImplCopyWith<$Res> {
  __$$ServiceImplCopyWithImpl(
      _$ServiceImpl _value, $Res Function(_$ServiceImpl) _then)
      : super(_value, _then);

  /// Create a copy of Service
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? titleEn = freezed,
    Object? titleAr = freezed,
    Object? icon = freezed,
    Object? duration = freezed,
  }) {
    return _then(_$ServiceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      titleEn: freezed == titleEn
          ? _value.titleEn
          : titleEn // ignore: cast_nullable_to_non_nullable
              as String?,
      titleAr: freezed == titleAr
          ? _value.titleAr
          : titleAr // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServiceImpl extends _Service {
  _$ServiceImpl(
      {required this.id,
      this.title,
      @JsonKey(name: 'title_en') this.titleEn,
      @JsonKey(name: 'title_ar') this.titleAr,
      this.icon,
      this.duration})
      : super._();

  factory _$ServiceImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServiceImplFromJson(json);

  @override
  final int id;
  @override
  final String? title;
  @override
  @JsonKey(name: 'title_en')
  final String? titleEn;
  @override
  @JsonKey(name: 'title_ar')
  final String? titleAr;
  @override
  final String? icon;
  @override
  final num? duration;

  @override
  String toString() {
    return 'Service(id: $id, title: $title, titleEn: $titleEn, titleAr: $titleAr, icon: $icon, duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.titleEn, titleEn) || other.titleEn == titleEn) &&
            (identical(other.titleAr, titleAr) || other.titleAr == titleAr) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, titleEn, titleAr, icon, duration);

  /// Create a copy of Service
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceImplCopyWith<_$ServiceImpl> get copyWith =>
      __$$ServiceImplCopyWithImpl<_$ServiceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceImplToJson(
      this,
    );
  }
}

abstract class _Service extends Service {
  factory _Service(
      {required final int id,
      final String? title,
      @JsonKey(name: 'title_en') final String? titleEn,
      @JsonKey(name: 'title_ar') final String? titleAr,
      final String? icon,
      final num? duration}) = _$ServiceImpl;
  _Service._() : super._();

  factory _Service.fromJson(Map<String, dynamic> json) = _$ServiceImpl.fromJson;

  @override
  int get id;
  @override
  String? get title;
  @override
  @JsonKey(name: 'title_en')
  String? get titleEn;
  @override
  @JsonKey(name: 'title_ar')
  String? get titleAr;
  @override
  String? get icon;
  @override
  num? get duration;

  /// Create a copy of Service
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServiceImplCopyWith<_$ServiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
