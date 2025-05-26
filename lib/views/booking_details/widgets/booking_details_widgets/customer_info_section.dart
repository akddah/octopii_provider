import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octopii_provier_app/core/const/dimensions.dart';
import 'package:octopii_provier_app/gen/locale_keys.g.dart';
import 'package:octopii_provier_app/models/bookings/booking_details_response_model.dart';

class CustomerInfoSection extends StatelessWidget {
  const CustomerInfoSection({
    super.key,
    this.bookingResponse,
  });

  final BookingResponse? bookingResponse;

  @override
  Widget build(BuildContext context) {
    final address = bookingResponse?.isForeign == true ? bookingResponse?.foreignAddress : bookingResponse?.address;
    return Column(
      children: <Widget>[
        Container(
          width: 353.w,
          padding: EdgeInsets.symmetric(vertical: 16.h),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondaryContainer,
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Text(
            textAlign: TextAlign.center,
            '${(bookingResponse?.isForeign == true ? bookingResponse?.foreignCustomer?.name : bookingResponse?.customerName) ?? ""} ${LocaleKeys.orderDetails.tr()}',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        SizedBox(
          height: 24.h,
        ),
        if (address != null || address?.locationName != null || bookingResponse?.customerPhone != null)
          Container(
            width: 353.w,
            // height: address!=null&& address?.locationName!=null?130.h:75.h,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondaryContainer,
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text.rich(TextSpan(children: [
                  if (bookingResponse?.referenceId != null) ...[
                    TextSpan(
                      text: '#${bookingResponse!.referenceId}',
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            fontSize: 13.sp,
                            fontWeight: AppDimensions.bold,
                          ),
                    ),
                    TextSpan(text: " "),
                  ],
                ])),
                if (address != null) ...<Widget>[
                  Text(
                    LocaleKeys.location.tr(),
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: Theme.of(context).colorScheme.scrim,
                        ),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  Text(
                    [
                      if (address.locationName != null) address.locationName,
                      if (address.streetName != null) address.streetName,
                      if (address.buildingNumber != null) "${LocaleKeys.building.tr()} ${address.buildingNumber}",
                      if (address.floorNumber != null) "${LocaleKeys.floor.tr()}${address.floorNumber}",
                      if (address.unitNumber != null) "${LocaleKeys.appartment_no.tr()} ${address.unitNumber}"
                    ].join(', '),
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
                SizedBox(
                  height: 8.h,
                ),
                if (bookingResponse?.isForeign == true && bookingResponse?.foreignCustomer?.phone?.isNotEmpty == true) ...<Widget>[
                  Text(
                    LocaleKeys.mobileNumber.tr(),
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  Text(
                    '${bookingResponse?.foreignCustomer?.phone}',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Theme.of(context).colorScheme.scrim,
                        ),
                  ),
                ] else if (bookingResponse?.customerPhone != null && bookingResponse!.customerPhone!.isNotEmpty) ...<Widget>[
                  Text(
                    LocaleKeys.mobileNumber.tr(),
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  Text(
                    '${bookingResponse!.customerPhone}',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Theme.of(context).colorScheme.scrim,
                        ),
                  ),
                ],
              ],
            ),
          ),
      ],
    );
  }
}
