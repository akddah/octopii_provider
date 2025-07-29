import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../../../../../core/config/app_constant_strings.dart';
import '../../../../../core/helpers/enums.dart';
import '../../../../../core/infrastructure/networking/server_gate.dart';
import '../../../../../core/utils/generic_classes/generic.dart';
import '../../../../../core/utils/utils/app_logger.dart';
import '../../../../../main.dart';
import '../../../../../models/login/login_request_model.dart';

part 'request_otp_state.dart';

class RequestOtpCubit extends Cubit<RequestOtpStates> {
  RequestOtpCubit() : super(const RequestOtpStates(status: GenericStateStatus.initial));
  final phoneNumberController = TextEditingController(text: phone);

  Future<void> requestOtp({required GenericLoginRequestModel requestModel}) async {
    emit(state.copyWith(status: GenericStateStatus.loading));
    final CustomResponse<Map<String, dynamic>> result = await ServerGate.i.sendToServer<Map<String, dynamic>>(
      url: dotenv.get(AppConstantStrings.requestOtp),
      body: requestModel.toJson(),
    );
    AppLogger().info('The Response Result Is ${result.success}');
    AppLogger().info('The Response Result Is ${result.data}');
    AppLogger().info('The Response Result Is ${result.statusCode}');
    switch (result.responseState) {
      case ResponseState.success:
        emit(
          state.copyWith(
            status: GenericStateStatus.loaded,
            successMsg: result.msg,
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
  }
}
