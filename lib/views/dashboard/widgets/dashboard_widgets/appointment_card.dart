import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octopii_provier_app/core/const/dimensions.dart';
import 'package:octopii_provier_app/core/extensions/navigation.dart';
import 'package:octopii_provier_app/core/helpers/app_helper_functions.dart';
import 'package:octopii_provier_app/core/helpers/enums.dart';
import 'package:octopii_provier_app/core/navigation/route_names.dart';
import 'package:octopii_provier_app/core/theme/app_colors.dart';
import 'package:octopii_provier_app/gen/assets.gen.dart';
import 'package:octopii_provier_app/gen/locale_keys.g.dart';
import 'package:octopii_provier_app/models/bookings/booking_response_model.dart';

class AppointmentCard extends StatelessWidget {
  const AppointmentCard({
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
          children: <Widget>[
            Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // Text.rich(TextSpan(children: [
                    //   if (bookingDetails.id != null) ...[
                    //     TextSpan(
                    //       text: "#${bookingDetails.id}",
                    //       style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    //             fontSize: 14.sp,
                    //             fontWeight: AppDimensions.bold,
                    //           ),
                    //     ),
                    //     TextSpan(text: ' '),
                    //   ],
                    //   TextSpan(
                    //     text: bookingDetails.customerName ?? '',
                    //     style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    //           fontSize: 13.sp,
                    //           fontWeight: AppDimensions.bold,
                    //         ),
                    //   ),
                    // ])),
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
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontSize: 13.sp,
                            color: Theme.of(context).colorScheme.scrim,
                          ),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Text(
                      bookingDetails.date == null ? '' : AppHelperFunctions().formatDateTime(bookingDetails.date!),
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment(0.33, -0.94),
                      end: Alignment(-0.33, 0.94),
                      colors: <Color>[
                        AppColors.primaryWhite,
                        AppColors.neutral700,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: <Widget>[
                      Text.rich(
                        TextSpan(
                          children: <InlineSpan>[
                            TextSpan(
                              text: LocaleKeys.currencyEgp.tr(),
                              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                                    color: Theme.of(context).colorScheme.onInverseSurface,
                                  ),
                            ),
                            WidgetSpan(
                              child: SizedBox(
                                width: 2.w,
                              ),
                            ),
                            TextSpan(
                              text: '${bookingDetails.totalPrice}',
                              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                                    color: Theme.of(context).colorScheme.onInverseSurface,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Text(
                        bookingDetails.payment?.method == PaymentMethod.cash ? LocaleKeys.cash.tr() : LocaleKeys.credit.tr(),
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: Theme.of(context).colorScheme.scrim,
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: <Widget>[
                Visibility(
                  visible: bookingDetails.payment?.status == PaymentStatus.paid,
                  child: Row(
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
                const Spacer(),
                Text(
                  bookingDetails.payment?.method == PaymentMethod.cash ? LocaleKeys.paidInCash.tr() : LocaleKeys.paidByCreditCard.tr(),
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onTertiaryFixedVariant,
                      ),
                ),
              ],
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
