import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:octopii_provier_app/core/config/app_constant_strings.dart';
import 'package:octopii_provier_app/core/helpers/enums.dart';
import 'package:octopii_provier_app/core/infrastructure/networking/server_gate.dart';
import 'package:octopii_provier_app/core/utils/generic_classes/generic.dart';
import 'package:octopii_provier_app/core/utils/utils/app_logger.dart';
import 'package:octopii_provier_app/models/bookings/booking_details_response_model.dart';

part 'update_booking_status_state.dart';

class UpdateBookingStatusCubit extends Cubit<UpdateBookingStatusState> {
  UpdateBookingStatusCubit()
      : super(
          const UpdateBookingStatusState(status: GenericStateStatus.initial),
        );

  Future<void> updateBookingStatus({
    required int bookingId,
    required int bookingNewStatus,
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
      )}',
      body: <String, dynamic>{
        'status': bookingNewStatus,
      },
    );
    AppLogger().info(
      'The Response Result Is Of Update Booking Status ${result.success}',
    );
    AppLogger().info('The Response Result Is Of Update Booking Status ${result.data}');
    AppLogger().info(
      'The Response Result Is Of Update Booking Status ${result.statusCode}',
    );
    AppLogger().info(
      'The Response Result Is Of Update Booking Status ${result.responseState}',
    );
    switch (result.responseState) {
      case ResponseState.success:
        final BookingDetailsData bookingDetailsResponseModel = BookingDetailsData.fromJson(
          result.data!,
        );

        emit(
          state.copyWith(
            status: GenericStateStatus.loaded,
            bookingDetailsResponseModel: bookingDetailsResponseModel,
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
