import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/extensions/widgets_extensions.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../gen/locale_keys.g.dart';
import '../../../../models/schedule_list/working_days_response_model.dart';
import '../../cubits/manage_working_days_cubit.dart';
import 'index.dart';

class DayToggleWidget extends StatefulWidget {
  const DayToggleWidget({required this.item, super.key, required this.bloc});
  final ManageWorkingDaysCubit bloc;
  final WorkingDaysModel item;

  @override
  State<DayToggleWidget> createState() => _DayToggleWidgetState();
}

class _DayToggleWidgetState extends State<DayToggleWidget> {
  @override
  Widget build(BuildContext context) {
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
                widget.item.day,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Theme.of(context).colorScheme.scrim),
              ),
              const Spacer(),
              CupertinoSwitch(
                value: widget.item.modifyedOff,
                // Invert the value because `ismodifyedOff` represents the "modifyedOff" state
                onChanged: (v) {
                  setState(() {
                    widget.item.modifyedOff = !widget.item.modifyedOff;
                  });
                  widget.bloc.refrishBtn();
                },
              )
            ],
          ),
          SizedBox(height: 8.h),
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
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  // onTap: () => showFromToDialog(isShorFromFieldOnly: true),
                  onTap: () {
                    showTimePicker(
                      context: context,
                      initialTime: TimeOfDay.fromDateTime(widget.item.fromDate),
                    ).then((v) {
                      if (v != null) {
                        widget.item.fromDate = widget.item.fromDate.copyWith(hour: v.hour, minute: v.minute);
                        setState(() {});
                        widget.bloc.refrishBtn();
                      }
                    });
                  },
                  child: WorkingHoursView(
                    title: '${DateFormat('hh:mm a').format(widget.item.fromDate)}',
                  ),
                ),
                const Spacer(),
                Text(
                  LocaleKeys.to.tr(),
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        color: Theme.of(context).colorScheme.scrim,
                      ),
                ),
                const Spacer(),
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    showTimePicker(
                      context: context,
                      initialTime: TimeOfDay.fromDateTime(widget.item.toDate),
                    ).then((v) {
                      if (v != null) {
                        widget.item.toDate = widget.item.toDate.copyWith(hour: v.hour, minute: v.minute);
                        setState(() {});
                        widget.bloc.refrishBtn();
                      }
                    });
                  },
                  child: WorkingHoursView(
                    title: '${DateFormat('hh:mm a').format(widget.item.toDate)}',
                  ),
                ),
                // const Spacer(),
                // GestureDetector(
                //   onTap: () => context.read<ListWorkingDaysCubit>().removeDay(
                //         workingDaysData,
                //       ),
                //   behavior: HitTestBehavior.opaque,
                //   child: MyAssets.icons.trashIcon.svg(),
                // ),
                const Spacer(),
                // GestureDetector(
                //   onTap: () => showModalBottomSheet<void>(
                //     backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
                //     shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.only(
                //         topLeft: Radius.circular(24.r),
                //         topRight: Radius.circular(24.r),
                //       ),
                //     ),
                //     context: navigatorKey.currentContext!,
                //     builder: (_) => MultiBlocProvider(
                //       providers: <BlocProvider<dynamic>>[
                //         BlocProvider<ListWorkingDaysCubit>.value(
                //           value: BlocProvider.of<ListWorkingDaysCubit>(
                //             context,
                //           ),
                //         ),
                //         BlocProvider<UpdateWorkingDaysCubit>.value(
                //           value: BlocProvider.of<UpdateWorkingDaysCubit>(
                //             context,
                //           ),
                //         ),
                //       ],
                //       child: ApplyTimeToAllBottomSheet(
                //         workingDaysData: item,
                //       ),
                //     ),
                //   ),
                //   behavior: HitTestBehavior.opaque,
                //   child: MyAssets.icons.moreVertIcon.svg(),
                // ),
              ],
            ).wrapCenter(),
          ),
        ],
      ),
    );
  }
}
