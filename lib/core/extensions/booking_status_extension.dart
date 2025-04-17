import 'package:easy_localization/easy_localization.dart';
import 'package:octopii_provier_app/core/helpers/enums.dart';
import 'package:octopii_provier_app/gen/locale_keys.g.dart';

extension BookingStatusExtension on BookingStatus {
  /// Get the integer value of the status
  int get value {
    switch (this) {
      case BookingStatus.pending:
        return 0;
      case BookingStatus.started:
        return 1;
      case BookingStatus.confirmed:
        return 4;
      case BookingStatus.completed:
        return 2;
      case BookingStatus.cancelled:
        return 3;
    }
  }

  /// Check if the status is changeable
  bool get isChangeable {
    return this == BookingStatus.started || this == BookingStatus.completed;
  }

  /// Check if the status is pending
  bool get isPending {
    return this == BookingStatus.pending;
  }

  /// Check if the status is pending
  bool get isConfirmed => this == BookingStatus.confirmed;

  /// Check if the status is started
  bool get isStarted {
    return this == BookingStatus.started;
  }

  /// Check if the status is completed
  bool get isCompleted {
    return this == BookingStatus.completed;
  }

  /// Check if the status is cancelled
  bool get isCancelled {
    return this == BookingStatus.cancelled;
  }

  /// Get the status name as a string
  String get name {
    switch (this) {
      case BookingStatus.pending:
        return 'PENDING';
      case BookingStatus.confirmed:
        return 'CONFIRMED';
      case BookingStatus.started:
        return 'STARTED';
      case BookingStatus.completed:
        return 'COMPLETED';
      case BookingStatus.cancelled:
        return 'CANCELLED';
    }
  }

  /// Convert an integer to a BookingStatus
  static BookingStatus fromValue(int? value) {
    switch (value) {
      case 0:
        return BookingStatus.pending;
      case 1:
        return BookingStatus.started;
      case 2:
        return BookingStatus.completed;
      case 4:
        return BookingStatus.confirmed;

      case 3:
        return BookingStatus.cancelled;
      default:
        throw ArgumentError('Invalid value for BookingStatus: $value');
    }
  }

  /// Convert a string to a BookingStatus
  static BookingStatus fromName(String name) {
    switch (name.toUpperCase()) {
      case 'PENDING':
        return BookingStatus.pending;
      case 'STARTED':
        return BookingStatus.started;
      case 'COMPLETED':
        return BookingStatus.completed;
      case 'CANCELLED':
        return BookingStatus.cancelled;
      default:
        throw ArgumentError('Invalid name for BookingStatus: $name');
    }
  }

  String get localizedName {
    switch (this) {
      case BookingStatus.pending:
        return LocaleKeys.bookingStatusPending.tr();
      case BookingStatus.started:
        return LocaleKeys.bookingStatusStarted.tr();
      case BookingStatus.confirmed:
        return LocaleKeys.bookingStatusConfirmed.tr();
      case BookingStatus.completed:
        return LocaleKeys.bookingStatusCompleted.tr();
      case BookingStatus.cancelled:
        return LocaleKeys.bookingStatusCancelled.tr();
    }
  }

  /// Get localized status name from int value
  static String localizedStatusFromValue(int value) {
    final BookingStatus status = fromValue(value);
    return status.localizedName;
  }
}

/// Helper functions for JSON conversion
extension BookingStatusJson on BookingStatus {
  /// Convert a BookingStatus to JSON
  Map<String, dynamic> toJson() => <String, dynamic>{'status': value};

  /// Create a BookingStatus from JSON
  static BookingStatus fromJson(Map<String, dynamic> json) {
    if (!json.containsKey('status') || json['status'] is! int) {
      throw ArgumentError('Invalid JSON for BookingStatus');
    }
    return BookingStatusExtension.fromValue(json['status'] as int);
  }
}
