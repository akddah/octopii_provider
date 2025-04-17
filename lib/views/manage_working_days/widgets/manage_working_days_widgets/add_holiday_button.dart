import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octopii_provier_app/core/common_widgets/toast_manager.dart';
import 'package:octopii_provier_app/core/extensions/navigation.dart';
import 'package:octopii_provier_app/core/navigation/route_names.dart';
import 'package:octopii_provier_app/gen/assets.gen.dart';
import 'package:octopii_provier_app/gen/locale_keys.g.dart';
import 'package:octopii_provier_app/models/list_holidays/list_holidays_response_model.dart';
import 'package:octopii_provier_app/views/holidays/cubits/list_holidays_cubit/list_holidays_cubit.dart';

class AddHolidayButton extends StatelessWidget {
  const AddHolidayButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ListHolidaysCubit, ListHolidaysState>(
      builder: (BuildContext context, ListHolidaysState state) {
        final List<HolidayResponse> holidayData = state.holidayData ?? <HolidayResponse>[];

        return GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: holidayData.length >= 2
              ? () => ToastManager().warning(
            context: context,
            message: LocaleKeys.maxHolidaysReached.tr(),
            description: LocaleKeys.deleteHolidayToAddNew.tr(),
          )
              : () => context.push(RouteNames.addHolidays),
          child: Container(
            width: 88.w,
            height: 34.h,
            padding: EdgeInsets.only(left: 8.w, right: 16.w),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onTertiaryFixedVariant,
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: Row(
              children: <Widget>[
                MyAssets.icons.addCircleIcon.svg(),
                const Spacer(),
                Text(
                  LocaleKeys.add.tr(),
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
