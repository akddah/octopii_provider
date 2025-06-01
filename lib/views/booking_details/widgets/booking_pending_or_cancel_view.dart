import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octopii_provier_app/core/common_widgets/custom_loading_button.dart';
import 'package:octopii_provier_app/core/extensions/booking_status_extension.dart';
import 'package:octopii_provier_app/core/helpers/enums.dart';
import 'package:octopii_provier_app/gen/assets.gen.dart';
import 'package:octopii_provier_app/gen/locale_keys.g.dart';
import 'package:octopii_provier_app/models/bookings/booking_details_response_model.dart';
import 'package:octopii_provier_app/views/booking_details/cubits/add_payment_cubit/add_payment_cubit.dart';

class BookingPendingOrCancelView extends StatelessWidget {
  const BookingPendingOrCancelView({
    required this.bookingResponse,
    super.key,
  });

  final BookingResponse? bookingResponse;

  @override
  Widget build(BuildContext context) {
    return bookingResponse!.bookingStatus.isCancelled || bookingResponse!.bookingStatus.isCompleted && bookingResponse!.payment?.status != PaymentStatus.paid
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
              SizedBox(
                height: 8.h,
              ),
              CustomLoadingButton<AddPaymentCubit, AddPaymentState>(
                loadingState: const AddPaymentState(status: GenericStateStatus.loading),
                cubit: context.read<AddPaymentCubit>(),
                width: 329.w,
                onTap: () => context.read<AddPaymentCubit>().addBookingPayment(
                      bookingId: bookingResponse!.id,
                      amount: bookingResponse!.totalPrice ?? 0,
                    ),
                backGroundColor: Theme.of(context).colorScheme.tertiary,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    MyAssets.icons.paymentsIcon.svg(),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text.rich(
                      TextSpan(
                        children: <InlineSpan>[
                          TextSpan(
                            text: LocaleKeys.iReceived.tr(),
                            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  color: Theme.of(context).colorScheme.secondaryContainer,
                                ),
                          ),
                          WidgetSpan(
                            child: SizedBox(
                              width: 2.w,
                            ),
                          ),
                          TextSpan(
                            text: '${bookingResponse?.totalPrice}',
                            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  color: Theme.of(context).colorScheme.secondaryContainer,
                                ),
                          ),
                          WidgetSpan(
                            child: SizedBox(
                              width: 2.w,
                            ),
                          ),
                          TextSpan(
                            text: LocaleKeys.currencyEgp.tr(),
                            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  color: Theme.of(context).colorScheme.secondaryContainer,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        : Row(
            children: <Widget>[
              MyAssets.icons.checkCircleIcon.svg(),
              SizedBox(
                width: 6.w,
              ),
              Text(
                bookingResponse?.payment?.method == PaymentMethod.cash ? LocaleKeys.paidInCash.tr() : LocaleKeys.paidByCreditCard.tr(),
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Theme.of(context).colorScheme.scrim,
                    ),
              ),
            ],
          );
  }
}
