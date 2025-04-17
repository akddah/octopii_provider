import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../../../../core/config/app_constant_strings.dart';
import '../../../../core/helpers/enums.dart';
import '../../../../core/infrastructure/networking/server_gate.dart';
import '../../../../core/utils/utils/app_logger.dart';
import '../../../../models/bookings/booking_details_response_model.dart';

part 'booking_details_state.dart';

class BookingDetailsCubit extends Cubit<BookingDetailsState> {
  BookingDetailsCubit() : super(const BookingDetailsState(status: GenericStateStatus.initial));

  Future<void> getBookingDetails({required int bookingId}) async {
    emit(
      state.copyWith(
        status: GenericStateStatus.loading,
      ),
    );

    final CustomResponse<Map<String, dynamic>> result = await ServerGate.i.getFromServer<Map<String, dynamic>>(
      url: '${dotenv.get(AppConstantStrings.bookings)}/${dotenv.getInt(
        AppConstantStrings.bookingId,
        fallback: bookingId,
      )}',
    );
    AppLogger().info('The Response Result Is Of Booking Details ${result.success}');
    AppLogger().info('The Response Result Is Of Booking Details ${result.data}');
    AppLogger().info('The Response Result Is Of Booking Details ${result.statusCode}');
    AppLogger().info(
      'The Response Result Is Of Booking Details ${result.responseState}',
    );
    switch (result.responseState) {
      case ResponseState.success:
        try {
          final BookingDetailsData bookingDetailsResponseModel = BookingDetailsData.fromJson(
            result.data!,
          );
          emit(
            state.copyWith(
              status: GenericStateStatus.loaded,
              bookingDetailsResponseModel: bookingDetailsResponseModel,
            ),
          );
        } catch (e) {
          log('-=-=-=-=-=- $e');
          emit(
            state.copyWith(
              status: GenericStateStatus.error,
              errorMsg: '$e',
            ),
          );
        }

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
