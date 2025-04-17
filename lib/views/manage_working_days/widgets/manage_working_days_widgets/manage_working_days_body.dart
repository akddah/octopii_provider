import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/common_widgets/custom_tabbar.dart';
import '../../../../core/extensions/widgets_extensions.dart';
import '../../../../gen/locale_keys.g.dart';
import '../../../holidays/widgets/list_holidays_widgets/holiday_days_tap.dart';
import 'index.dart';

class ManageWorkingDaysBody extends HookWidget {
  const ManageWorkingDaysBody({super.key});

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<int> selectedIndex = useState(0);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            Text(
              LocaleKeys.manageWorkingHours.tr(),
              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    fontSize: 15.sp,
                  ),
            ),
            const Spacer(),
            Visibility(
              visible: selectedIndex.value == 1,
              child: const AddHolidayButton(),
            ),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        Expanded(
          child: CustomTabBar(
            changeSelectedIndex: (int index) => selectedIndex.value = index,
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
    ).paddingAll(20);
  }
}
