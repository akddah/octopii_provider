import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nested/nested.dart';
import 'package:octopii_provier_app/core/common_widgets/toast_manager.dart';
import 'package:octopii_provier_app/gen/locale_keys.g.dart';
import 'package:octopii_provier_app/views/booking_details/cubits/add_payment_cubit/add_payment_cubit.dart';
import 'package:octopii_provier_app/views/booking_details/cubits/booking_details_cubit/booking_details_cubit.dart';
import 'package:octopii_provier_app/views/booking_details/cubits/update_booking_status_cubit/update_booking_status_cubit.dart';

class BookingListenerWidget extends StatelessWidget {
  const BookingListenerWidget({
    required this.child,
    required this.bookingId,
    super.key,
    // this.newBookingStatus,
  });

  final Widget child;
  final int bookingId;
  // final int? newBookingStatus;

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: <SingleChildWidget>[
        BlocListener<UpdateBookingStatusCubit, UpdateBookingStatusState>(
          listener: (BuildContext context, UpdateBookingStatusState state) {
            if (state.isLoaded) {
              // final String localizedStatus = newBookingStatus != null
              //     // ? BookingStatusExtension.localizedStatusFromValue(newBookingStatus!)
                  // : '';
              ToastManager().success(
                context: context,
                message: state.successMsg ??
                    LocaleKeys.updateBookingStatusSuccessMessage.tr(),
                description:
                    LocaleKeys.updateBookingStatusSuccessDescription.tr(),
              );
              context.read<BookingDetailsCubit>().getBookingDetails(
                    bookingId: bookingId,
                  );
            } else if (state.isError) {
              ToastManager().error(
                context: context,
                message: state.errorMsg ??
                    LocaleKeys.updateBookingStatusErrorMessage.tr(),
                description:
                    LocaleKeys.updateBookingStatusErrorDescription.tr(),
              );
            }
          },
        ),
        BlocListener<AddPaymentCubit, AddPaymentState>(
          listener: (BuildContext context, AddPaymentState state) {
            if (state.isLoaded) {
              ToastManager().success(
                context: context,
                message: state.successMsg ??
                    LocaleKeys.addPaymentSuccessMessage.tr(),
                description: LocaleKeys.addPaymentSuccessDescription.tr(),
              );
              context.read<BookingDetailsCubit>().getBookingDetails(
                    bookingId: bookingId,
                  );
            } else if (state.isError) {
              ToastManager().error(
                context: context,
                message:
                    state.errorMsg ?? LocaleKeys.addPaymentErrorMessage.tr(),
                description: LocaleKeys.addPaymentErrorDescription.tr(),
              );
            }
          },
        ),
      ],
      child: child,
    );
  }
}
