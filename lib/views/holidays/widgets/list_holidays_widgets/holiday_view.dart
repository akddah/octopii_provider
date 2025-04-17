import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:octopii_provier_app/core/theme/app_colors.dart';
import 'package:octopii_provier_app/gen/locale_keys.g.dart';
import 'package:octopii_provier_app/models/list_holidays/list_holidays_response_model.dart';
import 'package:octopii_provier_app/views/holidays/cubits/delete_holiday_cubit/delete_holiday_cubit.dart';

class HolidayView extends StatefulWidget {
  const HolidayView({
    required this.holidayResponse,
    super.key,
  });

  final HolidayResponse holidayResponse;

  @override
  State<HolidayView> createState() => _HolidayViewState();
}

class _HolidayViewState extends State<HolidayView> {
  bool _isLoading = false;
  StreamSubscription<DeleteHolidayState>? _deleteHolidaySubscription;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _deleteHolidaySubscription ??=
        context.read<DeleteHolidayCubit>().stream.listen(
              (DeleteHolidayState state) {
            if (state.isError) {
              if (mounted) {
                setState(() {
                  _isLoading = false;
                });
              }
            } else if (state.isLoaded) {
              if (mounted) {
                setState(() {
                  _isLoading = false;
                });
              }
            }
          },
        );
  }

  @override
  void dispose() {
    _deleteHolidaySubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 353.w,
      height: 53.h,
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                widget.holidayResponse.title,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Theme.of(context).colorScheme.scrim,
                ),
              ),
              const Spacer(),
              if (_isLoading)
                Center(
                  child: SpinKitRing(
                    color: AppColors.brandPrimary,
                    size: 25.sp,
                    lineWidth: 2.w,
                  ),
                )
              else
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _isLoading = true;
                    });
                    context.read<DeleteHolidayCubit>().deleteHoliday(
                      holidayId: widget.holidayResponse.id,
                    );
                  },
                  behavior: HitTestBehavior.opaque,
                  child: Text(
                    LocaleKeys.delete.tr(),
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Theme.of(context).colorScheme.onError,
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
