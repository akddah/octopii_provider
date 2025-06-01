import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octopii_provier_app/core/common_widgets/app_static_button.dart';
import 'package:octopii_provier_app/core/extensions/widgets_extensions.dart';
import 'package:octopii_provier_app/core/helpers/app_helper_functions.dart';
import 'package:octopii_provier_app/gen/assets.gen.dart';
import 'package:octopii_provier_app/gen/locale_keys.g.dart';
import 'package:octopii_provier_app/models/bookings/booking_details_response_model.dart';

class BookingDetailsActionButtons extends StatelessWidget {
  const BookingDetailsActionButtons({
    super.key,
    this.bookingResponse,
  });

  final BookingResponse? bookingResponse;

  @override
  Widget build(BuildContext context) {
    final address = bookingResponse?.isForeign == true ? bookingResponse?.foreignAddress : bookingResponse?.address;
    final phone = bookingResponse?.isForeign == true ? bookingResponse?.foreignCustomer?.phone : bookingResponse?.customerPhone;
    final customerName = bookingResponse?.isForeign == true ? bookingResponse?.foreignCustomer?.name : bookingResponse?.customerName;

    if (address != null || address?.locationName != null || phone != null) {
      return Container(
        height: 108.h,
        padding: EdgeInsets.only(top: 16.h, left: 16.h, right: 16.w),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondaryContainer,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
        ),
        child: Row(
          children: <Widget>[
            if (phone?.isNotEmpty ?? false)
              Expanded(
                child: AppStaticButton(
                  onTap: () => AppHelperFunctions().makePhoneCall(phone!),
                  width: 174.50.w,
                  height: 44.h,
                  borderColor: Theme.of(context).colorScheme.primary,
                  buttonColor: Theme.of(context).colorScheme.secondaryContainer,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      MyAssets.icons.callIcon.svg(),
                      SizedBox(
                        width: 10.w,
                      ),
                      Expanded(
                        flex: 10,
                        child: Text(
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: Theme.of(context).colorScheme.primary,
                              ),
                          '${LocaleKeys.call.tr()} ${customerName ?? ''}',
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ).paddingHorizontal(5.w),
                ),
              )
            else
              const SizedBox.shrink(),
            SizedBox(
              width: 12.w,
            ),
            if (address?.latitude != null && address?.longitude != null)
              Expanded(
                child: AppStaticButton(
                  onTap: () => AppHelperFunctions().openMaps(
                    double.parse(address!.latitude!),
                    double.parse(address.longitude!),
                  ),
                  width: 174.50.w,
                  height: 44.h,
                  borderColor: Theme.of(context).colorScheme.primary,
                  buttonColor: Theme.of(context).colorScheme.secondaryContainer,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      MyAssets.icons.mapIcon.svg(),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Theme.of(context).colorScheme.primary),
                        LocaleKeys.getDirection.tr(),
                      ).wrapCenter(),
                    ],
                  ),
                ),
              )
            else
              const SizedBox.shrink(),
          ],
        ),
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}
