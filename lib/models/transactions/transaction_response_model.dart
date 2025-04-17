import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_response_model.freezed.dart';

part 'transaction_response_model.g.dart';

@freezed
class TransactionData with _$TransactionData {
  const factory TransactionData({
    @JsonKey(name: 'response') TransactionResponse? response, // Nullable field
  }) = _TransactionData;

  factory TransactionData.fromJson(Map<String, dynamic> json) =>
      _$TransactionDataFromJson(json);
}

@freezed
class TransactionResponse with _$TransactionResponse {
  const factory TransactionResponse({
    @JsonKey(name: 'current_page') required int currentPage,
    @JsonKey(name: 'last_page') required int lastPage,
    @JsonKey(name: 'per_page') required int perPage,
    required int total,
    @JsonKey(name: 'data') List<Transaction>? transactions,
    int? from,
    int? to,
  }) = _TransactionResponse;

  factory TransactionResponse.fromJson(Map<String, dynamic> json) =>
      _$TransactionResponseFromJson(json);
}

@freezed
class Transaction with _$Transaction {
  const factory Transaction({
    required int id,
    required num amount,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    required DateTime date,

    @JsonKey(name: 'payment_method')  PaymentMethod? paymentMethod,

  }) = _Transaction;

  factory Transaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionFromJson(json);
}

@freezed
class PaymentMethod with _$PaymentMethod {
  const factory PaymentMethod({
    required int id,
    required String name,
    required String icon,
    required int status,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    @JsonKey(name: 'deleted_at') DateTime? deletedAt,
  }) = _PaymentMethod;

  factory PaymentMethod.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodFromJson(json);
}
