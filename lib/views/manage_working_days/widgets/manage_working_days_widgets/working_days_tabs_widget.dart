import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/common_widgets/custom_loading_button.dart';
import '../../../../core/di/di.dart';
import '../../../../core/helpers/enums.dart';
import '../../../../gen/locale_keys.g.dart';
import '../../../../models/schedule_list/update_working_days_request_model.dart';
import '../../cubits/list_working_days_cubit/list_working_days_cubit.dart';
import '../../cubits/manage_working_days_cubit.dart';
import '../../cubits/manage_working_days_state.dart';
import '../../cubits/update_working_days_cubit/update_working_days_cubit.dart';
import '../../shimmer/working_days_shimmer_view.dart';
import 'index.dart';

class WorkingDaysTabsWidget extends StatefulWidget {
  const WorkingDaysTabsWidget({super.key});

  @override
  State<WorkingDaysTabsWidget> createState() => _WorkingDaysTabsWidgetState();
}

class _WorkingDaysTabsWidgetState extends State<WorkingDaysTabsWidget> {
  final bloc = sl<ManageWorkingDaysCubit>()..getWorkingDaysList();
  @override
  Widget build(BuildContext context) {
    return ManageWorkingDaysListenerWidget(
      child: BlocBuilder<ManageWorkingDaysCubit, ManageWorkingDaysCubitState>(
        bloc: bloc,
        builder: (context, state) {
          if (state.scheduleListState.isLoading) {
            return const WorkingDaysShimmerView();
          }

          return Column(
            children: <Widget>[
              Expanded(
                child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return DayToggleWidget(
                      workingDaysData: bloc.workingDaysData!.response[index],
                    );
                  },
                  separatorBuilder: (BuildContext context, __) => SizedBox(
                    height: 12.h, // Space between items
                  ),
                  itemCount: bloc.workingDaysData?.response.length ?? 0,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomLoadingButton<UpdateWorkingDaysCubit, UpdateWorkingDaysState>(
                isClickable: context.read<ListWorkingDaysCubit>().hasChanges(),
                cubit: context.read<UpdateWorkingDaysCubit>(),
                loadingState: const UpdateWorkingDaysState(
                  status: GenericStateStatus.loading,
                ),
                onTap: () {
                  final List<ScheduleItem> scheduleList = context.read<ListWorkingDaysCubit>().validateAndGetEffectiveWorkingDays();
                  if (scheduleList.isNotEmpty) {
                    context.read<UpdateWorkingDaysCubit>().editWorkingDaysList(
                          requestModel: UpdateWorkingDaysRequestModel(
                            schedule: scheduleList,
                          ),
                        );
                  }
                },
                text: LocaleKeys.save.tr(),
              ),
            ],
          );
        },
      ),
    );
  }
}
