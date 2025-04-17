// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionDataImpl _$$TransactionDataImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionDataImpl(
      response: json['response'] == null
          ? null
          : TransactionResponse.fromJson(
              json['response'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TransactionDataImplToJson(
        _$TransactionDataImpl instance) =>
    <String, dynamic>{
      'response': instance.response,
    };

_$TransactionResponseImpl _$$TransactionResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionResponseImpl(
      currentPage: (json['current_page'] as num).toInt(),
      lastPage: (json['last_page'] as num).toInt(),
      perPage: (json['per_page'] as num).toInt(),
      total: (json['total'] as num).toInt(),
      transactions: (json['data'] as List<dynamic>?)
          ?.map((e) => Transaction.fromJson(e as Map<String, dynamic>))
          .toList(),
      from: (json['from'] as num?)?.toInt(),
      to: (json['to'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$TransactionResponseImplToJson(
        _$TransactionResponseImpl instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'last_page': instance.lastPage,
      'per_page': instance.perPage,
      'total': instance.total,
      'data': instance.transactions,
      'from': instance.from,
      'to': instance.to,
    };

_$TransactionImpl _$$TransactionImplFromJson(Map<String, dynamic> json) =>
    _$TransactionImpl(
      id: (json['id'] as num).toInt(),
      amount: json['amount'] as num,
      createdAt: DateTime.parse(json['created_at'] as String),
      date: DateTime.parse(json['date'] as String),
      paymentMethod: json['payment_method'] == null
          ? null
          : PaymentMethod.fromJson(
              json['payment_method'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TransactionImplToJson(_$TransactionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'created_at': instance.createdAt.toIso8601String(),
      'date': instance.date.toIso8601String(),
      'payment_method': instance.paymentMethod,
    };

_$PaymentMethodImpl _$$PaymentMethodImplFromJson(Map<String, dynamic> json) =>
    _$PaymentMethodImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      icon: json['icon'] as String,
      status: (json['status'] as num).toInt(),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTime.parse(json['deleted_at'] as String),
    );

Map<String, dynamic> _$$PaymentMethodImplToJson(_$PaymentMethodImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'icon': instance.icon,
      'status': instance.status,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'deleted_at': instance.deletedAt?.toIso8601String(),
    };
