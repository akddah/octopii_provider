import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/const/dimensions.dart';
import '../../../../core/extensions/navigation.dart';
import '../../../../core/helpers/app_helper_functions.dart';
import '../../../../core/helpers/enums.dart';
import '../../../../core/navigation/route_names.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../gen/locale_keys.g.dart';
import '../../../../models/bookings/booking_response_model.dart';

class BookingCardView extends StatelessWidget {
  const BookingCardView({
    required this.bookingDetails,
    super.key,
  });

  final BookingDetails bookingDetails;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => context.push(
        RouteNames.bookingDetails,
        arguments: <String, dynamic>{
          'bookId': bookingDetails.id,
          'customerName': bookingDetails.customerName,
        },
      ),
      child: Container(
        width: 353.w,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            16.r,
          ),
          color: Theme.of(context).colorScheme.secondaryContainer,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text.rich(TextSpan(children: [
                      if (bookingDetails.referenceId != null) ...[
                        TextSpan(
                          text: '#${bookingDetails.referenceId}',
                          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                                fontSize: 13.sp,
                                fontWeight: AppDimensions.bold,
                              ),
                        ),
                        TextSpan(text: " "),
                      ],
                      TextSpan(
                        text: (bookingDetails.isForeign == true ? bookingDetails.foreignCustomer?.name : bookingDetails.customerName) ?? '',
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              fontSize: 13.sp,
                              fontWeight: AppDimensions.bold,
                            ),
                      ),
                    ])),
                    SizedBox(
                      height: 4.h,
                    ),
                    Text(
                      bookingDetails.services?.firstOrNull?.bookingTitle(context.locale.languageCode) ?? '',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontSize: 13.sp,
                            color: Theme.of(context).colorScheme.scrim,
                          ),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Text(
                      bookingDetails.date == null ? "" : AppHelperFunctions().formatDateTime(bookingDetails.date!.toLocal()),
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ],
                ),
                const Spacer(),
                Visibility(
                  visible: bookingDetails.payment?.status.toLowerCase() == 'paid',
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        LocaleKeys.booked.tr(),
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: Theme.of(context).colorScheme.onTertiaryFixedVariant,
                            ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      MyAssets.icons.checkCircleIcon.svg(),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8.h,
            ),
            Container(
              width: 329.w,
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    AppColors.primaryWhite,
                    AppColors.neutral700,
                  ],
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: <Widget>[
                  Text(
                    bookingDetails.payment?.method == PaymentMethod.cash ? LocaleKeys.payInCash.tr() : LocaleKeys.payWithCredit.tr(),
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Theme.of(context).colorScheme.scrim,
                        ),
                  ),
                  const Spacer(),
                  Text.rich(
                    TextSpan(
                      children: <InlineSpan>[
                        TextSpan(
                          text: LocaleKeys.currencyEgp.tr(),
                          style: Theme.of(context).textTheme.labelSmall?.copyWith(
                                color: Theme.of(context).colorScheme.onInverseSurface,
                              ),
                        ),
                        TextSpan(
                          text: ' ${bookingDetails.totalPrice}',
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                color: Theme.of(context).colorScheme.scrim,
                              ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Visibility(
            //   visible: bookingDetails.payment?.status != PaymentStatus.paid,
            //   child: const Expanded(
            //     child: AppointmentsActionButtons(),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
