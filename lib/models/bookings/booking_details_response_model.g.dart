// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_details_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookingDetailsDataImpl _$$BookingDetailsDataImplFromJson(
        Map<String, dynamic> json) =>
    _$BookingDetailsDataImpl(
      response: json['response'] == null
          ? null
          : BookingResponse.fromJson(json['response'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BookingDetailsDataImplToJson(
        _$BookingDetailsDataImpl instance) =>
    <String, dynamic>{
      'response': instance.response,
    };

_$BookingResponseImpl _$$BookingResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BookingResponseImpl(
      id: (json['id'] as num).toInt(),
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      status: (json['status'] as num?)?.toInt(),
      total: json['total'] as num?,
      discount: json['discount'] as String?,
      referenceId: json['reference_id'] as String?,
      totalPrice: json['total_price'] as num?,
      customerId: json['customer_id'],
      customerName: json['customer_name'] as String?,
      payment: json['payment'] == null
          ? null
          : Payment.fromJson(json['payment'] as Map<String, dynamic>),
      providers: (json['providers'] as List<dynamic>?)
          ?.map((e) => Provider.fromJson(e as Map<String, dynamic>))
          .toList(),
      services: (json['services'] as List<dynamic>?)
          ?.map((e) => Service.fromJson(e as Map<String, dynamic>))
          .toList(),
      serviceId: (json['service_id'] as num?)?.toInt(),
      serviceTitle: json['service_title'] as String?,
      serviceDuration: (json['service_duration'] as num?)?.toDouble(),
      serviceCost: json['service_cost'] as String?,
      bookingStatus: BookingStatusExtension.fromValue(
          (json['booking_status'] as num?)?.toInt()),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      customerPhone: json['customer_phone'] as String?,
      basePrice: json['basePrice'] as num?,
      feedback: json['feedback'] as String?,
      notes: json['notes'] as String?,
      packageId: json['package_id'] as num?,
      countryCode: json['country_code'] as num?,
      endedDate: json['ended_date'] == null
          ? null
          : DateTime.parse(json['ended_date'] as String),
      createdBy: _stringFromAny(json['created_by']),
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      isForeign: json['is_foreign'] as bool?,
      foreignAddress: json['foreign_address'] == null
          ? null
          : Address.fromJson(json['foreign_address'] as Map<String, dynamic>),
      foreignCustomer: json['foreign_customer'] == null
          ? null
          : ForeignCustomer.fromJson(
              json['foreign_customer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BookingResponseImplToJson(
        _$BookingResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date?.toIso8601String(),
      'status': instance.status,
      'total': instance.total,
      'discount': instance.discount,
      'reference_id': instance.referenceId,
      'total_price': instance.totalPrice,
      'customer_id': instance.customerId,
      'customer_name': instance.customerName,
      'payment': instance.payment,
      'providers': instance.providers,
      'services': instance.services,
      'service_id': instance.serviceId,
      'service_title': instance.serviceTitle,
      'service_duration': instance.serviceDuration,
      'service_cost': instance.serviceCost,
      'booking_status': _$BookingStatusEnumMap[instance.bookingStatus]!,
      'created_at': instance.createdAt?.toIso8601String(),
      'customer_phone': instance.customerPhone,
      'basePrice': instance.basePrice,
      'feedback': instance.feedback,
      'notes': instance.notes,
      'package_id': instance.packageId,
      'country_code': instance.countryCode,
      'ended_date': instance.endedDate?.toIso8601String(),
      'created_by': instance.createdBy,
      if (instance.address case final value?) 'address': value,
      'is_foreign': instance.isForeign,
      'foreign_address': instance.foreignAddress,
      'foreign_customer': instance.foreignCustomer,
    };

const _$BookingStatusEnumMap = {
  BookingStatus.pending: 'pending',
  BookingStatus.started: 'started',
  BookingStatus.completed: 'completed',
  BookingStatus.confirmed: 'confirmed',
  BookingStatus.cancelled: 'cancelled',
};

_$PaymentImpl _$$PaymentImplFromJson(Map<String, dynamic> json) =>
    _$PaymentImpl(
      method: PaymentMethodExtension.fromJson(json['method'] as String),
      status: PaymentStatusExtension.fromJson(json['status'] as String),
    );

Map<String, dynamic> _$$PaymentImplToJson(_$PaymentImpl instance) =>
    <String, dynamic>{
      'method': _$PaymentMethodEnumMap[instance.method]!,
      'status': _$PaymentStatusEnumMap[instance.status]!,
    };

const _$PaymentMethodEnumMap = {
  PaymentMethod.cash: 'cash',
  PaymentMethod.card: 'card',
  PaymentMethod.other: 'other',
};

const _$PaymentStatusEnumMap = {
  PaymentStatus.unpaid: 'unpaid',
  PaymentStatus.paid: 'paid',
  PaymentStatus.pending: 'pending',
};

_$ProviderImpl _$$ProviderImplFromJson(Map<String, dynamic> json) =>
    _$ProviderImpl(
      id: (json['id'] as num).toInt(),
      rank: json['rank'] as num?,
      rating: json['rating'] as num?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
    );

Map<String, dynamic> _$$ProviderImplToJson(_$ProviderImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rank': instance.rank,
      'rating': instance.rating,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
    };

_$ServiceImpl _$$ServiceImplFromJson(Map<String, dynamic> json) =>
    _$ServiceImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      titleEn: json['title_en'] as String?,
      titleAr: json['title_ar'] as String?,
      icon: json['icon'] as String?,
      duration: json['duration'] as num?,
    );

Map<String, dynamic> _$$ServiceImplToJson(_$ServiceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'title_en': instance.titleEn,
      'title_ar': instance.titleAr,
      'icon': instance.icon,
      'duration': instance.duration,
    };

_$AddressImpl _$$AddressImplFromJson(Map<String, dynamic> json) =>
    _$AddressImpl(
      id: (json['id'] as num).toInt(),
      locationName: json['location_name'] as String?,
      streetName: json['street_name'] as String?,
      buildingNumber: json['building_number'] as String?,
      floorNumber: json['floor_number'] as String?,
      unitNumber: json['unit_number'] as String?,
      notes: json['notes'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
      latitude: json['lat'] as String?,
      longitude: json['lng'] as String?,
    );

Map<String, dynamic> _$$AddressImplToJson(_$AddressImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'location_name': instance.locationName,
      'street_name': instance.streetName,
      'building_number': instance.buildingNumber,
      'floor_number': instance.floorNumber,
      'unit_number': instance.unitNumber,
      'notes': instance.notes,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toIso8601String(),
      'lat': instance.latitude,
      'lng': instance.longitude,
    };
