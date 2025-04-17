part of 'reset_password_cubit.dart';

extension ResetPasswordStateX on ResetPasswordState {
  bool get isInitial => status == GenericStateStatus.initial;

  bool get isLoading => status == GenericStateStatus.loading;

  bool get isLoaded => status == GenericStateStatus.loaded;

  bool get isError => status == GenericStateStatus.error;
}

@immutable
final class ResetPasswordState implements LoadableState {
  final GenericStateStatus status;
  final String? errorMsg;
  final String? successMsg;
  final ResetPasswordResponseData? resetPasswordResponseData;

  const ResetPasswordState({
    required this.status,
    this.successMsg,
    this.errorMsg,
    this.resetPasswordResponseData,
  });

  ResetPasswordState copyWith({
    GenericStateStatus? status,
    String? errorMsg,
    String? successMsg,
    ResetPasswordResponseData? resetPasswordResponseData,
  }) {
    return ResetPasswordState(
      status: status ?? this.status,
      errorMsg: errorMsg ?? this.errorMsg,
      successMsg: successMsg ?? this.successMsg,
      resetPasswordResponseData:
          resetPasswordResponseData ?? this.resetPasswordResponseData,
    );
  }

  @override
  String toString() {
    return 'ResetPasswordState('
        'status: $status, '
        'errorMsg: $errorMsg, '
        'successMsg: $successMsg, '
        'resetPasswordResponseData: $resetPasswordResponseData, '
        ')';
  }

  @override
  bool get isLoading => status == GenericStateStatus.loading;
}
