import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../../../../../core/config/app_constant_strings.dart';
import '../../../../../core/const/database_constants.dart';
import '../../../../../core/helpers/enums.dart';
import '../../../../../core/helpers/shared_pref_helper.dart';
import '../../../../../core/infrastructure/networking/server_gate.dart';
import '../../../../../core/utils/generic_classes/generic.dart';
import '../../../../../models/login/login_request_model.dart';
import '../../../../../models/login/login_response_model.dart';

part 'verify_otp_state.dart';

class VerifyOtpCubit extends Cubit<VerifyOtpStates> {
  VerifyOtpCubit() : super(const VerifyOtpStates(status: GenericStateStatus.initial));

  Future<void> verifyOtp({required GenericLoginRequestModel requestModel}) async {
    try {
      emit(state.copyWith(status: GenericStateStatus.loading));
      final CustomResponse<Map<String, dynamic>> result = await ServerGate.i.sendToServer<Map<String, dynamic>>(
        url: dotenv.get(AppConstantStrings.verifyOtp),
        body: requestModel.toJson(),
      );
      switch (result.responseState) {
        case ResponseState.success:
          if (result.data != null) {
            final LoginResponseModel loginResponse = LoginResponseModel.fromJson(result.data!);

            final String? token = loginResponse.authorization.token;

            if (token != null) {
              await SharedPrefHelper().setUser(loginResponse);
              await SharedPrefHelper().setSecuredToken(DatabaseConstants.forgetPasswordTokenKey, token);
              emit(
                state.copyWith(
                  status: GenericStateStatus.loaded,
                  loginResponse: loginResponse,
                  responseState: result.success,
                ),
              );
            }
          } else {
            emit(state.copyWith(status: GenericStateStatus.loaded, responseState: result.success));
          }

        case ResponseState.error:
          emit(state.copyWith(status: GenericStateStatus.error, errorMsg: result.msg));
      }
    } catch (e, s) {
      log('$e', stackTrace: s);
    }
  }
}
