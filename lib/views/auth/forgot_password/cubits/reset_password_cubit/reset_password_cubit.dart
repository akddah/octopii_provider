import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:octopii_provier_app/core/config/app_constant_strings.dart';
import 'package:octopii_provier_app/core/const/database_constants.dart';
import 'package:octopii_provier_app/core/helpers/enums.dart';
import 'package:octopii_provier_app/core/helpers/shared_pref_helper.dart';
import 'package:octopii_provier_app/core/infrastructure/networking/server_gate.dart';
import 'package:octopii_provier_app/core/utils/generic_classes/generic.dart';
import 'package:octopii_provier_app/core/utils/utils/app_logger.dart';
import 'package:octopii_provier_app/models/reset_password/reset_password_models.dart';
import 'package:octopii_provier_app/models/reset_password/reset_password_request_models.dart';

part 'reset_password_state.dart';

class ResetPasswordCubit extends Cubit<ResetPasswordState> {
  ResetPasswordCubit() : super(const ResetPasswordState(status: GenericStateStatus.initial));
  Future<void> requestPassword({required ResetPasswordRequestModel requestModel}) async {
    try {
      emit(
        state.copyWith(
          status: GenericStateStatus.loading,
        ),
      );
      final token = await SharedPrefHelper().getSecuredToken(DatabaseConstants.forgetPasswordTokenKey);
      log('-=-=-=-=-=-=- $token');
      final CustomResponse<Map<String, dynamic>> result = await ServerGate.i.sendToServer<Map<String, dynamic>>(
        url: dotenv.get(AppConstantStrings.resetPassword),
        body: requestModel.toJson(),
        headers: {"Authorization": "Bearer $token"},
      );
      AppLogger().info('The Response Result Is ${result.success}');
      AppLogger().info('The Response Result Is ${result.data}');
      AppLogger().info('The Response Result Is ${result.statusCode}');
      switch (result.responseState) {
        case ResponseState.success:
          final ResetPasswordResponseData resetPasswordResponseData = ResetPasswordResponseData.fromJson(result.data!);

          emit(
            state.copyWith(
              status: GenericStateStatus.loaded,
              successMsg: result.msg,
              resetPasswordResponseData: resetPasswordResponseData,
            ),
          );

        case ResponseState.error:
          emit(
            state.copyWith(
              status: GenericStateStatus.error,
              errorMsg: result.msg,
            ),
          );
          AppLogger().error('Error From Server: ${result.msg}');
      }
    } catch (e, s) {
      log('$e', stackTrace: s);
    }
  }
}
