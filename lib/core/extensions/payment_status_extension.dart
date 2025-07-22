import 'package:octopii_provier_app/core/helpers/enums.dart';
import 'package:octopii_provier_app/core/utils/utils/app_logger.dart';

extension PaymentMethodExtension on PaymentMethod {
  String toJson() {
    switch (this) {
      case PaymentMethod.cash:
        return 'cash';
      case PaymentMethod.card:
        return 'card';
      case PaymentMethod.other:
        return 'other';
    }
  }

  static PaymentMethod fromJson(String? value) {
    switch (value) {
      case 'cash':
        return PaymentMethod.cash;
      case 'card':
        return PaymentMethod.card;
      case 'other':
        return PaymentMethod.other;
      default:
        return PaymentMethod.other;
      // throw ArgumentError('Invalid payment method: $value');
    }
  }
}

extension PaymentStatusExtension on PaymentStatus {
  String toJson() {
    switch (this) {
      case PaymentStatus.unpaid:
        return 'unpaid';
      case PaymentStatus.paid:
        return 'paid';
      case PaymentStatus.pending:
        return 'pending';
    }
  }

  static PaymentStatus fromJson(String value) {
    AppLogger().info('The Payment Status Value Is $value');
    switch (value.toLowerCase()) {
      case 'unpaid':
        return PaymentStatus.unpaid;
      case 'paid':
        return PaymentStatus.paid;
      case 'pending':
        return PaymentStatus.pending;
      default:
        throw ArgumentError('Invalid payment status: $value');
    }
  }
}
