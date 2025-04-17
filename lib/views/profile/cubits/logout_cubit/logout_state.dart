part of 'logout_cubit.dart';

extension LogoutStateX on LogoutState {
  bool get isInitial => states == GenericStateStatus.initial;

  bool get isLoading => states == GenericStateStatus.loading;

  bool get isLoaded => states == GenericStateStatus.loaded;

  bool get isError => states == GenericStateStatus.error;
}

@immutable
final class LogoutState implements LoadableState {
  final GenericStateStatus states;
  final String? errorMsg;
  final String? successMessage;

  const LogoutState({required this.states, this.errorMsg, this.successMessage});

  LogoutState copyWith({
    GenericStateStatus? states,
    String? errorMsg,
    String? successMessage,
  }) {
    return LogoutState(
      states: states ?? this.states,
      errorMsg: errorMsg ?? this.errorMsg,
      successMessage: successMessage ?? this.successMessage,
    );
  }

  @override
  String toString() {
    return 'LogoutState('
        'states: $states, '
        'errorMsg: $errorMsg, '
        ')';
  }

  @override
  bool get isLoading => states == GenericStateStatus.loading;
}
