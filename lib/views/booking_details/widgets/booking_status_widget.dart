import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octopii_provier_app/core/common_widgets/custom_loading_button.dart';
import 'package:octopii_provier_app/core/extensions/booking_status_extension.dart';
import 'package:octopii_provier_app/core/helpers/enums.dart';
import 'package:octopii_provier_app/core/utils/extensions.dart';
import 'package:octopii_provier_app/gen/assets.gen.dart';
import 'package:octopii_provier_app/gen/locale_keys.g.dart';
import 'package:octopii_provier_app/models/bookings/booking_details_response_model.dart';
import 'package:octopii_provier_app/views/booking_details/cubits/update_booking_status_cubit/update_booking_status_cubit.dart';
import 'package:octopii_provier_app/views/booking_details/widgets/index.dart';

class BookingStatusWidget extends StatelessWidget {
  const BookingStatusWidget({super.key, this.bookingResponse});

  final BookingResponse? bookingResponse;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        if (bookingResponse?.date != null)
          Container(
            width: 353.w,
            // height: bookingResponse!.bookingStatus.isConfirmed || bookingResponse!.bookingStatus.isStarted
            //     ? 48.h
            //     : bookingResponse!.bookingStatus.isCancelled && bookingResponse!.payment.status == PaymentStatus.paid ||
            //             bookingResponse!.payment.status == PaymentStatus.unpaid
            //         ? 115.h
            //         : bookingResponse!.payment.status == PaymentStatus.paid && bookingResponse!.bookingStatus.isCompleted
            //             ? 48.h
            //             : 115.h,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondaryContainer,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(
                      CupertinoIcons.calendar,
                      color: context.hintColor,
                    ),
                    SizedBox(
                      width: 6.w,
                    ),
                    Text(
                      DateFormat('d MMM yyyy hh:mm aa', context.locale.languageCode).format(bookingResponse!.date!.toLocal()).toString(),
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ],
                ),
              ],
            ),
          ).withPadding(bottom: 24.h),
        Container(
          width: 353.w,
          // height: bookingResponse!.bookingStatus.isConfirmed || bookingResponse!.bookingStatus.isStarted
          //     ? 48.h
          //     : bookingResponse!.bookingStatus.isCancelled && bookingResponse!.payment.status == PaymentStatus.paid ||
          //             bookingResponse!.payment.status == PaymentStatus.unpaid
          //         ? 115.h
          //         : bookingResponse!.payment.status == PaymentStatus.paid && bookingResponse!.bookingStatus.isCompleted
          //             ? 48.h
          //             : 115.h,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondaryContainer,
            borderRadius: BorderRadius.circular(12),
          ),
          child: bookingResponse!.bookingStatus.isConfirmed || bookingResponse!.bookingStatus.isStarted
              ? Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        MyAssets.icons.notificationIcon.svg(),
                        SizedBox(
                          width: 6.w,
                        ),
                        Text(
                          LocaleKeys.clientWillPayInCash.tr(),
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                      ],
                    ),
                  ],
                )
              : BookingPendingOrCancelView(
                  bookingResponse: bookingResponse,
                ),
        ),
        if (showBtns) ...<Widget>[
          SizedBox(
            height: 24.h,
          ),
          CustomLoadingButton<UpdateBookingStatusCubit, UpdateBookingStatusState>(
            cubit: context.read<UpdateBookingStatusCubit>(),
            loadingState: const UpdateBookingStatusState(
              status: GenericStateStatus.loading,
            ),
            width: 353.w,
            onTap: () => context.read<UpdateBookingStatusCubit>().updateBookingStatus(
                  bookingId: bookingResponse!.id,
                  bookingNewStatus: bookingResponse!.bookingStatus.isConfirmed ? 1 : 2,
                ),
            text: bookingResponse!.bookingStatus.isConfirmed ? LocaleKeys.startBooking.tr() : LocaleKeys.finishBooking.tr(),
          ),
        ] else
          (() {
            final orderTime = bookingResponse!.date!.toLocal();

            final now = DateTime.now();
            final halfHourBeforeOrder = orderTime.subtract(Duration(minutes: 30));

            if (!now.isAfter(halfHourBeforeOrder)) {
              return Container(
                // height: bookingResponse!.bookingStatus.isConfirmed || bookingResponse!.bookingStatus.isStarted
                //     ? 48.h
                //     : bookingResponse!.bookingStatus.isCancelled && bookingResponse!.payment.status == PaymentStatus.paid ||
                //             bookingResponse!.payment.status == PaymentStatus.unpaid
                //         ? 115.h
                //         : bookingResponse!.payment.status == PaymentStatus.paid && bookingResponse!.bookingStatus.isCompleted
                //             ? 48.h
                //             : 115.h,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: context.errorColor.withValues(alpha: 0.1),
                  border: Border.all(color: context.errorColor),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(
                          CupertinoIcons.info,
                          color: context.errorColor,
                        ),
                        SizedBox(width: 6.w),
                        Expanded(
                          child: Text(
                            LocaleKeys.orderActionsMsg.tr(),
                            style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: context.errorColor, fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ).withPadding(vertical: 24.h);
            } else {
              return SizedBox.shrink();
            }
          })(),
      ],
    );
  }

  bool get showBtns {
    final orderTime = bookingResponse?.date?.toLocal();
    if (orderTime == null) {
      return false;
    } else {
      final now = DateTime.now();
      final halfHourBeforeOrder = orderTime.subtract(Duration(minutes: 30));

      if (now.isAfter(halfHourBeforeOrder)) {
        return bookingResponse?.bookingStatus.isConfirmed == true || bookingResponse?.bookingStatus.isStarted == true;
      } else {
        return false;
      }
    }
  }
}
