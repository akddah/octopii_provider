import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octopii_provier_app/core/extensions/widgets_extensions.dart';

class CustomToolTipWidget extends StatelessWidget {
  const CustomToolTipWidget({
    required this.message,
    super.key,
    this.icon,
    this.height,
    this.width,
    this.containerColor,
  });

  final String message;
  final Icon? icon;
  final double? height;
  final double? width;
  final Color? containerColor;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      triggerMode: TooltipTriggerMode.tap,
      message: message,
      showDuration: const Duration(seconds: 3),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondaryContainer,
        borderRadius: BorderRadius.all(
          Radius.circular(
            8.r,
          ),
        ),
      ),
      textStyle: Theme.of(context).textTheme.displaySmall?.copyWith(
            color: Theme.of(context).colorScheme.scrim,
            fontSize: 14.sp,
          ),
      preferBelow: true,
      verticalOffset: 20,
      child: icon ??
          Icon(
            Icons.info_outline_rounded,
            color: Theme.of(context).colorScheme.onPrimaryFixedVariant,
            size: 20.w,
          ).wrapCenter(),
    );
  }
}
