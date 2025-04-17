import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octopii_provier_app/core/extensions/widgets_extensions.dart';
import 'package:octopii_provier_app/core/theme/app_colors.dart';

class AppStaticButton extends StatelessWidget {
  const AppStaticButton({
    required this.onTap,
    this.buttonName,
    super.key,
    this.height,
    this.width,
    this.buttonColor,
    this.borderRadius,
    this.textColor,
    this.textStyle,
    this.child,
    this.borderColor,
  });

  final String? buttonName;
  final double? height;
  final double? width;
  final VoidCallback? onTap;
  final Color? buttonColor;
  final double? borderRadius;
  final Color? textColor;
  final TextStyle? textStyle;
  final Widget? child;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        maximumSize: Size(width ?? 345.w, height ?? 44.h),
        minimumSize: Size(width ?? 345.w, height ?? 44.h),
        backgroundColor: buttonColor ?? Theme.of(context).colorScheme.primary,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: borderColor ?? AppColors.transparent),
          borderRadius: BorderRadius.circular(
            borderRadius ?? 16.r,
          ),
        ),
        padding: EdgeInsets.zero,
        elevation: 0,
      ),
      onPressed: onTap,
      child: child ??
          Text(
            style: textStyle ??
                Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: textColor ?? AppColors.primaryWhite,
                    ),
            buttonName!,
          ).wrapCenter(),
    );
  }
}
