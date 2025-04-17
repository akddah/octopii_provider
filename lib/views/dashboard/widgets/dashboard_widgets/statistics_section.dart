import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octopii_provier_app/core/di/di.dart';
import 'package:octopii_provier_app/core/utils/extensions.dart';
import 'package:octopii_provier_app/gen/locale_keys.g.dart';
import 'package:octopii_provier_app/views/dashboard/shimmers/card_shimmer_widget.dart';
import 'package:octopii_provier_app/views/profile/cubits/get_user_profile_cubit/user_profile_cubit.dart';

class StatisticsSection extends StatefulWidget {
  const StatisticsSection({super.key});

  @override
  State<StatisticsSection> createState() => _StatisticsSectionState();
}

class _StatisticsSectionState extends State<StatisticsSection> {
  final cubit = sl<UserProfileCubit>();
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: context.onSurfaceVariant,
      primary: false,
      pinned: true,
      titleSpacing: 0,
      title: BlocBuilder<UserProfileCubit, UserProfileState>(
        bloc: cubit,
        builder: (context, state) {
          if ((state.isLoading || state.isInitial) && state.userProfileData == null) {
            return Row(
              children: <Widget>[
                const Expanded(child: CardShimmerWidget()),
                SizedBox(
                  width: 12.w,
                ),
                const Expanded(child: CardShimmerWidget()),
              ],
            );
          } else {
            return Row(
              children: <Widget>[
                Expanded(
                  child: StatisticsView(
                    statisticsTitle: LocaleKeys.totalEarnings.tr(),
                    statisticsNumber: '${state.userProfileData?.response.earnings.toStringAsFixed(2) ?? 0}',
                  ),
                ),
                SizedBox(
                  width: 12.w,
                ),
                Expanded(
                  child: StatisticsView(
                    statisticsTitle: LocaleKeys.totalBookings.tr(),
                    statisticsNumber: '${state.userProfileData?.response.bookings ?? 0}',
                  ),
                ),
              ],
            );
          }
        },
      ).withPadding(horizontal: 20.w),
    );
  }
}

class StatisticsView extends StatelessWidget {
  const StatisticsView({
    required this.statisticsTitle,
    required this.statisticsNumber,
    super.key,
  });

  final String statisticsTitle;
  final String statisticsNumber;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170.50.w,
      padding: EdgeInsets.symmetric(
        horizontal: 12.w,
        vertical: 8.h,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          16.r,
        ),
        color: Theme.of(context).colorScheme.secondaryContainer,
      ),
      child: Column(
        children: <Widget>[
          Text(
            statisticsTitle,
            style: Theme.of(context).textTheme.labelSmall,
          ),
          Text(
            statisticsNumber,
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ],
      ),
    );
  }
}
