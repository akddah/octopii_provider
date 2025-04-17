import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:octopii_provier_app/core/extensions/navigation.dart';
import 'package:octopii_provier_app/core/extensions/widgets_extensions.dart';
import 'package:octopii_provier_app/gen/assets.gen.dart';

class ApplicationAppBarBackButton extends StatelessWidget implements PreferredSizeWidget {
  const ApplicationAppBarBackButton({
    super.key,
    this.containerBackgroundColor,
    this.backgroundColor,
    this.height,
    this.hasShareButton = false,
    this.onShareCLicked,
  });

  final Color? containerBackgroundColor;
  final Color? backgroundColor;
  final double? height;
  final bool? hasShareButton;
  final VoidCallback? onShareCLicked;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor ?? Theme.of(context).colorScheme.onSurfaceVariant,
      foregroundColor: backgroundColor ?? Theme.of(context).colorScheme.onSurfaceVariant,
      surfaceTintColor: backgroundColor ?? Theme.of(context).colorScheme.onSurfaceVariant,
      leading: Visibility(
        visible: context.canPop(),
        child: Container(
          width: 44.w,
          height: 44.h,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: containerBackgroundColor ?? Theme.of(context).colorScheme.secondaryContainer,
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: BackButton(
            color: Theme.of(context).colorScheme.inverseSurface,
          ).wrapCenter(),
        ),
      ),
      actions: <Widget>[
        Visibility(
          visible: hasShareButton!,
          child: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: onShareCLicked,
            child: Container(
              alignment: Alignment.center,
              width: 44.w,
              height: 44.h,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: containerBackgroundColor ?? Theme.of(context).colorScheme.secondaryContainer,
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: SvgPicture.asset(
                MyAssets.icons.iosShareIcon.path,
                colorFilter: ColorFilter.mode(
                  Theme.of(context).colorScheme.inverseSurface,
                  BlendMode.srcIn,
                ),
              ).wrapCenter(),
            ),
          ),
        ),
      ],
    ).paddingHorizontal(20.w);
  }

  @override
  Size get preferredSize => Size.fromHeight(
        height ?? 60.h,
      );
}
