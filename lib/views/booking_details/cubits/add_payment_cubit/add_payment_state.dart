part of 'add_payment_cubit.dart';







extension AddPaymentStateStateX on AddPaymentState {
  bool get isInitial => status == GenericStateStatus.initial;

  bool get isLoading => status == GenericStateStatus.loading;

  bool get isLoaded => status == GenericStateStatus.loaded;

  bool get isError => status == GenericStateStatus.error;
}



@immutable
final class AddPaymentState implements LoadableState {
  final GenericStateStatus status;
  final String? errorMsg;
  final String? successMsg;

  const AddPaymentState({
    required this.status,
    this.successMsg,
    this.errorMsg,
  });

  AddPaymentState copyWith({
    GenericStateStatus? status,
    String? errorMsg,
    String? successMsg,
  }) {
    return AddPaymentState(
      status: status ?? this.status,
      errorMsg: errorMsg ?? this.errorMsg,
      successMsg:
      successMsg ?? this.successMsg,
    );
  }

  @override
  String toString() {
    return 'AddPaymentState('
        'states: $status, '
        'errorMsg: $errorMsg, '
        'successMsg: $successMsg, '
        ')';
  }

  @override
  bool get isLoading => status == GenericStateStatus.loading;

}
