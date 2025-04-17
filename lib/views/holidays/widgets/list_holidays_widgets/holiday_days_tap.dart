import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octopii_provier_app/gen/locale_keys.g.dart';
import 'package:octopii_provier_app/models/list_holidays/list_holidays_response_model.dart';
import 'package:octopii_provier_app/views/holidays/cubits/list_holidays_cubit/list_holidays_cubit.dart';
import 'package:octopii_provier_app/views/holidays/widgets/list_holidays_widgets/index.dart';
import 'package:octopii_provier_app/views/manage_working_days/shimmer/working_days_shimmer_view.dart';

class HolidayDaysTap extends StatefulWidget {
  const HolidayDaysTap({super.key});

  @override
  State<HolidayDaysTap> createState() => _HolidayDaysTapState();
}

class _HolidayDaysTapState extends State<HolidayDaysTap> {
  late ListHolidaysCubit _listHolidaysCubit;

  @override
  void initState() {
    super.initState();
    _listHolidaysCubit = context.read<ListHolidaysCubit>();
    _listHolidaysCubit.getHolidaysList();
  }

  @override
  void dispose() {
    _listHolidaysCubit.holidaysList = <HolidayResponse>[];
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ListHolidaysCubit, ListHolidaysState>(
      builder: (BuildContext context, ListHolidaysState state) {
        final List<HolidayResponse> holidaysData=state.holidayData??<HolidayResponse>[];
        if (state.isLoading || state.isInitial) {
          return const WorkingDaysShimmerView();
        } else if (holidaysData.isEmpty ) {
          return Center(
            child: Text(
              LocaleKeys.noHolidaysAvailable.tr(),
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          );
        }
        return DeleteHolidayListenerWidget(
          child: Column(
            children: <Widget>[
              Expanded(
                child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return HolidayView(
                      holidayResponse: holidaysData[index],
                    );
                  },
                  separatorBuilder: (BuildContext context, __) => SizedBox(
                    height: 12.h, // Space between items
                  ),
                  itemCount: holidaysData.length,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
            ],
          ),
        );
      },
    );
  }
}
