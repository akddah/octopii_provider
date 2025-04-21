import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/common_widgets/application_app_bar_back_button.dart';
import '../../../core/common_widgets/custom_tabbar.dart';
import '../../../core/utils/extensions.dart';
import '../../../gen/locale_keys.g.dart';
import '../../holidays/widgets/list_holidays_widgets/holiday_days_tap.dart';
import '../widgets/manage_working_days_widgets/index.dart';

class ManageWorkingDaysScreen extends StatefulWidget {
  const ManageWorkingDaysScreen({super.key});

  @override
  State<ManageWorkingDaysScreen> createState() => _ManageWorkingDaysScreenState();
}

class _ManageWorkingDaysScreenState extends State<ManageWorkingDaysScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ApplicationAppBarBackButton(),
      backgroundColor: context.onSurfaceVariant,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                LocaleKeys.manageWorkingHours.tr(),
                style: Theme.of(context).textTheme.labelMedium?.copyWith(fontSize: 15),
              ),
              const Spacer(),
              Visibility(
                visible: selectedIndex == 1,
                child: const AddHolidayButton(),
              ),
            ],
          ),
          SizedBox(height: 20.h),
          Expanded(
            child: CustomTabBar(
              changeSelectedIndex: (int index) {
                setState(() {
                  selectedIndex = index;
                });
                return index;
              },
              tabBarItems: <String>[
                LocaleKeys.workingDaysTitle.tr(),
                LocaleKeys.holidays.tr(),
              ],
              tabViewItems: const <Widget>[
                WorkingDaysTabsWidget(),
                HolidayDaysTap(),
              ],
            ),
          ),
        ],
      ).withPadding(all: 20.w),
    );
  }
}
