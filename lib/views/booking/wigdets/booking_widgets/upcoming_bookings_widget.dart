import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octopii_provier_app/core/di/di.dart';
import 'package:octopii_provier_app/core/utils/extensions.dart';

import '../../../../core/common_widgets/error_widget.dart';
import '../../../../gen/locale_keys.g.dart';
import '../../../../models/bookings/booking_response_model.dart';
import '../../../dashboard/shimmers/booking_card_shimmer_widget.dart';
import '../../cubits/booking_list_cubit/booking_list_cubit.dart';
import 'index.dart';

class UpcomingBookingsWidget extends StatefulWidget {
  const UpcomingBookingsWidget({super.key});

  @override
  State<UpcomingBookingsWidget> createState() => _UpcomingBookingsWidgetState();
}

class _UpcomingBookingsWidgetState extends State<UpcomingBookingsWidget> {
  final cubit = sl<BookingListCubit>()..getUpcomingBookingList();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookingListCubit, BookingListState>(
      bloc: cubit,
      builder: (context, state) {
        if (state.isInitial || state.isLoading) {
          return const BookingCardShimmerWidget();
        }
        final List<BookingDetails> upComingdBookingResponseModel = state.upComingdBookingResponseModel ?? <BookingDetails>[];
        if (upComingdBookingResponseModel.isEmpty) {
          return Center(
            child: Text(
              LocaleKeys.noBookingsAvailable.tr(),
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          );
        } else if (state.isError) {
          return CustomErrorWidget(
            errorMsg: state.errorMsg,
          );
        }
        return Column(
          children: <Widget>[
            Expanded(
              child: RefreshIndicator(
                color: context.primaryColorLight,
                onRefresh: () async {
                  await cubit.getUpcomingBookingList();
                  return Future.value();
                },
                child: ListView.separated(
                  padding: EdgeInsets.zero,
                  physics: const AlwaysScrollableScrollPhysics(),
                  controller: cubit.upComingScrollController,
                  itemBuilder: (BuildContext context, int index) {
                    return BookingCardView(bookingDetails: upComingdBookingResponseModel[index]);
                  },
                  separatorBuilder: (BuildContext context, __) => SizedBox(
                    height: 12.h,
                  ),
                  itemCount: upComingdBookingResponseModel.length,
                ),
              ),
            ),
            if (state.isLoadingMoreUpComingdBooking!)
              const Center(
                child: CircularProgressIndicator(),
              ),
          ],
        );
      },
    );
  }
}
