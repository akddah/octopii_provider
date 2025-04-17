import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/extensions/widgets_extensions.dart';
import '../../../../core/helpers/app_helper_functions.dart';
import '../../../../core/navigation/app_router.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/utils/utils/app_logger.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../gen/locale_keys.g.dart';
import '../../../../models/schedule_list/working_days_response_model.dart';
import '../../bottom_sheets/apply_time_to_all_bottom_sheet.dart';
import '../../cubits/list_working_days_cubit/list_working_days_cubit.dart';
import '../../cubits/update_working_days_cubit/update_working_days_cubit.dart';
import 'index.dart';

class DayToggleWidget extends HookWidget {
  const DayToggleWidget({
    required this.workingDaysData,
    super.key,
  });

  final WorkingDay workingDaysData;

  @override
  Widget build(BuildContext context) {
    // Use a Hook to manage local state
    final ValueNotifier<bool> isOff = useState(workingDaysData.off);

    // Future<bool?> showFromToDialog({required bool isShorFromFieldOnly}) async {
    //   return showDialog<bool>(
    //     context: navigatorKey.currentContext!,
    //     builder: (_) {
    //       return BlocProvider<ListWorkingDaysCubit>.value(
    //         value: BlocProvider.of<ListWorkingDaysCubit>(context),
    //         child: AddWorkingHoursAlertDialog(
    //           workingDaysData: workingDaysData,
    //           isShorFromFieldOnly: isShorFromFieldOnly,
    //         ),
    //       );
    //     },
    //   );
    // }

    // ignore: avoid_positional_boolean_parameters
    void handleToggle(bool newValue) {
      // if (newValue && (workingDaysData.from == null || workingDaysData.to == null)) {
      //   await showFromToDialog().then(
      //     (bool? value) {
      //       if (value != null && value == true) {
      //         isOff.value = !newValue;
      //         AppLogger().info('The Value After Dialog Dismiss Is $value');
      //       }
      //     },
      //   );
      // }
      isOff.value = !newValue;
      AppLogger().info('The New Value Is ${isOff.value}');
      if (!isOff.value) {
        final WorkingDay updatedDay = workingDaysData.copyWith(
          off: isOff.value,
          from: 10,
          to: 12,
        );
        context.read<ListWorkingDaysCubit>().handleUpdate(updatedDay);
      } else {
        context.read<ListWorkingDaysCubit>().removeDay(workingDaysData);
      }
    }

    return Container(
      width: 353.w,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: const <BoxShadow>[
          BoxShadow(
            color: AppColors.shadowColor,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
          BoxShadow(
            color: AppColors.shadowColor2,
            blurRadius: 4,
          ),
        ],
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                workingDaysData.day,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Theme.of(context).colorScheme.scrim,
                    ),
              ),
              const Spacer(),
              ValueListenableBuilder<bool>(
                valueListenable: isOff,
                builder: (BuildContext context, bool value, Widget? child) {
                  return CupertinoSwitch(
                    value: !value,
                    // Invert the value because `isOff` represents the "off" state
                    onChanged: handleToggle,
                  );
                },
              ),
            ],
          ),
          SizedBox(height: 8.h),
          if (workingDaysData.to != null && workingDaysData.from != null)
            Container(
              width: 329.w,
              padding: EdgeInsets.symmetric(
                vertical: 4.h,
                horizontal: 12.w,
              ),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    AppColors.primaryWhite,
                    AppColors.neutral700,
                  ],
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: <Widget>[
                  Text(
                    LocaleKeys.from.tr(),
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          color: Theme.of(context).colorScheme.scrim,
                        ),
                  ),
                  const Spacer(),
                  if (workingDaysData.from != null)
                    GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      // onTap: () => showFromToDialog(isShorFromFieldOnly: true),
                      onTap: () => AppHelperFunctions()
                          .pickTime(
                        isShorFromFieldOnly: true,
                        workingDaysData: workingDaysData,
                      )
                          .then(
                        (WorkingDay? value) {
                          if (value != null) {
                            if (context.mounted) {
                              context
                                  .read<ListWorkingDaysCubit>()
                                  .handleUpdate(value);
                            }
                          }
                        },
                      ),
                      child: WorkingHoursView(
                        title:
                            '${AppHelperFunctions().formatTime(workingDaysData.from)}',
                      ),
                    )
                  else
                    const SizedBox.shrink(),
                  const Spacer(),
                  Text(
                    LocaleKeys.to.tr(),
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          color: Theme.of(context).colorScheme.scrim,
                        ),
                  ),
                  const Spacer(),
                  if (workingDaysData.to != null)
                    GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      // onTap: () => showFromToDialog(isShorFromFieldOnly: false),
                      onTap: () => AppHelperFunctions()
                          .pickTime(
                        isShorFromFieldOnly: false,
                        workingDaysData: workingDaysData,
                      )
                          .then(
                            (WorkingDay? value) {
                          if (value != null) {
                            if (context.mounted) {
                              context
                                  .read<ListWorkingDaysCubit>()
                                  .handleUpdate(value);
                            }
                          }
                        },
                      ),
                      child: WorkingHoursView(
                        title:
                            '${AppHelperFunctions().formatTime(workingDaysData.to)}',
                      ),
                    )
                  else
                    const SizedBox.shrink(),
                  // const Spacer(),
                  // GestureDetector(
                  //   onTap: () => context.read<ListWorkingDaysCubit>().removeDay(
                  //         workingDaysData,
                  //       ),
                  //   behavior: HitTestBehavior.opaque,
                  //   child: MyAssets.icons.trashIcon.svg(),
                  // ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () => showModalBottomSheet<void>(
                      backgroundColor:
                          Theme.of(context).colorScheme.secondaryContainer,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24.r),
                          topRight: Radius.circular(24.r),
                        ),
                      ),
                      context: navigatorKey.currentContext!,
                      builder: (_) => MultiBlocProvider(
                        providers: <BlocProvider<dynamic>>[
                          BlocProvider<ListWorkingDaysCubit>.value(
                            value: BlocProvider.of<ListWorkingDaysCubit>(
                              context,
                            ),
                          ),
                          BlocProvider<UpdateWorkingDaysCubit>.value(
                            value: BlocProvider.of<UpdateWorkingDaysCubit>(
                              context,
                            ),
                          ),
                        ],
                        child: ApplyTimeToAllBottomSheet(
                          workingDaysData: workingDaysData,
                        ),
                      ),
                    ),
                    behavior: HitTestBehavior.opaque,
                    child: MyAssets.icons.moreVertIcon.svg(),
                  ),
                ],
              ).wrapCenter(),
            )
          else
            const SizedBox.shrink(),
        ],
      ),
    );
  }
}
