import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octopii_provier_app/core/extensions/widgets_extensions.dart';
import 'package:octopii_provier_app/views/booking/wigdets/booking_widgets/index.dart';

import '../../../core/common_widgets/custom_tabbar.dart';
import '../../../core/utils/extensions.dart';
import '../../../gen/locale_keys.g.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.onSurfaceVariant,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SafeArea(
            child: Text(
              LocaleKeys.myBookings.tr(),
              style: Theme.of(context).textTheme.labelMedium?.copyWith(fontSize: 15.sp),
            ).paddingHorizontal(20.w),
          ),
          SizedBox(
            height: 24.h,
          ),
          Expanded(
            child: CustomTabBar(
              tabBarItems: <String>[
                LocaleKeys.upcomingBookings.tr(),
                LocaleKeys.inprogressBookings.tr(),
                // LocaleKeys.finishedBookings.tr(),
              ],
              tabViewItems: List.generate(
                2,
                (i) => BookingsListWidget(key: Key('$i'), status: i),
              ),
            ),
          ),
        ],
      ).paddingVertical(20.h),
    );
  }
}
