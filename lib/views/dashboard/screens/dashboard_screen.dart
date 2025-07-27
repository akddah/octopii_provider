import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octopii_provier_app/core/common_widgets/app_static_button.dart';

import '../../../core/common_widgets/error_widget.dart';
import '../../../core/di/di.dart';
import '../../../core/utils/extensions.dart';
import '../../../gen/locale_keys.g.dart';
import '../../../models/bookings/booking_response_model.dart';
import '../../profile/cubits/get_user_profile_cubit/user_profile_cubit.dart';
import '../cubits/upcoming_appointments_booking_cubit/upcoming_appointments_booking_cubit.dart';
import '../shimmers/booking_card_shimmer_widget.dart';
import '../widgets/dashboard_widgets/index.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final cubit = sl<UpcomingAppointmentsBookingCubit>()..getBookingList();

  @override
  void initState() {
    sl<UserProfileCubit>().getUserProfileData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.onSurfaceVariant,
      body: RefreshIndicator(
        color: context.primaryColorLight,
        onRefresh: () async {
          await cubit.getBookingList();
          return Future.value();
        },
        child: CustomScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          controller: cubit.scrollController,
          slivers: <Widget>[
            const HeaderSection(),
            SliverToBoxAdapter(child: SizedBox(height: 24.h)),
            const StatisticsSection(),
            SliverToBoxAdapter(child: SizedBox(height: 24.h)),
            // const AvailabilityToggle(),
            // SizedBox(
            //   height: 24.h,
            // ),
            SliverToBoxAdapter(
              child: Text(
                LocaleKeys.upcomingAppointments.tr(),
                style: Theme.of(context).textTheme.labelMedium?.copyWith(fontSize: 15.sp),
              ).withPadding(horizontal: 20.w),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 12.h)),
            BlocBuilder<UpcomingAppointmentsBookingCubit, UpcomingAppointmentsBookingState>(
              bloc: cubit,
              builder: (context, state) {
                final List<BookingDetails> upComingdBookingResponseModel = state.upComingdBookingResponseModel ?? <BookingDetails>[];
                if (state.isInitial || state.isLoading) {
                  return SliverToBoxAdapter(child: const BookingCardShimmerWidget().withPadding(horizontal: 20.w));
                } else if (upComingdBookingResponseModel.isEmpty) {
                  return SliverToBoxAdapter(
                    child: Center(
                      child: Text(
                        LocaleKeys.noBookingsAvailable.tr(),
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                    ).withPadding(top: 50.h, horizontal: 20.w),
                  );
                } else if (state.isError) {
                  return SliverToBoxAdapter(child: CustomErrorWidget(errorMsg: state.errorMsg).withPadding(horizontal: 20.w));
                }
                return SliverPadding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  sliver: SliverList.separated(
                    itemBuilder: (context, index) => AppointmentCard(bookingDetails: upComingdBookingResponseModel[index]),
                    separatorBuilder: (context, i) => SizedBox(height: 8.h),
                    itemCount: upComingdBookingResponseModel.length,
                  ),
                );
              },
            ),
            BlocBuilder<UpcomingAppointmentsBookingCubit, UpcomingAppointmentsBookingState>(
              bloc: cubit,
              builder: (context, state) {
                return SliverToBoxAdapter(
                  child: Column(
                    children: <Widget>[
                      if (state.isLoadingMore!)
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.h),
                          child: const CircularProgressIndicator(),
                        ),
                      SizedBox(
                        height: 8.h,
                      ),
                      if (!state.isLoadingMore!)
                        Visibility(
                          visible: !cubit.removeSellAllButton,
                          child: AppStaticButton(
                            width: 353.w,
                            height: 34.h,
                            onTap: () => state.upComingdBookingResponseModel?.isNotEmpty == true ? cubit.fetchMoreBooking() : cubit.getBookingList(),
                            borderColor: Theme.of(context).colorScheme.primary,
                            buttonName: state.isLoadingMore! ? LocaleKeys.loading.tr() : LocaleKeys.showAll.tr(),
                          ),
                        ),
                    ],
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
