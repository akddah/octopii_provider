import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octopii_provier_app/core/utils/extensions.dart';
import 'package:octopii_provier_app/gen/locale_keys.g.dart';
import 'package:octopii_provier_app/models/bookings/booking_details_response_model.dart';
import 'package:octopii_provier_app/views/booking_details/widgets/index.dart';

class ServiceDetailsSection extends StatelessWidget {
  const ServiceDetailsSection({
    super.key,
    this.bookingResponse,
  });

  final BookingResponse? bookingResponse;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 353.w,
      // height: 100.h,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondaryContainer,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        children: <Widget>[
          // SizedBox(
          //   // height: 60.h,
          //   child: ListView.separated(
          //     shrinkWrap: true,
          //     itemBuilder: (BuildContext context, int index) => ,
          //     separatorBuilder: (BuildContext context, __) => SizedBox(
          //       height: 8.h,
          //     ),
          //     itemCount: bookingResponse?.services?.length ?? 0,
          //   ),
          // ),
          Column(
            spacing: 8.h,
            children: List.generate(
              bookingResponse?.services?.length ?? 0,
              (index) => ServiceDetailsView(
                serviceName: bookingResponse?.services?[index].bookingTitle(context.locale.languageCode) ?? '',
                serviceDuration: bookingResponse?.services?[index].duration?.toInt() ?? 0,
                serviceCost: bookingResponse?.services?[index].price ?? '',
              ),
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          Divider(
            color: Theme.of(context).colorScheme.onInverseSurface,
          ),
          SizedBox(
            height: 8.h,
          ),
          if ((double.tryParse(bookingResponse?.discount ?? '') ?? 0) != 0)
            Row(
              children: [
                Expanded(
                  child: Text(
                    LocaleKeys.discount.tr(),
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.green),
                  ),
                ),
                Text(
                  '${LocaleKeys.currencyEgp.tr()}${bookingResponse?.discount}',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.green),
                ),
              ],
            ).withPadding(vertical: 4.h),
          if ((double.tryParse(bookingResponse?.priceAdjustment ?? '') ?? 0) != 0)
            Row(
              children: [
                Expanded(
                  child: Text(
                    LocaleKeys.price_adjustment.tr(),
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.black),
                  ),
                ),
                Text(
                  '${LocaleKeys.currencyEgp.tr()}${bookingResponse?.priceAdjustment}',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.black),
                ),
              ],
            ).withPadding(vertical: 4.h),
          if ((double.tryParse(bookingResponse?.productsTotalPrice ?? '') ?? 0) != 0)
            Row(
              children: [
                Expanded(
                  child: Text(
                    LocaleKeys.products_total_price.tr(),
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.black),
                  ),
                ),
                Text(
                  '${LocaleKeys.currencyEgp.tr()}${bookingResponse?.productsTotalPrice}',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.black),
                ),
              ],
            ).withPadding(vertical: 4.h),
          Row(
            children: [
              Expanded(
                child: Text(
                  LocaleKeys.youWillReceive.tr(),
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
              Text(
                '${LocaleKeys.currencyEgp.tr()}${bookingResponse?.totalPrice}',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ).withPadding(vertical: 4.h),
        ],
      ),
    );
  }
}
