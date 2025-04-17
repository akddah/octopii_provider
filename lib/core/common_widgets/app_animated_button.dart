import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octopii_provier_app/core/extensions/widgets_extensions.dart';
import 'package:octopii_provier_app/core/theme/app_colors.dart';

class AppAnimatedButton extends StatelessWidget {
  const AppAnimatedButton({
    required this.onTap,
    super.key,
    this.text,
    this.height,
    this.width,
    this.backGroundColor,
    this.borderColor,
    this.textColor,
    this.unClickableButtonColor,
    this.isClickable = false,
    this.borderRadius,
    this.child,
    this.textStyle,
    this.padding,
  });

  final String? text;
  final VoidCallback? onTap;
  final double? height;
  final double? width;
  final Color? backGroundColor;
  final Color? borderColor;
  final Color? textColor;
  final Color? unClickableButtonColor;
  final bool? isClickable;
  final double? borderRadius;
  final Widget? child;
  final TextStyle? textStyle;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        maximumSize: Size(width ?? 353.w, height ?? 44.h),
        minimumSize: Size(width ?? 353.w, height ?? 44.h),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: borderColor ?? AppColors.transparent,
          ),
          borderRadius: BorderRadius.circular(
            borderRadius ?? 16.r,
          ),
        ),
        padding: padding ?? EdgeInsets.zero,
        elevation: 0,
        backgroundColor: isClickable!
            ? backGroundColor ?? Theme.of(context).colorScheme.primary
            : Theme.of(context).colorScheme.surfaceContainerLowest,
        foregroundColor: Theme.of(context).colorScheme.surfaceContainerLowest,
        disabledBackgroundColor:
        Theme.of(context).colorScheme.surfaceContainerLowest,
      ),
      onPressed: isClickable! ? onTap : null,
      child: AnimatedContainer(
        width: width ?? 345.w,
        height: height ?? 48.h,
        decoration: BoxDecoration(
          color: isClickable!
              ? backGroundColor ?? Theme.of(context).colorScheme.primary
              : Theme.of(context).colorScheme.surfaceContainerLowest,
          borderRadius: BorderRadius.circular(
            12.r,
          ),
        ),
        duration: const Duration(milliseconds: 300),
        child: text != null
            ? AnimatedDefaultTextStyle(
                duration: const Duration(milliseconds: 300),
                style: textStyle ??
                    Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: textColor ?? AppColors.primaryWhite,
                        ),
                child: Text(
                  text!,
                ).wrapCenter(),
              )
            : child,
      ),
    );
  }
}
