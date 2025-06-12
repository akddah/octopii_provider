import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:octopii_provier_app/core/extensions/booking_status_extension.dart';
import 'package:octopii_provier_app/models/bookings/booking_details_response_model.dart';
import 'package:octopii_provier_app/views/booking_details/cubits/update_booking_status_cubit/update_booking_status_cubit.dart';
import 'package:octopii_provier_app/views/booking_details/widgets/index.dart';

import '../../../core/common_widgets/application_app_bar_back_button.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_system_ui_overlay_styles.dart';
import '../cubits/add_payment_cubit/add_payment_cubit.dart';
import '../cubits/booking_details_cubit/booking_details_cubit.dart';

class BookingDetailsScreen extends StatelessWidget {
  const BookingDetailsScreen({
    required this.bookId,
    required this.customerName,
    super.key,
  });

  final int bookId;
  final String customerName;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: AppSystemUiOverlayStyles.darkStatusBarIconsStyle.copyWith(
        statusBarColor: AppColors.transparent,
        systemNavigationBarColor: AppColors.primaryWhite,
      ),
      child: MultiBlocProvider(
        providers: <BlocProvider<dynamic>>[
          BlocProvider<BookingDetailsCubit>(
            create: (BuildContext context) => BookingDetailsCubit()..getBookingDetails(bookingId: bookId),
          ),
          BlocProvider<AddPaymentCubit>(
            create: (BuildContext context) => AddPaymentCubit(),
          ),
          BlocProvider<UpdateBookingStatusCubit>(
            create: (BuildContext context) => UpdateBookingStatusCubit(),
          ),
        ],
        child: Scaffold(
          bottomNavigationBar: BlocBuilder<BookingDetailsCubit, BookingDetailsState>(
            builder: (BuildContext context, BookingDetailsState state) {
              if (state.bookingDetailsResponseModel?.response != null && showBtns(state.bookingDetailsResponseModel!)) {
                return BookingDetailsActionButtons(
                  bookingResponse: state.bookingDetailsResponseModel!.response,
                );
              } else {
                return SizedBox();
              }
            },
          ),
          backgroundColor: Theme.of(context).colorScheme.onSurfaceVariant,
          appBar: ApplicationAppBarBackButton(
            onShareCLicked: () {},
          ),
          body: const BookingDetailsBody(),
        ),
      ),
    );
  }

  bool showBtns(BookingDetailsData bookingResponse) {
    final orderTime = bookingResponse.response?.date?.toLocal();
    if (orderTime == null) {
      return false;
    } else {
      final now = DateTime.now();
      final halfHourBeforeOrder = orderTime.subtract(Duration(minutes: 30));

      if (now.isAfter(halfHourBeforeOrder)) {
        return bookingResponse.response!.bookingStatus.isConfirmed || bookingResponse.response!.bookingStatus.isStarted;
      } else {
        return false;
      }
    }
  }
}
