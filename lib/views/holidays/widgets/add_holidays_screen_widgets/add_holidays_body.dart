import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octopii_provier_app/core/common_widgets/custom_loading_button.dart';
import 'package:octopii_provier_app/core/common_widgets/custom_text_form_field.dart';
import 'package:octopii_provier_app/core/const/const_strings.dart';
import 'package:octopii_provier_app/core/const/text_fields_names.dart';
import 'package:octopii_provier_app/core/extensions/widgets_extensions.dart';
import 'package:octopii_provier_app/core/helpers/app_helper_functions.dart';
import 'package:octopii_provier_app/core/helpers/enums.dart';
import 'package:octopii_provier_app/core/theme/app_colors.dart';
import 'package:octopii_provier_app/gen/assets.gen.dart';
import 'package:octopii_provier_app/gen/locale_keys.g.dart';
import 'package:octopii_provier_app/models/list_holidays/add_holiday_off.dart';
import 'package:octopii_provier_app/views/holidays/cubits/add_holiday_cubit/add_holiday_cubit.dart';
import 'package:octopii_provier_app/views/holidays/widgets/add_holidays_screen_widgets/index.dart';

class AddHolidaysBody extends StatefulHookWidget {
  const AddHolidaysBody({super.key});

  @override
  State<AddHolidaysBody> createState() => _AddHolidaysBodyState();
}

class _AddHolidaysBodyState extends State<AddHolidaysBody> {
  final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    final TextEditingController holidayNameController =
        useTextEditingController();
    final TextEditingController holidayDateController =
        useTextEditingController();
    final ValueNotifier<DateTime?> startDate = useState(null);
    final ValueNotifier<DateTime?> endDate = useState(null);
    final ValueNotifier<bool> isClickable = useState(false);
    void updateIsClickable() {
      isClickable.value = holidayNameController.text.trim().isNotEmpty &&
          holidayDateController.text.trim().isNotEmpty;
    }

    useEffect(
      () {
        holidayNameController.addListener(updateIsClickable);
        holidayDateController.addListener(updateIsClickable);
        return () {
          holidayNameController.removeListener(updateIsClickable);
          holidayDateController.removeListener(updateIsClickable);
        };
      },
      <Object?>[holidayNameController, holidayDateController],
    );
    return FormBuilder(
      key: formKey,
      child: AddHolidayListenerWidget(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: <Widget>[
            Text(
              LocaleKeys.manageWorkingHours.tr(),
              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    fontSize: 15.sp,
                  ),
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomTextFormField(
              autovalidateMode: AutovalidateMode.disabled,
              textFieldName: TextFieldsNames.holidayNameField,
              textEditingController: holidayNameController,
              labelText: LocaleKeys.holidayName.tr(),
              labelStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Theme.of(context).colorScheme.scrim,
                  ),
              labelPadding: 5.w,
              contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return LocaleKeys.validationHolidayNameEmpty.tr();
                } else if (value.length > 20) {
                  return LocaleKeys.validationHolidayNameTooLong.tr();
                }

                return null;
              },
            ),
            SizedBox(
              height: 20.h,
            ),
            Column(
              children: <Widget>[
                Align(
                  alignment:
                      context.locale.languageCode == AppStrings.englishLang
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
                SizedBox(height: 8.h),
                GestureDetector(
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

                  child: Container(
                    height: 44.h,
                    width: 353.w,
                    decoration: ShapeDecoration(
                      color: AppColors.primaryWhite,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Theme.of(context).colorScheme.shadow,
                        ),
                        borderRadius: BorderRadius.circular(16.0.r),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        MyAssets.icons.calendarMonthIcon.svg().paddingAll(
                              10,
                            ),
                        SizedBox(width: 8.w),
                        Text(
                          holidayDateController.text,
                          style:
                              Theme.of(context).textTheme.displaySmall?.copyWith(
                                    color: Theme.of(context).colorScheme.scrim,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomLoadingButton<AddHolidayCubit, AddHolidayState>(
              loadingState:
                  const AddHolidayState(status: GenericStateStatus.loading),
              cubit: context.read<AddHolidayCubit>(),
              text: LocaleKeys.add.tr(),
              isClickable: isClickable.value,
              onTap: () {
                AppHelperFunctions().hideKeyboard();
                context.read<AddHolidayCubit>().addNewHoliday(
                      requestModel: AddHolidayOff(
                        title: holidayNameController.text,
                        from: AppHelperFunctions().formatHolidayDate(
                          startDate.value!,
                        ),
                        to: AppHelperFunctions()
                            .formatHolidayDate(endDate.value!),
                      ),
                    );
              },
            ),
          ],
        ),
      ),
    );
  }
}
// CustomTextFormField(
//   readOnly: true,
//   textFieldName: TextFieldsNames.holidayDateField,
//   textEditingController: holidayDateController,
//   labelText: LocaleKeys.selectDay.tr(),
//   labelStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
//         color: Theme.of(context).colorScheme.scrim,
//       ),
//   labelPadding: 5.w,
//   prefixIcon: MyAssets.icons.calendarMonthIcon.svg().paddingAll(
//         10,
//       ),
//   contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
//   validator: (_) {
//     if (startDate.value == null || endDate.value == null) {
//       return LocaleKeys.validationDateRangeEmpty.tr();
//     }
//     return null;
//   },
// ),
