part of 'verify_otp_cubit.dart';

extension VerifyOtpStatesX on VerifyOtpStates {
  bool get isInitial => status == GenericStateStatus.initial;

  bool get isLoading => status == GenericStateStatus.loading;

  bool get isLoaded => status == GenericStateStatus.loaded;

  bool get isError => status == GenericStateStatus.error;
}

@immutable
final class VerifyOtpStates implements LoadableState {
  final GenericStateStatus status;
  final String? errorMsg;
  final String? successMsg;
  final bool? responseState;
  final LoginResponseModel? loginResponse;

  const VerifyOtpStates({
    required this.status,
    this.successMsg,
    this.errorMsg,
    this.responseState,
    this.loginResponse,
  });

  VerifyOtpStates copyWith({
    GenericStateStatus? status,
    String? errorMsg,
    String? successMsg,
    bool? responseState,
    LoginResponseModel? loginResponse,
  }) {
    return VerifyOtpStates(
      status: status ?? this.status,
      errorMsg: errorMsg ?? this.errorMsg,
      successMsg: successMsg ?? this.successMsg,
      responseState: responseState ?? this.responseState,
      loginResponse: loginResponse ?? this.loginResponse,
    );
  }

  @override
  String toString() {
    return 'RequestOtpStates('
        'status: $status, '
        'errorMsg: $errorMsg, '
        'successMsg: $successMsg, '
        'responseState: $responseState, '
        'loginResponse: $loginResponse, '
        ')';
  }

  @override
  bool get isLoading => status == GenericStateStatus.loading;
}
