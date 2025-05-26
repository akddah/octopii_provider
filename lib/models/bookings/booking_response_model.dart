import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:octopii_provier_app/core/extensions/payment_status_extension.dart';
import 'package:octopii_provier_app/core/helpers/enums.dart';
import 'package:octopii_provier_app/models/bookings/booking_details_response_model.dart';

part 'booking_response_model.freezed.dart';
part 'booking_response_model.g.dart';

@freezed
class BookingResponseModel with _$BookingResponseModel {
  factory BookingResponseModel({
    BookingResponseData? response,
  }) = _BookingResponseModel;

  factory BookingResponseModel.fromJson(Map<String, dynamic> json) => _$BookingResponseModelFromJson(json);
}

@freezed
class BookingResponseData with _$BookingResponseData {
  factory BookingResponseData({
    @JsonKey(name: 'current_page') required int? currentPage,
    required List<BookingDetails> data,
    @JsonKey(name: 'last_page') required int? lastPage,
    @JsonKey(name: 'per_page') required int perPage,
    int? to,
    int? total,
    num? from,
  }) = _BookingResponseData;

  factory BookingResponseData.fromJson(Map<String, dynamic> json) => _$BookingResponseDataFromJson(json);
}

@freezed
class BookingDetails with _$BookingDetails {
  factory BookingDetails({
    required int? id,
    @JsonKey(name: 'sector_id') required int? sectorId,
    required DateTime? date,
    required int? status,
    required int? total,
    @JsonKey(name: 'total_price') required int? totalPrice,
    @JsonKey(name: 'service_id') required int? serviceId,
    @JsonKey(name: 'service_title') required String? serviceTitle,
    @JsonKey(name: 'service_cost') required String? serviceCost,
    @JsonKey(name: 'areas_id') required int? areasId,
    required Payment? payment,
    required List<Provider>? providers,
    required List<Service>? services,
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
    @JsonKey(fromJson: stringFromAnyNull, name: 'reference_id') String? referenceId,
    @JsonKey(name: 'is_foreign') bool? isForeign,
    @JsonKey(name: 'foreign_address') ForeignAddress? foreignAddress,
    @JsonKey(name: 'foreign_customer') ForeignCustomer? foreignCustomer,
  }) = _BookingDetails;

  factory BookingDetails.fromJson(Map<String, dynamic> json) => _$BookingDetailsFromJson(json);
}

@freezed
class ForeignAddress with _$ForeignAddress {
  factory ForeignAddress({
    int? id,
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
    String? lng,
  }) = _ForeignAddress;

  factory ForeignAddress.fromJson(Map<String, dynamic> json) => _$ForeignAddressFromJson(json);
}

@freezed
class ForeignCustomer with _$ForeignCustomer {
  factory ForeignCustomer({
    int? id,
    String? name,
    String? phone,
    // @JsonKey(name: 'owner_type') int? owner_type,
    // @JsonKey(name: 'area_id') int? area_id,
    // @JsonKey(name: 'location_name') String? location_name,
    // @JsonKey(name: 'unit_type') int? unit_type,
    // @JsonKey(name: 'street_name') String? street_name,
    // @JsonKey(name: 'building_number') String? building_number,
    // @JsonKey(name: 'floor_number') String? floor_number,
    // @JsonKey(name: 'unit_number') String? unit_number,
    // String? notes,
    // String? lat,
    // String? lng,
  }) = _ForeignCustomer;

  factory ForeignCustomer.fromJson(Map<String, dynamic> json) => _$ForeignCustomerFromJson(json);
}

@freezed
class Payment with _$Payment {
  factory Payment({
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
  factory Provider({
    required int id,
    required int rank,
    required int rating,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
  }) = _Provider;

  factory Provider.fromJson(Map<String, dynamic> json) => _$ProviderFromJson(json);
}

@freezed
class Service with _$Service {
  factory Service({
    required int id,
    String? title,
    @JsonKey(name: 'title_en') String? titleEn,
    @JsonKey(name: 'title_ar') String? titleAr,
    String? icon,
    num? duration,
  }) = _Service;

  const Service._();

  String? bookingTitle(String localeName) => localeName == 'ar' ? titleAr ?? titleEn : titleEn ?? titleAr;

  factory Service.fromJson(Map<String, dynamic> json) => _$ServiceFromJson(json);
}
