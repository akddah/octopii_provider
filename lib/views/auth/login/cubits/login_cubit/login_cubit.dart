import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:octopii_provier_app/core/config/app_constant_strings.dart';
import 'package:octopii_provier_app/core/const/database_constants.dart';
import 'package:octopii_provier_app/core/helpers/enums.dart';
import 'package:octopii_provier_app/core/helpers/shared_pref_helper.dart';
import 'package:octopii_provier_app/core/infrastructure/networking/server_gate.dart';
import 'package:octopii_provier_app/core/utils/generic_classes/generic.dart';
import 'package:octopii_provier_app/core/utils/utils/app_logger.dart';
import 'package:octopii_provier_app/main.dart';
import 'package:octopii_provier_app/models/login/login_request_model.dart';
import 'package:octopii_provier_app/models/login/login_response_model.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(const LoginState(states: LoginStates.initial)) {
    passwordController.addListener(validatePassword);
  }

  final TextEditingController phoneNumberController = TextEditingController(text: phone);
  final TextEditingController passwordController = TextEditingController(text: password);
  final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();

  void validatePassword() {
    final String password = passwordController.text;
    final String phoneNumber = phoneNumberController.text;

    final bool isNotEmpty = password.trim().isNotEmpty && phoneNumber.trim().isNotEmpty;
    final bool isValid = isNotEmpty;

    emit(
      state.copyWith(
        isValidPassword: isValid,
        states: LoginStates.changeButtonState,
      ),
    );
  }

  Future<void> loginUser({required GenericLoginRequestModel requestModel}) async {
    emit(
      state.copyWith(
        states: LoginStates.loading,
      ),
    );
    final CustomResponse<Map<String, dynamic>> result = await ServerGate.i.sendToServer<Map<String, dynamic>>(
      url: dotenv.get(AppConstantStrings.login),
      body: requestModel.toJson(),
    );
    AppLogger().info('The Response Result Is ${result.success}');
    AppLogger().info('The Response Result Is ${result.data}');
    AppLogger().info('The Response Result Is ${result.statusCode}');
    switch (result.responseState) {
      case ResponseState.success:
        final LoginResponseModel loginResponse = LoginResponseModel.fromJson(result.data!);
        await SharedPrefHelper().setUser(loginResponse);
        await SharedPrefHelper().setSecuredToken(
          DatabaseConstants.tokenKey,
          loginResponse.authorization.token!,
        );

        emit(
          state.copyWith(
            states: LoginStates.loaded,
            responseModel: loginResponse,
          ),
        );

      case ResponseState.error:
        emit(
          state.copyWith(
            states: LoginStates.error,
            errorMsg: result.msg,
          ),
        );
        AppLogger().error('Error From Server: ${result.msg}');
    }
  }
}
