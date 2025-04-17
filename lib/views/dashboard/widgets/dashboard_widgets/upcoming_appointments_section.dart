import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octopii_provier_app/core/common_widgets/app_static_button.dart';
import 'package:octopii_provier_app/core/common_widgets/error_widget.dart';
import 'package:octopii_provier_app/core/extensions/widgets_extensions.dart';
import 'package:octopii_provier_app/gen/locale_keys.g.dart';
import 'package:octopii_provier_app/models/bookings/booking_response_model.dart';
import 'package:octopii_provier_app/views/dashboard/cubits/upcoming_appointments_booking_cubit/upcoming_appointments_booking_cubit.dart';
import 'package:octopii_provier_app/views/dashboard/shimmers/booking_card_shimmer_widget.dart';
import 'package:octopii_provier_app/views/dashboard/widgets/dashboard_widgets/index.dart';

class UpcomingAppointmentsSection extends StatelessWidget {
  const UpcomingAppointmentsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          LocaleKeys.upcomingAppointments.tr(),
          style: Theme.of(context).textTheme.labelMedium?.copyWith(
                fontSize: 15.sp,
              ),
        ),
        SizedBox(
          height: 12.h,
        ),
        BlocBuilder<UpcomingAppointmentsBookingCubit, UpcomingAppointmentsBookingState>(
          builder: (
            BuildContext context,
            UpcomingAppointmentsBookingState state,
          ) {
            final List<BookingDetails> upComingdBookingResponseModel = state.upComingdBookingResponseModel ?? <BookingDetails>[];
            if (state.isInitial || state.isLoading) {
              return const BookingCardShimmerWidget();
            } else if (upComingdBookingResponseModel.isEmpty) {
              return Center(
                child: Text(
                  LocaleKeys.noBookingsAvailable.tr(),
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ).paddingTop(
                50.h,
              );
            } else if (state.isError) {
              return CustomErrorWidget(
                errorMsg: state.errorMsg,
              );
            }
            return Column(
              children: <Widget>[
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) => AppointmentCard(
                    bookingDetails: upComingdBookingResponseModel[index],
                  ),
                  separatorBuilder: (BuildContext context, __) => SizedBox(height: 8.h),
                  itemCount: upComingdBookingResponseModel.length,
                ),
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
                    visible: !context.read<UpcomingAppointmentsBookingCubit>().removeSellAllButton,
                    child: AppStaticButton(
                      width: 353.w,
                      height: 34.h,
                      onTap: () => context.read<UpcomingAppointmentsBookingCubit>().fetchMoreBooking(),
                      borderColor: Theme.of(context).colorScheme.primary,
                      buttonName: state.isLoadingMore! ? LocaleKeys.loading.tr() : LocaleKeys.showAll.tr(),
                    ),
                  ),
              ],
            );
          },
        ),
      ],
    );
  }
}
