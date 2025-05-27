import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octopii_provier_app/core/di/di.dart';
import 'package:octopii_provier_app/core/utils/extensions.dart';

import '../../../../core/common_widgets/error_widget.dart';
import '../../../../gen/locale_keys.g.dart';
import '../../../dashboard/shimmers/booking_card_shimmer_widget.dart';
import '../../cubits/booking_list_cubit/booking_list_cubit.dart';
import 'index.dart';

class BookingsListWidget extends StatefulWidget {
  final int status;
  const BookingsListWidget({super.key, required this.status});

  @override
  State<BookingsListWidget> createState() => _BookingsListWidgetState();
}

class _BookingsListWidgetState extends State<BookingsListWidget> {
  late final cubit = sl<BookingListCubit>()..getBookings(widget.status);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookingListCubit, BookingListState>(
      bloc: cubit,
      buildWhen: (previous, current) => previous.getBookingsState != current.getBookingsState,
      builder: (context, state) {
        if (cubit.bookings.isNotEmpty) {
          return RefreshIndicator(
            color: context.primaryColorLight,
            onRefresh: () async {
              await cubit.getBookings(widget.status);
              return Future.value();
            },
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              physics: const AlwaysScrollableScrollPhysics(),
              controller: cubit.scrollController,
              itemBuilder: (BuildContext context, int index) {
                return BookingCardView(bookingDetails: cubit.bookings[index]);
              },
              separatorBuilder: (BuildContext context, __) => SizedBox(
                height: 12.h,
              ),
              itemCount: cubit.bookings.length,
            ),
          );
        } else if (state.getBookingsState.isSuccess) {
          return Center(
            child: Text(
              LocaleKeys.noBookingsAvailable.tr(),
              style: Theme.of(context).textTheme.headlineMedium,
            ).withPadding(horizontal: 20.w),
          );
        } else if (state.getBookingsState.isError) {
          return CustomErrorWidget(
            errorMsg: state.msg,
          ).withPadding(horizontal: 20.w);
        } else {
          return const BookingCardShimmerWidget().withPadding(horizontal: 20.w);
        }
      },
    );
  }
}
