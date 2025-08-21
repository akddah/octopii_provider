import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/extensions/navigation.dart';
import '../../../../core/extensions/widgets_extensions.dart';
import '../../../../core/navigation/route_names.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../models/notifications/notification_response.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({
    required this.notificationItem,
    super.key,
  });

  final NotificationModel notificationItem;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: notificationItem.readAt == null ? 1 : .50,
      child: GestureDetector(
        onTap: () {
          if (notificationItem.data.payload.type == 'booking') {
            context.push(RouteNames.bookingDetails, arguments: {
              'bookId': notificationItem.data.payload.id,
              'customerName': '',
            });
          }
        },
        child: Container(
          width: 353.w,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondaryContainer,
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
          child: Row(
            children: <Widget>[
              Container(
                width: 32.w,
                height: 32.h,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.outlineVariant,
                  shape: BoxShape.circle,
                ),
                child: MyAssets.icons.notificationsIcon
                    .svg(
                      width: 16.w,
                      height: 16.h,
                    )
                    .paddingAll(7),
              ),
              SizedBox(
                width: 12.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '${notificationItem.data.payload.type} #${notificationItem.data.payload.id}',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          color: Theme.of(context).colorScheme.scrim,
                        ),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  SizedBox(
                    width: 280.w,
                    child: Text(
                      notificationItem.data.message,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                            color: Theme.of(context).colorScheme.scrim,
                          ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
