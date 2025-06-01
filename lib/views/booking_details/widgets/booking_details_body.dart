import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/common_widgets/error_widget.dart';
import '../../../core/extensions/booking_status_extension.dart';
import '../../../core/extensions/widgets_extensions.dart';
import '../../../core/utils/extensions.dart';
import '../../../core/utils/utils/app_logger.dart';
import '../cubits/booking_details_cubit/booking_details_cubit.dart';
import '../shimmers/booking_details_shimmer_widget.dart';
import 'index.dart';

class BookingDetailsBody extends StatelessWidget {
  const BookingDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookingDetailsCubit, BookingDetailsState>(
      builder: (BuildContext context, BookingDetailsState state) {
        if (state.isLoading || state.isInitial) {
          return const BookingDetailsShimmerWidget();
        } else if (state.isError) {
          return CustomErrorWidget(errorMsg: state.errorMsg);
        } else {
          AppLogger().info(
            'The Sending New Booking status Is ${state.bookingDetailsResponseModel?.response?.bookingStatus.value}',
          );
          return BookingListenerWidget(
            bookingId: state.bookingDetailsResponseModel!.response!.id,
            child: RefreshIndicator(
              color: context.primaryColorLight,
              onRefresh: () async {
                await context.read<BookingDetailsCubit>().getBookingDetails(bookingId: state.bookingDetailsResponseModel?.response?.id ?? 0);
                return Future.value();
              },
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  CustomerInfoSection(
                    bookingResponse: state.bookingDetailsResponseModel?.response,
                  ).paddingHorizontal(20.w),
                  SizedBox(
                    height: 24.h,
                  ),
                  ServiceDetailsSection(
                    bookingResponse: state.bookingDetailsResponseModel?.response,
                  ).paddingHorizontal(20.w),
                  SizedBox(
                    height: 24.h,
                  ),
                  BookingStatusWidget(
                    bookingResponse: state.bookingDetailsResponseModel?.response,
                  ).paddingHorizontal(20.w),
                  SizedBox(
                    height: 24.h,
                  ),
                ],
              ).paddingOnly(top: 20.h),
            ),
          );
        }
      },
    );
  }
}
