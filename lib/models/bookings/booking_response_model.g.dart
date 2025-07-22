// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookingResponseModelImpl _$$BookingResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BookingResponseModelImpl(
      response: json['response'] == null
          ? null
          : BookingResponseData.fromJson(
              json['response'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BookingResponseModelImplToJson(
        _$BookingResponseModelImpl instance) =>
    <String, dynamic>{
      'response': instance.response,
    };

_$BookingResponseDataImpl _$$BookingResponseDataImplFromJson(
        Map<String, dynamic> json) =>
    _$BookingResponseDataImpl(
      currentPage: (json['current_page'] as num?)?.toInt(),
      data: (json['data'] as List<dynamic>)
          .map((e) => BookingDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastPage: (json['last_page'] as num?)?.toInt(),
      perPage: (json['per_page'] as num).toInt(),
      nextPageUrl: json['next_page_url'] as String?,
      to: (json['to'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
      from: json['from'] as num?,
    );

Map<String, dynamic> _$$BookingResponseDataImplToJson(
        _$BookingResponseDataImpl instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'data': instance.data,
      'last_page': instance.lastPage,
      'per_page': instance.perPage,
      'next_page_url': instance.nextPageUrl,
      'to': instance.to,
      'total': instance.total,
      'from': instance.from,
    };

_$BookingDetailsImpl _$$BookingDetailsImplFromJson(Map<String, dynamic> json) =>
    _$BookingDetailsImpl(
      id: (json['id'] as num?)?.toInt(),
      sectorId: (json['sector_id'] as num?)?.toInt(),
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      status: (json['status'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
      totalPrice: (json['total_price'] as num?)?.toInt(),
      serviceId: (json['service_id'] as num?)?.toInt(),
      serviceTitle: json['service_title'] as String?,
      serviceCost: json['service_cost'] as String?,
      areasId: (json['areas_id'] as num?)?.toInt(),
      payment: json['payment'] == null
          ? null
          : Payment.fromJson(json['payment'] as Map<String, dynamic>),
      providers: (json['providers'] as List<dynamic>?)
          ?.map((e) => Provider.fromJson(e as Map<String, dynamic>))
          .toList(),
      services: (json['services'] as List<dynamic>?)
          ?.map((e) => Service.fromJson(e as Map<String, dynamic>))
          .toList(),
      markup: (json['markup'] as num?)?.toInt(),
      basePrice: (json['base_price'] as num?)?.toInt(),
      customerId: json['customer_id'],
      customerPhone: json['customer_phone'] as String?,
      customerName: json['customer_name'] as String?,
      countProvider: (json['count_provider'] as num?)?.toInt(),
      serviceDuration: json['service_duration'] as num?,
      citiesId: (json['cities_id'] as num?)?.toInt(),
      citiesTitle: json['cities_title'] as String?,
      areaTitle: json['area_title'] as String?,
      referenceId: stringFromAnyNull(json['reference_id']),
      isForeign: json['is_foreign'] as bool?,
      foreignAddress: json['foreign_address'] == null
          ? null
          : ForeignAddress.fromJson(
              json['foreign_address'] as Map<String, dynamic>),
      foreignCustomer: json['foreign_customer'] == null
          ? null
          : ForeignCustomer.fromJson(
              json['foreign_customer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BookingDetailsImplToJson(
        _$BookingDetailsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sector_id': instance.sectorId,
      'date': instance.date?.toIso8601String(),
      'status': instance.status,
      'total': instance.total,
      'total_price': instance.totalPrice,
      'service_id': instance.serviceId,
      'service_title': instance.serviceTitle,
      'service_cost': instance.serviceCost,
      'areas_id': instance.areasId,
      'payment': instance.payment,
      'providers': instance.providers,
      'services': instance.services,
      'markup': instance.markup,
      'base_price': instance.basePrice,
      'customer_id': instance.customerId,
      'customer_phone': instance.customerPhone,
      'customer_name': instance.customerName,
      'count_provider': instance.countProvider,
      'service_duration': instance.serviceDuration,
      'cities_id': instance.citiesId,
      'cities_title': instance.citiesTitle,
      'area_title': instance.areaTitle,
      'reference_id': instance.referenceId,
      'is_foreign': instance.isForeign,
      'foreign_address': instance.foreignAddress,
      'foreign_customer': instance.foreignCustomer,
    };

_$ForeignAddressImpl _$$ForeignAddressImplFromJson(Map<String, dynamic> json) =>
    _$ForeignAddressImpl(
      id: (json['id'] as num?)?.toInt(),
      ownerId: (json['owner_id'] as num?)?.toInt(),
      owner_type: (json['owner_type'] as num?)?.toInt(),
      area_id: (json['area_id'] as num?)?.toInt(),
      location_name: json['location_name'] as String?,
      unit_type: (json['unit_type'] as num?)?.toInt(),
      street_name: json['street_name'] as String?,
      building_number: json['building_number'] as String?,
      floor_number: json['floor_number'] as String?,
      unit_number: json['unit_number'] as String?,
      notes: json['notes'] as String?,
      lat: json['lat'] as String?,
      lng: json['lng'] as String?,
    );

Map<String, dynamic> _$$ForeignAddressImplToJson(
        _$ForeignAddressImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'owner_id': instance.ownerId,
      'owner_type': instance.owner_type,
      'area_id': instance.area_id,
      'location_name': instance.location_name,
      'unit_type': instance.unit_type,
      'street_name': instance.street_name,
      'building_number': instance.building_number,
      'floor_number': instance.floor_number,
      'unit_number': instance.unit_number,
      'notes': instance.notes,
      'lat': instance.lat,
      'lng': instance.lng,
    };

_$ForeignCustomerImpl _$$ForeignCustomerImplFromJson(
        Map<String, dynamic> json) =>
    _$ForeignCustomerImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$$ForeignCustomerImplToJson(
        _$ForeignCustomerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
    };

_$PaymentImpl _$$PaymentImplFromJson(Map<String, dynamic> json) =>
    _$PaymentImpl(
      method: PaymentMethodExtension.fromJson(json['method'] as String?),
      status: json['status'] as String,
    );

Map<String, dynamic> _$$PaymentImplToJson(_$PaymentImpl instance) =>
    <String, dynamic>{
      'method': _$PaymentMethodEnumMap[instance.method]!,
      'status': instance.status,
    };

const _$PaymentMethodEnumMap = {
  PaymentMethod.cash: 'cash',
  PaymentMethod.card: 'card',
  PaymentMethod.other: 'other',
};

_$ProviderImpl _$$ProviderImplFromJson(Map<String, dynamic> json) =>
    _$ProviderImpl(
      id: (json['id'] as num).toInt(),
      rank: (json['rank'] as num).toInt(),
      rating: (json['rating'] as num).toInt(),
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
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
      title: json['title'] as String?,
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
