// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_details_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookingDetailsData _$BookingDetailsDataFromJson(Map<String, dynamic> json) {
  return _BookingDetailsData.fromJson(json);
}

/// @nodoc
mixin _$BookingDetailsData {
  BookingResponse? get response => throw _privateConstructorUsedError;

  /// Serializes this BookingDetailsData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookingDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookingDetailsDataCopyWith<BookingDetailsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingDetailsDataCopyWith<$Res> {
  factory $BookingDetailsDataCopyWith(
          BookingDetailsData value, $Res Function(BookingDetailsData) then) =
      _$BookingDetailsDataCopyWithImpl<$Res, BookingDetailsData>;
  @useResult
  $Res call({BookingResponse? response});

  $BookingResponseCopyWith<$Res>? get response;
}

/// @nodoc
class _$BookingDetailsDataCopyWithImpl<$Res, $Val extends BookingDetailsData>
    implements $BookingDetailsDataCopyWith<$Res> {
  _$BookingDetailsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookingDetailsData
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
              as BookingResponse?,
    ) as $Val);
  }

  /// Create a copy of BookingDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BookingResponseCopyWith<$Res>? get response {
    if (_value.response == null) {
      return null;
    }

    return $BookingResponseCopyWith<$Res>(_value.response!, (value) {
      return _then(_value.copyWith(response: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookingDetailsDataImplCopyWith<$Res>
    implements $BookingDetailsDataCopyWith<$Res> {
  factory _$$BookingDetailsDataImplCopyWith(_$BookingDetailsDataImpl value,
          $Res Function(_$BookingDetailsDataImpl) then) =
      __$$BookingDetailsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BookingResponse? response});

  @override
  $BookingResponseCopyWith<$Res>? get response;
}

/// @nodoc
class __$$BookingDetailsDataImplCopyWithImpl<$Res>
    extends _$BookingDetailsDataCopyWithImpl<$Res, _$BookingDetailsDataImpl>
    implements _$$BookingDetailsDataImplCopyWith<$Res> {
  __$$BookingDetailsDataImplCopyWithImpl(_$BookingDetailsDataImpl _value,
      $Res Function(_$BookingDetailsDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookingDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_$BookingDetailsDataImpl(
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as BookingResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingDetailsDataImpl implements _BookingDetailsData {
  const _$BookingDetailsDataImpl({this.response});

  factory _$BookingDetailsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingDetailsDataImplFromJson(json);

  @override
  final BookingResponse? response;

  @override
  String toString() {
    return 'BookingDetailsData(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingDetailsDataImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, response);

  /// Create a copy of BookingDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingDetailsDataImplCopyWith<_$BookingDetailsDataImpl> get copyWith =>
      __$$BookingDetailsDataImplCopyWithImpl<_$BookingDetailsDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingDetailsDataImplToJson(
      this,
    );
  }
}

abstract class _BookingDetailsData implements BookingDetailsData {
  const factory _BookingDetailsData({final BookingResponse? response}) =
      _$BookingDetailsDataImpl;

  factory _BookingDetailsData.fromJson(Map<String, dynamic> json) =
      _$BookingDetailsDataImpl.fromJson;

  @override
  BookingResponse? get response;

  /// Create a copy of BookingDetailsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookingDetailsDataImplCopyWith<_$BookingDetailsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BookingResponse _$BookingResponseFromJson(Map<String, dynamic> json) {
  return _BookingResponse.fromJson(json);
}

/// @nodoc
mixin _$BookingResponse {
  int get id => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  num? get total => throw _privateConstructorUsedError;
  String? get discount => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_price')
  num? get totalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_id')
  dynamic get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_name')
  String? get customerName => throw _privateConstructorUsedError;
  Payment? get payment => throw _privateConstructorUsedError;
  List<Provider>? get providers => throw _privateConstructorUsedError;
  List<Service>? get services => throw _privateConstructorUsedError;
  @JsonKey(name: 'service_id')
  int? get serviceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'service_title')
  String? get serviceTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'service_duration')
  double? get serviceDuration => throw _privateConstructorUsedError;
  @JsonKey(name: 'service_cost')
  String? get serviceCost => throw _privateConstructorUsedError;
  @JsonKey(name: 'booking_status', fromJson: BookingStatusExtension.fromValue)
  BookingStatus get bookingStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_phone')
  String? get customerPhone => throw _privateConstructorUsedError;
  num? get basePrice => throw _privateConstructorUsedError;
  String? get feedback => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  @JsonKey(name: 'package_id')
  num? get packageId => throw _privateConstructorUsedError;
  @JsonKey(name: 'country_code')
  num? get countryCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'ended_date')
  DateTime? get endedDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_by')
  DateTime? get createdBy => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  Address? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_foreign')
  bool? get isForeign => throw _privateConstructorUsedError;
  @JsonKey(name: 'foreign_address')
  Address? get foreignAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'foreign_customer')
  ForeignCustomer? get foreignCustomer => throw _privateConstructorUsedError;

  /// Serializes this BookingResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookingResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookingResponseCopyWith<BookingResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingResponseCopyWith<$Res> {
  factory $BookingResponseCopyWith(
          BookingResponse value, $Res Function(BookingResponse) then) =
      _$BookingResponseCopyWithImpl<$Res, BookingResponse>;
  @useResult
  $Res call(
      {int id,
      DateTime? date,
      int? status,
      num? total,
      String? discount,
      @JsonKey(name: 'total_price') num? totalPrice,
      @JsonKey(name: 'customer_id') dynamic customerId,
      @JsonKey(name: 'customer_name') String? customerName,
      Payment? payment,
      List<Provider>? providers,
      List<Service>? services,
      @JsonKey(name: 'service_id') int? serviceId,
      @JsonKey(name: 'service_title') String? serviceTitle,
      @JsonKey(name: 'service_duration') double? serviceDuration,
      @JsonKey(name: 'service_cost') String? serviceCost,
      @JsonKey(
          name: 'booking_status', fromJson: BookingStatusExtension.fromValue)
      BookingStatus bookingStatus,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'customer_phone') String? customerPhone,
      num? basePrice,
      String? feedback,
      String? notes,
      @JsonKey(name: 'package_id') num? packageId,
      @JsonKey(name: 'country_code') num? countryCode,
      @JsonKey(name: 'ended_date') DateTime? endedDate,
      @JsonKey(name: 'created_by') DateTime? createdBy,
      @JsonKey(includeIfNull: false) Address? address,
      @JsonKey(name: 'is_foreign') bool? isForeign,
      @JsonKey(name: 'foreign_address') Address? foreignAddress,
      @JsonKey(name: 'foreign_customer') ForeignCustomer? foreignCustomer});

  $PaymentCopyWith<$Res>? get payment;
  $AddressCopyWith<$Res>? get address;
  $AddressCopyWith<$Res>? get foreignAddress;
  $ForeignCustomerCopyWith<$Res>? get foreignCustomer;
}

/// @nodoc
class _$BookingResponseCopyWithImpl<$Res, $Val extends BookingResponse>
    implements $BookingResponseCopyWith<$Res> {
  _$BookingResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookingResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = freezed,
    Object? status = freezed,
    Object? total = freezed,
    Object? discount = freezed,
    Object? totalPrice = freezed,
    Object? customerId = freezed,
    Object? customerName = freezed,
    Object? payment = freezed,
    Object? providers = freezed,
    Object? services = freezed,
    Object? serviceId = freezed,
    Object? serviceTitle = freezed,
    Object? serviceDuration = freezed,
    Object? serviceCost = freezed,
    Object? bookingStatus = null,
    Object? createdAt = freezed,
    Object? customerPhone = freezed,
    Object? basePrice = freezed,
    Object? feedback = freezed,
    Object? notes = freezed,
    Object? packageId = freezed,
    Object? countryCode = freezed,
    Object? endedDate = freezed,
    Object? createdBy = freezed,
    Object? address = freezed,
    Object? isForeign = freezed,
    Object? foreignAddress = freezed,
    Object? foreignCustomer = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
              as num?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as num?,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
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
      serviceId: freezed == serviceId
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as int?,
      serviceTitle: freezed == serviceTitle
          ? _value.serviceTitle
          : serviceTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceDuration: freezed == serviceDuration
          ? _value.serviceDuration
          : serviceDuration // ignore: cast_nullable_to_non_nullable
              as double?,
      serviceCost: freezed == serviceCost
          ? _value.serviceCost
          : serviceCost // ignore: cast_nullable_to_non_nullable
              as String?,
      bookingStatus: null == bookingStatus
          ? _value.bookingStatus
          : bookingStatus // ignore: cast_nullable_to_non_nullable
              as BookingStatus,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      customerPhone: freezed == customerPhone
          ? _value.customerPhone
          : customerPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      basePrice: freezed == basePrice
          ? _value.basePrice
          : basePrice // ignore: cast_nullable_to_non_nullable
              as num?,
      feedback: freezed == feedback
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      packageId: freezed == packageId
          ? _value.packageId
          : packageId // ignore: cast_nullable_to_non_nullable
              as num?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as num?,
      endedDate: freezed == endedDate
          ? _value.endedDate
          : endedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      isForeign: freezed == isForeign
          ? _value.isForeign
          : isForeign // ignore: cast_nullable_to_non_nullable
              as bool?,
      foreignAddress: freezed == foreignAddress
          ? _value.foreignAddress
          : foreignAddress // ignore: cast_nullable_to_non_nullable
              as Address?,
      foreignCustomer: freezed == foreignCustomer
          ? _value.foreignCustomer
          : foreignCustomer // ignore: cast_nullable_to_non_nullable
              as ForeignCustomer?,
    ) as $Val);
  }

  /// Create a copy of BookingResponse
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

  /// Create a copy of BookingResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }

  /// Create a copy of BookingResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get foreignAddress {
    if (_value.foreignAddress == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.foreignAddress!, (value) {
      return _then(_value.copyWith(foreignAddress: value) as $Val);
    });
  }

  /// Create a copy of BookingResponse
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
abstract class _$$BookingResponseImplCopyWith<$Res>
    implements $BookingResponseCopyWith<$Res> {
  factory _$$BookingResponseImplCopyWith(_$BookingResponseImpl value,
          $Res Function(_$BookingResponseImpl) then) =
      __$$BookingResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      DateTime? date,
      int? status,
      num? total,
      String? discount,
      @JsonKey(name: 'total_price') num? totalPrice,
      @JsonKey(name: 'customer_id') dynamic customerId,
      @JsonKey(name: 'customer_name') String? customerName,
      Payment? payment,
      List<Provider>? providers,
      List<Service>? services,
      @JsonKey(name: 'service_id') int? serviceId,
      @JsonKey(name: 'service_title') String? serviceTitle,
      @JsonKey(name: 'service_duration') double? serviceDuration,
      @JsonKey(name: 'service_cost') String? serviceCost,
      @JsonKey(
          name: 'booking_status', fromJson: BookingStatusExtension.fromValue)
      BookingStatus bookingStatus,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'customer_phone') String? customerPhone,
      num? basePrice,
      String? feedback,
      String? notes,
      @JsonKey(name: 'package_id') num? packageId,
      @JsonKey(name: 'country_code') num? countryCode,
      @JsonKey(name: 'ended_date') DateTime? endedDate,
      @JsonKey(name: 'created_by') DateTime? createdBy,
      @JsonKey(includeIfNull: false) Address? address,
      @JsonKey(name: 'is_foreign') bool? isForeign,
      @JsonKey(name: 'foreign_address') Address? foreignAddress,
      @JsonKey(name: 'foreign_customer') ForeignCustomer? foreignCustomer});

  @override
  $PaymentCopyWith<$Res>? get payment;
  @override
  $AddressCopyWith<$Res>? get address;
  @override
  $AddressCopyWith<$Res>? get foreignAddress;
  @override
  $ForeignCustomerCopyWith<$Res>? get foreignCustomer;
}

/// @nodoc
class __$$BookingResponseImplCopyWithImpl<$Res>
    extends _$BookingResponseCopyWithImpl<$Res, _$BookingResponseImpl>
    implements _$$BookingResponseImplCopyWith<$Res> {
  __$$BookingResponseImplCopyWithImpl(
      _$BookingResponseImpl _value, $Res Function(_$BookingResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookingResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = freezed,
    Object? status = freezed,
    Object? total = freezed,
    Object? discount = freezed,
    Object? totalPrice = freezed,
    Object? customerId = freezed,
    Object? customerName = freezed,
    Object? payment = freezed,
    Object? providers = freezed,
    Object? services = freezed,
    Object? serviceId = freezed,
    Object? serviceTitle = freezed,
    Object? serviceDuration = freezed,
    Object? serviceCost = freezed,
    Object? bookingStatus = null,
    Object? createdAt = freezed,
    Object? customerPhone = freezed,
    Object? basePrice = freezed,
    Object? feedback = freezed,
    Object? notes = freezed,
    Object? packageId = freezed,
    Object? countryCode = freezed,
    Object? endedDate = freezed,
    Object? createdBy = freezed,
    Object? address = freezed,
    Object? isForeign = freezed,
    Object? foreignAddress = freezed,
    Object? foreignCustomer = freezed,
  }) {
    return _then(_$BookingResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
              as num?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as num?,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
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
      serviceId: freezed == serviceId
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as int?,
      serviceTitle: freezed == serviceTitle
          ? _value.serviceTitle
          : serviceTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceDuration: freezed == serviceDuration
          ? _value.serviceDuration
          : serviceDuration // ignore: cast_nullable_to_non_nullable
              as double?,
      serviceCost: freezed == serviceCost
          ? _value.serviceCost
          : serviceCost // ignore: cast_nullable_to_non_nullable
              as String?,
      bookingStatus: null == bookingStatus
          ? _value.bookingStatus
          : bookingStatus // ignore: cast_nullable_to_non_nullable
              as BookingStatus,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      customerPhone: freezed == customerPhone
          ? _value.customerPhone
          : customerPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      basePrice: freezed == basePrice
          ? _value.basePrice
          : basePrice // ignore: cast_nullable_to_non_nullable
              as num?,
      feedback: freezed == feedback
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      packageId: freezed == packageId
          ? _value.packageId
          : packageId // ignore: cast_nullable_to_non_nullable
              as num?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as num?,
      endedDate: freezed == endedDate
          ? _value.endedDate
          : endedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      isForeign: freezed == isForeign
          ? _value.isForeign
          : isForeign // ignore: cast_nullable_to_non_nullable
              as bool?,
      foreignAddress: freezed == foreignAddress
          ? _value.foreignAddress
          : foreignAddress // ignore: cast_nullable_to_non_nullable
              as Address?,
      foreignCustomer: freezed == foreignCustomer
          ? _value.foreignCustomer
          : foreignCustomer // ignore: cast_nullable_to_non_nullable
              as ForeignCustomer?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingResponseImpl implements _BookingResponse {
  const _$BookingResponseImpl(
      {required this.id,
      required this.date,
      required this.status,
      required this.total,
      required this.discount,
      @JsonKey(name: 'total_price') required this.totalPrice,
      @JsonKey(name: 'customer_id') required this.customerId,
      @JsonKey(name: 'customer_name') required this.customerName,
      required this.payment,
      required final List<Provider>? providers,
      required final List<Service>? services,
      @JsonKey(name: 'service_id') required this.serviceId,
      @JsonKey(name: 'service_title') required this.serviceTitle,
      @JsonKey(name: 'service_duration') required this.serviceDuration,
      @JsonKey(name: 'service_cost') required this.serviceCost,
      @JsonKey(
          name: 'booking_status', fromJson: BookingStatusExtension.fromValue)
      required this.bookingStatus,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'customer_phone') this.customerPhone,
      this.basePrice,
      this.feedback,
      this.notes,
      @JsonKey(name: 'package_id') this.packageId,
      @JsonKey(name: 'country_code') this.countryCode,
      @JsonKey(name: 'ended_date') this.endedDate,
      @JsonKey(name: 'created_by') this.createdBy,
      @JsonKey(includeIfNull: false) this.address,
      @JsonKey(name: 'is_foreign') this.isForeign,
      @JsonKey(name: 'foreign_address') this.foreignAddress,
      @JsonKey(name: 'foreign_customer') this.foreignCustomer})
      : _providers = providers,
        _services = services;

  factory _$BookingResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingResponseImplFromJson(json);

  @override
  final int id;
  @override
  final DateTime? date;
  @override
  final int? status;
  @override
  final num? total;
  @override
  final String? discount;
  @override
  @JsonKey(name: 'total_price')
  final num? totalPrice;
  @override
  @JsonKey(name: 'customer_id')
  final dynamic customerId;
  @override
  @JsonKey(name: 'customer_name')
  final String? customerName;
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
  @JsonKey(name: 'service_id')
  final int? serviceId;
  @override
  @JsonKey(name: 'service_title')
  final String? serviceTitle;
  @override
  @JsonKey(name: 'service_duration')
  final double? serviceDuration;
  @override
  @JsonKey(name: 'service_cost')
  final String? serviceCost;
  @override
  @JsonKey(name: 'booking_status', fromJson: BookingStatusExtension.fromValue)
  final BookingStatus bookingStatus;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'customer_phone')
  final String? customerPhone;
  @override
  final num? basePrice;
  @override
  final String? feedback;
  @override
  final String? notes;
  @override
  @JsonKey(name: 'package_id')
  final num? packageId;
  @override
  @JsonKey(name: 'country_code')
  final num? countryCode;
  @override
  @JsonKey(name: 'ended_date')
  final DateTime? endedDate;
  @override
  @JsonKey(name: 'created_by')
  final DateTime? createdBy;
  @override
  @JsonKey(includeIfNull: false)
  final Address? address;
  @override
  @JsonKey(name: 'is_foreign')
  final bool? isForeign;
  @override
  @JsonKey(name: 'foreign_address')
  final Address? foreignAddress;
  @override
  @JsonKey(name: 'foreign_customer')
  final ForeignCustomer? foreignCustomer;

  @override
  String toString() {
    return 'BookingResponse(id: $id, date: $date, status: $status, total: $total, discount: $discount, totalPrice: $totalPrice, customerId: $customerId, customerName: $customerName, payment: $payment, providers: $providers, services: $services, serviceId: $serviceId, serviceTitle: $serviceTitle, serviceDuration: $serviceDuration, serviceCost: $serviceCost, bookingStatus: $bookingStatus, createdAt: $createdAt, customerPhone: $customerPhone, basePrice: $basePrice, feedback: $feedback, notes: $notes, packageId: $packageId, countryCode: $countryCode, endedDate: $endedDate, createdBy: $createdBy, address: $address, isForeign: $isForeign, foreignAddress: $foreignAddress, foreignCustomer: $foreignCustomer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            const DeepCollectionEquality()
                .equals(other.customerId, customerId) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.payment, payment) || other.payment == payment) &&
            const DeepCollectionEquality()
                .equals(other._providers, _providers) &&
            const DeepCollectionEquality().equals(other._services, _services) &&
            (identical(other.serviceId, serviceId) ||
                other.serviceId == serviceId) &&
            (identical(other.serviceTitle, serviceTitle) ||
                other.serviceTitle == serviceTitle) &&
            (identical(other.serviceDuration, serviceDuration) ||
                other.serviceDuration == serviceDuration) &&
            (identical(other.serviceCost, serviceCost) ||
                other.serviceCost == serviceCost) &&
            (identical(other.bookingStatus, bookingStatus) ||
                other.bookingStatus == bookingStatus) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.customerPhone, customerPhone) ||
                other.customerPhone == customerPhone) &&
            (identical(other.basePrice, basePrice) ||
                other.basePrice == basePrice) &&
            (identical(other.feedback, feedback) ||
                other.feedback == feedback) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.packageId, packageId) ||
                other.packageId == packageId) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.endedDate, endedDate) ||
                other.endedDate == endedDate) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.address, address) || other.address == address) &&
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
        date,
        status,
        total,
        discount,
        totalPrice,
        const DeepCollectionEquality().hash(customerId),
        customerName,
        payment,
        const DeepCollectionEquality().hash(_providers),
        const DeepCollectionEquality().hash(_services),
        serviceId,
        serviceTitle,
        serviceDuration,
        serviceCost,
        bookingStatus,
        createdAt,
        customerPhone,
        basePrice,
        feedback,
        notes,
        packageId,
        countryCode,
        endedDate,
        createdBy,
        address,
        isForeign,
        foreignAddress,
        foreignCustomer
      ]);

  /// Create a copy of BookingResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingResponseImplCopyWith<_$BookingResponseImpl> get copyWith =>
      __$$BookingResponseImplCopyWithImpl<_$BookingResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingResponseImplToJson(
      this,
    );
  }
}

abstract class _BookingResponse implements BookingResponse {
  const factory _BookingResponse(
      {required final int id,
      required final DateTime? date,
      required final int? status,
      required final num? total,
      required final String? discount,
      @JsonKey(name: 'total_price') required final num? totalPrice,
      @JsonKey(name: 'customer_id') required final dynamic customerId,
      @JsonKey(name: 'customer_name') required final String? customerName,
      required final Payment? payment,
      required final List<Provider>? providers,
      required final List<Service>? services,
      @JsonKey(name: 'service_id') required final int? serviceId,
      @JsonKey(name: 'service_title') required final String? serviceTitle,
      @JsonKey(name: 'service_duration') required final double? serviceDuration,
      @JsonKey(name: 'service_cost') required final String? serviceCost,
      @JsonKey(
          name: 'booking_status', fromJson: BookingStatusExtension.fromValue)
      required final BookingStatus bookingStatus,
      @JsonKey(name: 'created_at') required final DateTime? createdAt,
      @JsonKey(name: 'customer_phone') final String? customerPhone,
      final num? basePrice,
      final String? feedback,
      final String? notes,
      @JsonKey(name: 'package_id') final num? packageId,
      @JsonKey(name: 'country_code') final num? countryCode,
      @JsonKey(name: 'ended_date') final DateTime? endedDate,
      @JsonKey(name: 'created_by') final DateTime? createdBy,
      @JsonKey(includeIfNull: false) final Address? address,
      @JsonKey(name: 'is_foreign') final bool? isForeign,
      @JsonKey(name: 'foreign_address') final Address? foreignAddress,
      @JsonKey(name: 'foreign_customer')
      final ForeignCustomer? foreignCustomer}) = _$BookingResponseImpl;

  factory _BookingResponse.fromJson(Map<String, dynamic> json) =
      _$BookingResponseImpl.fromJson;

  @override
  int get id;
  @override
  DateTime? get date;
  @override
  int? get status;
  @override
  num? get total;
  @override
  String? get discount;
  @override
  @JsonKey(name: 'total_price')
  num? get totalPrice;
  @override
  @JsonKey(name: 'customer_id')
  dynamic get customerId;
  @override
  @JsonKey(name: 'customer_name')
  String? get customerName;
  @override
  Payment? get payment;
  @override
  List<Provider>? get providers;
  @override
  List<Service>? get services;
  @override
  @JsonKey(name: 'service_id')
  int? get serviceId;
  @override
  @JsonKey(name: 'service_title')
  String? get serviceTitle;
  @override
  @JsonKey(name: 'service_duration')
  double? get serviceDuration;
  @override
  @JsonKey(name: 'service_cost')
  String? get serviceCost;
  @override
  @JsonKey(name: 'booking_status', fromJson: BookingStatusExtension.fromValue)
  BookingStatus get bookingStatus;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'customer_phone')
  String? get customerPhone;
  @override
  num? get basePrice;
  @override
  String? get feedback;
  @override
  String? get notes;
  @override
  @JsonKey(name: 'package_id')
  num? get packageId;
  @override
  @JsonKey(name: 'country_code')
  num? get countryCode;
  @override
  @JsonKey(name: 'ended_date')
  DateTime? get endedDate;
  @override
  @JsonKey(name: 'created_by')
  DateTime? get createdBy;
  @override
  @JsonKey(includeIfNull: false)
  Address? get address;
  @override
  @JsonKey(name: 'is_foreign')
  bool? get isForeign;
  @override
  @JsonKey(name: 'foreign_address')
  Address? get foreignAddress;
  @override
  @JsonKey(name: 'foreign_customer')
  ForeignCustomer? get foreignCustomer;

  /// Create a copy of BookingResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookingResponseImplCopyWith<_$BookingResponseImpl> get copyWith =>
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
  const _$PaymentImpl(
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
  const factory _Payment(
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
  num? get rank => throw _privateConstructorUsedError;
  num? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;

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
      num? rank,
      num? rating,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName});
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
    Object? rank = freezed,
    Object? rating = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      rank: freezed == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as num?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as num?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
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
      num? rank,
      num? rating,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName});
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
    Object? rank = freezed,
    Object? rating = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
  }) {
    return _then(_$ProviderImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      rank: freezed == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as num?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as num?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProviderImpl implements _Provider {
  const _$ProviderImpl(
      {required this.id,
      this.rank,
      this.rating,
      @JsonKey(name: 'first_name') this.firstName,
      @JsonKey(name: 'last_name') this.lastName});

  factory _$ProviderImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProviderImplFromJson(json);

  @override
  final int id;
  @override
  final num? rank;
  @override
  final num? rating;
  @override
  @JsonKey(name: 'first_name')
  final String? firstName;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;

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
  const factory _Provider(
      {required final int id,
      final num? rank,
      final num? rating,
      @JsonKey(name: 'first_name') final String? firstName,
      @JsonKey(name: 'last_name') final String? lastName}) = _$ProviderImpl;

  factory _Provider.fromJson(Map<String, dynamic> json) =
      _$ProviderImpl.fromJson;

  @override
  int get id;
  @override
  num? get rank;
  @override
  num? get rating;
  @override
  @JsonKey(name: 'first_name')
  String? get firstName;
  @override
  @JsonKey(name: 'last_name')
  String? get lastName;

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
  String get title => throw _privateConstructorUsedError;
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
      String title,
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
    Object? title = null,
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
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
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
      String title,
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
    Object? title = null,
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
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
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
  const _$ServiceImpl(
      {required this.id,
      required this.title,
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
  final String title;
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
  const factory _Service(
      {required final int id,
      required final String title,
      @JsonKey(name: 'title_en') final String? titleEn,
      @JsonKey(name: 'title_ar') final String? titleAr,
      final String? icon,
      final num? duration}) = _$ServiceImpl;
  const _Service._() : super._();

  factory _Service.fromJson(Map<String, dynamic> json) = _$ServiceImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
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

Address _$AddressFromJson(Map<String, dynamic> json) {
  return _Address.fromJson(json);
}

/// @nodoc
mixin _$Address {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'location_name')
  String? get locationName => throw _privateConstructorUsedError;
  @JsonKey(name: 'street_name')
  String? get streetName => throw _privateConstructorUsedError;
  @JsonKey(name: 'building_number')
  String? get buildingNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'floor_number')
  String? get floorNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'unit_number')
  String? get unitNumber => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'deleted_at')
  DateTime? get deletedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'lat')
  String? get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'lng')
  String? get longitude => throw _privateConstructorUsedError;

  /// Serializes this Address to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddressCopyWith<Address> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) then) =
      _$AddressCopyWithImpl<$Res, Address>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'location_name') String? locationName,
      @JsonKey(name: 'street_name') String? streetName,
      @JsonKey(name: 'building_number') String? buildingNumber,
      @JsonKey(name: 'floor_number') String? floorNumber,
      @JsonKey(name: 'unit_number') String? unitNumber,
      String? notes,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'deleted_at') DateTime? deletedAt,
      @JsonKey(name: 'lat') String? latitude,
      @JsonKey(name: 'lng') String? longitude});
}

/// @nodoc
class _$AddressCopyWithImpl<$Res, $Val extends Address>
    implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? locationName = freezed,
    Object? streetName = freezed,
    Object? buildingNumber = freezed,
    Object? floorNumber = freezed,
    Object? unitNumber = freezed,
    Object? notes = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      locationName: freezed == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String?,
      streetName: freezed == streetName
          ? _value.streetName
          : streetName // ignore: cast_nullable_to_non_nullable
              as String?,
      buildingNumber: freezed == buildingNumber
          ? _value.buildingNumber
          : buildingNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      floorNumber: freezed == floorNumber
          ? _value.floorNumber
          : floorNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      unitNumber: freezed == unitNumber
          ? _value.unitNumber
          : unitNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
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
      {int id,
      @JsonKey(name: 'location_name') String? locationName,
      @JsonKey(name: 'street_name') String? streetName,
      @JsonKey(name: 'building_number') String? buildingNumber,
      @JsonKey(name: 'floor_number') String? floorNumber,
      @JsonKey(name: 'unit_number') String? unitNumber,
      String? notes,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'deleted_at') DateTime? deletedAt,
      @JsonKey(name: 'lat') String? latitude,
      @JsonKey(name: 'lng') String? longitude});
}

/// @nodoc
class __$$AddressImplCopyWithImpl<$Res>
    extends _$AddressCopyWithImpl<$Res, _$AddressImpl>
    implements _$$AddressImplCopyWith<$Res> {
  __$$AddressImplCopyWithImpl(
      _$AddressImpl _value, $Res Function(_$AddressImpl) _then)
      : super(_value, _then);

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? locationName = freezed,
    Object? streetName = freezed,
    Object? buildingNumber = freezed,
    Object? floorNumber = freezed,
    Object? unitNumber = freezed,
    Object? notes = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_$AddressImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      locationName: freezed == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String?,
      streetName: freezed == streetName
          ? _value.streetName
          : streetName // ignore: cast_nullable_to_non_nullable
              as String?,
      buildingNumber: freezed == buildingNumber
          ? _value.buildingNumber
          : buildingNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      floorNumber: freezed == floorNumber
          ? _value.floorNumber
          : floorNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      unitNumber: freezed == unitNumber
          ? _value.unitNumber
          : unitNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressImpl implements _Address {
  const _$AddressImpl(
      {required this.id,
      @JsonKey(name: 'location_name') this.locationName,
      @JsonKey(name: 'street_name') this.streetName,
      @JsonKey(name: 'building_number') this.buildingNumber,
      @JsonKey(name: 'floor_number') this.floorNumber,
      @JsonKey(name: 'unit_number') this.unitNumber,
      this.notes,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'deleted_at') this.deletedAt,
      @JsonKey(name: 'lat') this.latitude,
      @JsonKey(name: 'lng') this.longitude});

  factory _$AddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'location_name')
  final String? locationName;
  @override
  @JsonKey(name: 'street_name')
  final String? streetName;
  @override
  @JsonKey(name: 'building_number')
  final String? buildingNumber;
  @override
  @JsonKey(name: 'floor_number')
  final String? floorNumber;
  @override
  @JsonKey(name: 'unit_number')
  final String? unitNumber;
  @override
  final String? notes;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'deleted_at')
  final DateTime? deletedAt;
  @override
  @JsonKey(name: 'lat')
  final String? latitude;
  @override
  @JsonKey(name: 'lng')
  final String? longitude;

  @override
  String toString() {
    return 'Address(id: $id, locationName: $locationName, streetName: $streetName, buildingNumber: $buildingNumber, floorNumber: $floorNumber, unitNumber: $unitNumber, notes: $notes, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.locationName, locationName) ||
                other.locationName == locationName) &&
            (identical(other.streetName, streetName) ||
                other.streetName == streetName) &&
            (identical(other.buildingNumber, buildingNumber) ||
                other.buildingNumber == buildingNumber) &&
            (identical(other.floorNumber, floorNumber) ||
                other.floorNumber == floorNumber) &&
            (identical(other.unitNumber, unitNumber) ||
                other.unitNumber == unitNumber) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      locationName,
      streetName,
      buildingNumber,
      floorNumber,
      unitNumber,
      notes,
      createdAt,
      updatedAt,
      deletedAt,
      latitude,
      longitude);

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      {required final int id,
      @JsonKey(name: 'location_name') final String? locationName,
      @JsonKey(name: 'street_name') final String? streetName,
      @JsonKey(name: 'building_number') final String? buildingNumber,
      @JsonKey(name: 'floor_number') final String? floorNumber,
      @JsonKey(name: 'unit_number') final String? unitNumber,
      final String? notes,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      @JsonKey(name: 'deleted_at') final DateTime? deletedAt,
      @JsonKey(name: 'lat') final String? latitude,
      @JsonKey(name: 'lng') final String? longitude}) = _$AddressImpl;

  factory _Address.fromJson(Map<String, dynamic> json) = _$AddressImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'location_name')
  String? get locationName;
  @override
  @JsonKey(name: 'street_name')
  String? get streetName;
  @override
  @JsonKey(name: 'building_number')
  String? get buildingNumber;
  @override
  @JsonKey(name: 'floor_number')
  String? get floorNumber;
  @override
  @JsonKey(name: 'unit_number')
  String? get unitNumber;
  @override
  String? get notes;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'deleted_at')
  DateTime? get deletedAt;
  @override
  @JsonKey(name: 'lat')
  String? get latitude;
  @override
  @JsonKey(name: 'lng')
  String? get longitude;

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
