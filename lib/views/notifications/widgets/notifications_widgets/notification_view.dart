import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octopii_provier_app/core/extensions/widgets_extensions.dart';
import 'package:octopii_provier_app/core/theme/app_colors.dart';
import 'package:octopii_provier_app/gen/assets.gen.dart';
import 'package:octopii_provier_app/models/notifications/notification_response.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({
    required this.notificationItem,
    super.key,
  });

  final NotificationItem notificationItem;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: notificationItem.isRead ? 1 : .50,
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
                  notificationItem.title,
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
                    notificationItem.body,
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
    );
  }
}
