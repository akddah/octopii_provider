import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octopii_provier_app/core/common_widgets/error_widget.dart';
import 'package:octopii_provier_app/core/extensions/widgets_extensions.dart';
import 'package:octopii_provier_app/gen/locale_keys.g.dart';
import 'package:octopii_provier_app/models/notifications/notification_response.dart';
import 'package:octopii_provier_app/views/notifications/cubits/get_notifications_cubit/get_notifications_cubit.dart';
import 'package:octopii_provier_app/views/notifications/shimmers/notification_shimmer_view.dart';
import 'package:octopii_provier_app/views/notifications/widgets/notifications_widgets/index.dart';

class NotificationsBody extends StatefulWidget {
  const NotificationsBody({super.key});

  @override
  State<NotificationsBody> createState() => _NotificationsBodyState();
}

class _NotificationsBodyState extends State<NotificationsBody> {
  @override
  void initState() {
    context.read<GetNotificationsCubit>().getNotificationList();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          LocaleKeys.notifications.tr(),
          style: Theme.of(context).textTheme.labelMedium?.copyWith(
                fontSize: 15.sp,
              ),
        ),
        SizedBox(
          height: 24.h,
        ),
        Expanded(
          child: BlocBuilder<GetNotificationsCubit, GetNotificationsState>(
            builder: (BuildContext context, GetNotificationsState state) {
              final List<NotificationModel> notifications = state.notifications ?? <NotificationModel>[];
              if (state.isLoading || state.isInitial) {
                return const NotificationShimmerView();
              } else if (state.isError) {
                return CustomErrorWidget(
                  errorMsg: state.errorMsg,
                );
              } else if (notifications.isEmpty) {
                return Center(
                  child: Text(
                    LocaleKeys.noNotifications.tr(),
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                );
              }

              return ListView.separated(
                controller: context.read<GetNotificationsCubit>().scrollController,
                itemBuilder: (BuildContext context, int index) => NotificationView(
                  notificationItem: notifications[index],
                ),
                separatorBuilder: (BuildContext context, __) => SizedBox(
                  height: 12.h,
                ),
                itemCount: notifications.length,
              );
            },
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        BlocBuilder<GetNotificationsCubit, GetNotificationsState>(
          builder: (BuildContext context, GetNotificationsState state) {
            if (state.isLoadingMore!) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return Container();
            }
          },
        ),
      ],
    ).paddingAll(20);
  }
}
