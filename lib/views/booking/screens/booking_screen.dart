import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/common_widgets/custom_tabbar.dart';
import '../../../core/extensions/widgets_extensions.dart';
import '../../../core/utils/extensions.dart';
import '../../../gen/locale_keys.g.dart';
import '../wigdets/booking_widgets/index.dart';

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
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          Expanded(
            child: CustomTabBar(
              tabBarItems: <String>[
                LocaleKeys.upcomingBookings.tr(),
                LocaleKeys.finishedBookings.tr(),
              ],
              tabViewItems: const <Widget>[
                UpcomingBookingsWidget(),
                FinishedBookingsWidget(),
              ],
            ),
          ),
        ],
      ).paddingAll(20.w),
    );
  }
}
