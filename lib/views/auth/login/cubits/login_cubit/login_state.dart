part of 'login_cubit.dart';

enum LoginStates { initial, loading, loaded, error, changeButtonState }

extension LoginStateX on LoginState {
  bool get isInitial => states == LoginStates.initial;

  bool get isLoading => states == LoginStates.loading;

  bool get isLoaded => states == LoginStates.loaded;

  bool get isError => states == LoginStates.error;

  bool get isChangeButtonState => states == LoginStates.changeButtonState;
}

@immutable
final class LoginState implements LoadableState {
  final LoginStates states;
  final String? errorMsg;
  final bool? isValidPassword;
  final LoginResponseModel? responseModel;

  const LoginState({
    required this.states,
    this.errorMsg,
    this.isValidPassword = false,
    this.responseModel,
  });

  LoginState copyWith({
    LoginStates? states,
    String? errorMsg,
    bool? isValidPassword,
    LoginResponseModel? responseModel,
  }) {
    return LoginState(
      states: states ?? this.states,
      errorMsg: errorMsg ?? this.errorMsg,
      isValidPassword: isValidPassword ?? this.isValidPassword,
      responseModel: responseModel ?? this.responseModel,
    );
  }

  @override
  String toString() {
    return 'SendOtpState('
        'states: $states, '
        'errorMsg: $errorMsg, '
        'isValidPassword: $isValidPassword, '
        ')';
  }

  @override
  bool get isLoading => states == LoginStates.loading;
}
