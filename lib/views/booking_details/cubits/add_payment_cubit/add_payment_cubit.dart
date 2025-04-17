import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:octopii_provier_app/core/config/app_constant_strings.dart';
import 'package:octopii_provier_app/core/helpers/enums.dart';
import 'package:octopii_provier_app/core/infrastructure/networking/server_gate.dart';
import 'package:octopii_provier_app/core/utils/generic_classes/generic.dart';
import 'package:octopii_provier_app/core/utils/utils/app_logger.dart';

part 'add_payment_state.dart';

class AddPaymentCubit extends Cubit<AddPaymentState> {
  AddPaymentCubit() : super(const AddPaymentState(status: GenericStateStatus.initial));

  Future<void> addBookingPayment({
    required int bookingId,
    required num amount,
  }) async {
    emit(
      state.copyWith(
        status: GenericStateStatus.loading,
      ),
    );

    final CustomResponse<Map<String, dynamic>> result = await ServerGate.i.sendToServer<Map<String, dynamic>>(
      url: '${dotenv.get(AppConstantStrings.bookings)}/${dotenv.getInt(
        AppConstantStrings.bookingId,
        fallback: bookingId,
      )}/${dotenv.get(AppConstantStrings.payment)}',
      body: <String, dynamic>{
        'amount': amount,
      },
    );
    AppLogger().info(
      'The Response Result Is Of Add Payment ${result.success}',
    );
    AppLogger().info('The Response Result Is Of Add Payment ${result.data}');
    AppLogger().info(
      'The Response Result Is Of Add Payment ${result.statusCode}',
    );
    AppLogger().info(
      'The Response Result Is Of Add Payment ${result.responseState}',
    );
    switch (result.responseState) {
      case ResponseState.success:
        emit(
          state.copyWith(
            status: GenericStateStatus.loaded,
            successMsg: result.data?['response'] as String?,
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
