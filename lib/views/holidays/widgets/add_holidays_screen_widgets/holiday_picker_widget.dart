import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octopii_provier_app/core/const/const_strings.dart';
import 'package:octopii_provier_app/core/extensions/widgets_extensions.dart';
import 'package:octopii_provier_app/core/helpers/app_helper_functions.dart';
import 'package:octopii_provier_app/core/theme/app_colors.dart';
import 'package:octopii_provier_app/gen/locale_keys.g.dart';

class HolidayPickerWidget extends HookWidget {
  const HolidayPickerWidget({
    required this.isClickable,
    super.key,
  });

  final bool isClickable;

  @override
  Widget build(BuildContext context) {
    final TextEditingController holidayDateController =
        useTextEditingController();
    final ValueNotifier<DateTime?> startDate = useState(null);
    final ValueNotifier<DateTime?> endDate = useState(null);

    return GestureDetector(
      onTap: () async {
        final DateTimeRange? pickedDate = await showDateRangePicker(
          saveText: LocaleKeys.save.tr(),
          initialEntryMode: DatePickerEntryMode.calendarOnly,
          context: context,
          firstDate: DateTime.now(),
          lastDate: DateTime(2026),
          barrierColor: AppColors.transparent,
          builder: (BuildContext context, Widget? child) => Theme(
            data: ThemeData().copyWith(
              appBarTheme: const AppBarTheme().copyWith(
                backgroundColor: Colors.red,
              ),
            ),
            child: child!,
          ),
        );
        if (pickedDate != null) {
          startDate.value = pickedDate.start;
          endDate.value = pickedDate.end;
          holidayDateController.text =
              '${AppHelperFunctions().formatHolidayDate(startDate.value!)} - ${AppHelperFunctions().formatHolidayDate(endDate.value!)}';
        }
      },
      behavior: HitTestBehavior.opaque,
      child: Column(
        children: <Widget>[
          Align(
            alignment: context.locale.languageCode == AppStrings.englishLang
                ? Alignment.topLeft
                : Alignment.topRight,
            child: Row(
              children: <Widget>[
                Text(
                  LocaleKeys.selectDay.tr(),
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Theme.of(context).colorScheme.scrim,
                      ),
                ).paddingHorizontal(5.w),
              ],
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          SizedBox(
            height: 44.h,
            width: 353.w,
            child: InputDecorator(
              decoration: InputDecoration(
                fillColor: AppColors.primaryWhite,
                filled: true,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.0.r),
                  borderSide: BorderSide(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.0.r),
                  borderSide: BorderSide(
                    color: Theme.of(context).colorScheme.shadow,
                  ),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.0.r),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    16.0.r,
                  ),
                  borderSide: const BorderSide(
                    color: AppColors.red500Base,
                  ),
                ),
                labelText: '',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
