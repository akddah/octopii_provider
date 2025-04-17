part of 'request_otp_cubit.dart';

extension RequestOtpStatesX on RequestOtpStates {
  bool get isInitial => status == GenericStateStatus.initial;

  bool get isLoading => status == GenericStateStatus.loading;

  bool get isLoaded => status == GenericStateStatus.loaded;

  bool get isError => status == GenericStateStatus.error;
}

@immutable
final class RequestOtpStates implements LoadableState {
  final GenericStateStatus status;
  final String? errorMsg;
  final String? successMsg;

  const RequestOtpStates({
    required this.status,
    this.successMsg,
    this.errorMsg,
  });

  RequestOtpStates copyWith({
    GenericStateStatus? status,
    String? errorMsg,
    String? successMsg,
  }) {
    return RequestOtpStates(
      status: status ?? this.status,
      errorMsg: errorMsg ?? this.errorMsg,
      successMsg: successMsg ?? this.successMsg,
    );
  }

  @override
  String toString() {
    return 'RequestOtpStates('
        'status: $status, '
        'errorMsg: $errorMsg, '
        'successMsg: $successMsg, '
        ')';
  }

  @override
  bool get isLoading => status == GenericStateStatus.loading;
}
