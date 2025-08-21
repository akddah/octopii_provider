import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:octopii_provier_app/core/extensions/booking_status_extension.dart';
import 'package:octopii_provier_app/core/extensions/payment_status_extension.dart';
import 'package:octopii_provier_app/core/helpers/enums.dart';
import 'package:octopii_provier_app/models/bookings/booking_response_model.dart';

part 'booking_details_response_model.freezed.dart';
part 'booking_details_response_model.g.dart';

@freezed
class BookingDetailsData with _$BookingDetailsData {
  const factory BookingDetailsData({
    BookingResponse? response,
  }) = _BookingDetailsData;

  factory BookingDetailsData.fromJson(Map<String, dynamic> json) => _$BookingDetailsDataFromJson(json);
}

Object? readIdValue(Map<dynamic, dynamic> json, String key) => json['customer_id'] ?? json['customer_id'];
String stringFromAny(dynamic value) => value?.toString() ?? '';
String? stringFromAnyNull(dynamic value) => value?.toString();
String? datefromJson(dynamic value) => value?.toString();

DateTime? dateNullFromJson(dynamic value) {
  try {
    if (value == null) {
      return value;
    } else {
      return DateTime.tryParse(value?.toString() ?? '');
    }
  } catch (e) {
    // _firebaseCrashlytics.jsonToDartRecordError(e, StackTrace.current, attribute, jsonEncode(json ?? {}), "date_from_json");
    return null;
  }
}

@freezed
class BookingResponse with _$BookingResponse {
  const factory BookingResponse({
    required int id,
    required DateTime? date,
    required int? status,
    required num? total,
    required String? discount,
    @JsonKey(name: 'reference_id') required String? referenceId,
    @JsonKey(name: 'price_adjustment') required String? priceAdjustment,
    @JsonKey(name: 'products_total_price') required String? productsTotalPrice,
    @JsonKey(name: 'total_price') required num? totalPrice,
    @JsonKey(name: 'customer_id') required dynamic customerId,
    @JsonKey(name: 'customer_name') required String? customerName,
    required Payment? payment,
    required List<Provider>? providers,
    required List<Service>? services,
    @JsonKey(name: 'service_id') required int? serviceId,
    @JsonKey(name: 'service_title') required String? serviceTitle,
    @JsonKey(name: 'service_duration') required double? serviceDuration,
    @JsonKey(name: 'service_cost') required String? serviceCost,
    @JsonKey(name: 'booking_status', fromJson: BookingStatusExtension.fromValue) required BookingStatus bookingStatus,
    @JsonKey(fromJson: dateNullFromJson, name: 'created_at') required DateTime? createdAt,
    @JsonKey(name: 'customer_phone') String? customerPhone,
    num? basePrice,
    String? feedback,
    String? notes,
    @JsonKey(name: 'package_id') num? packageId,
    @JsonKey(name: 'country_code') num? countryCode,
    @JsonKey(name: 'ended_date') DateTime? endedDate,
    @JsonKey(fromJson: stringFromAny, name: 'created_by') String? createdBy,
    Address? address,
    @JsonKey(name: 'is_foreign') bool? isForeign,
    @JsonKey(name: 'foreign_address') Address? foreignAddress,
    @JsonKey(name: 'foreign_customer') ForeignCustomer? foreignCustomer,
  }) = _BookingResponse;

  factory BookingResponse.fromJson(Map<String, dynamic> json) => _$BookingResponseFromJson(json);
}

@freezed
class Payment with _$Payment {
  const factory Payment({
    @JsonKey(
      fromJson: PaymentMethodExtension.fromJson,
    )
    required PaymentMethod method,
    @JsonKey(
      fromJson: PaymentStatusExtension.fromJson,
    )
    required PaymentStatus status,
  }) = _Payment;

  factory Payment.fromJson(Map<String, dynamic> json) => _$PaymentFromJson(json);
}

@freezed
class Provider with _$Provider {
  const factory Provider({
    required int id,
    num? rank,
    num? rating,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
  }) = _Provider;

  factory Provider.fromJson(Map<String, dynamic> json) => _$ProviderFromJson(json);
}

@freezed
class Service with _$Service {
  const factory Service({
    required int id,
    required String title,
    @JsonKey(name: 'title_en') String? titleEn,
    @JsonKey(name: 'title_ar') String? titleAr,
    String? icon,
    num? duration,
    String? price,
  }) = _Service;

  const Service._();

  String? bookingTitle(String localeName) => localeName == 'ar' ? titleAr ?? titleEn : titleEn ?? titleAr;

  factory Service.fromJson(Map<String, dynamic> json) => _$ServiceFromJson(json);
}

@freezed
class Address with _$Address {
  const factory Address({
    required int id,
    @JsonKey(name: 'location_name') String? locationName,
    @JsonKey(name: 'street_name') String? streetName,
    @JsonKey(name: 'building_number') String? buildingNumber,
    @JsonKey(name: 'floor_number') String? floorNumber,
    @JsonKey(name: 'unit_number') String? unitNumber,
    // @JsonKey(name: 'unit_type') int? unitType,
    // @JsonKey(name: 'unit_size') int? unitSize,
    String? notes,
    @JsonKey(fromJson: dateNullFromJson, name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'deleted_at') DateTime? deletedAt,
    @JsonKey(name: 'lat') String? latitude,
    @JsonKey(name: 'lng') String? longitude,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);
}
