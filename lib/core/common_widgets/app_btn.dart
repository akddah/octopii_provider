import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octopii_provier_app/core/common_widgets/loading.dart';

import '../utils/extensions.dart';

class AppBtn extends StatelessWidget {
  final String? title;
  final void Function()? onPressed;
  final bool loading, enable, safeArea;
  final Color? backgroundColor, textColor, borderColor;
  final Widget? icon, child;
  final double? height, width, textSize;

  const AppBtn({
    super.key,
    this.title,
    this.onPressed,
    this.loading = false,
    this.safeArea = true,
    this.backgroundColor,
    this.height,
    this.borderColor,
    this.width,
    this.icon,
    this.textColor,
    this.enable = true,
    this.child,
    this.textSize,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: safeArea,
      child: ElevatedButton(
        onPressed: () {
          if (!loading && enable) onPressed?.call();
        },
        style: ButtonStyle(
          elevation: !enable || loading || backgroundColor?.opacity != 1 ? WidgetStateProperty.all(0) : null,
          side: WidgetStateProperty.all(BorderSide(style: BorderStyle.solid, color: borderColor ?? textColor ?? Colors.transparent, width: 1.0)),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r))),
          backgroundColor: WidgetStatePropertyAll(
            (backgroundColor ?? context.primaryColor).withValues(
              alpha: loading || !enable ? 0.4 : (backgroundColor ?? context.secondaryColor).opacity,
            ),
          ),
        ),
        child: Container(
          height: height ?? 44.h,
          width: width ?? double.infinity,
          alignment: Alignment.center,
          child: child ??
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (loading) CustomProgress(size: 15.h, color: (textColor ?? context.primaryColorLight)),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (icon != null) ...[icon!, SizedBox(width: 5.w)],
                        Text(
                          title ?? "",
                          style: context.mediumText.copyWith(fontSize: textSize ?? 15, color: textColor ?? context.primaryColorLight),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  if (loading) SizedBox(width: 15.h),
                ],
              ),
        ),
      ),
    );
  }
}
