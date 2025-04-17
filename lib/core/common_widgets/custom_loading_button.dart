import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:octopii_provier_app/core/extensions/widgets_extensions.dart';
import 'package:octopii_provier_app/core/theme/app_colors.dart';
import 'package:octopii_provier_app/core/utils/generic_classes/generic.dart';
class CustomLoadingButton<C extends Cubit<S>, S extends LoadableState?>
    extends StatelessWidget {
  const CustomLoadingButton({
    required this.onTap,
    super.key,
    this.text,
    this.height,
    this.width,
    this.backGroundColor,
    this.borderColor,
    this.textColor,
    this.unClickableButtonColor,
    this.borderRadius,
    this.child,
    this.cubit,
    this.loadingState,
    this.isClickable = true,
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
  final Cubit<dynamic>? cubit;
  final dynamic loadingState;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<C, S>(
      bloc: cubit! as C,
      builder: (BuildContext context, LoadableState? state) {
        final bool isLoading = state!.isLoading;
        return ElevatedButton(
          style: ElevatedButton.styleFrom(
            maximumSize: Size(width ?? 353.w, height ?? 44.h),
            minimumSize: Size(width ?? 353.w, height ?? 44.h),
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: borderColor ?? AppColors.transparent,
              ),
              borderRadius: BorderRadius.circular(
                borderRadius ?? 12.r,
              ),
            ),
            padding: EdgeInsets.zero,
            elevation: 0,
            foregroundColor:
                Theme.of(context).colorScheme.surfaceContainerLowest,
            disabledBackgroundColor:
                Theme.of(context).colorScheme.surfaceContainerLowest,
          ),
          onPressed: isClickable! && !isLoading ? onTap : null,
          child: AnimatedContainer(
            width: width ?? 353.w,
            height: height ?? 44.h,
            decoration: BoxDecoration(
              color: isClickable!
                  ? backGroundColor ?? Theme.of(context).colorScheme.primary
                  : Theme.of(context).colorScheme.surfaceContainerLowest,
              borderRadius: BorderRadius.circular(
                12.r,
              ),
            ),
            duration: const Duration(milliseconds: 300),
            child: isLoading
                ? Center(
                    child: SpinKitRing(
                      color: AppColors.primaryWhite,
                      size: 30.sp,
                      lineWidth: 2.w,
                    ),
                  )
                : text != null
                    ? AnimatedDefaultTextStyle(
                        duration: const Duration(milliseconds: 300),
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: textColor ?? AppColors.primaryWhite,
                            ),
                        child: Text(
                          text!,
                        ).wrapCenter(),
                      )
                    : child,
          ),
        );
      },
    );
  }
}

class CustomButton
    extends StatelessWidget {
  const CustomButton({
    required this.onTap,
    super.key,
    this.text,
    this.height,
    this.width,
    this.backGroundColor,
    this.borderColor,
    this.textColor,
    this.unClickableButtonColor,
    this.borderRadius,
    this.child,

    this.isClickable = true,
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
                borderRadius ?? 12.r,
              ),
            ),
            padding: EdgeInsets.zero,
            elevation: 0,
            foregroundColor:
                Theme.of(context).colorScheme.surfaceContainerLowest,
            disabledBackgroundColor:
                Theme.of(context).colorScheme.surfaceContainerLowest,
          ),
          onPressed: onTap,
          child: AnimatedContainer(
            width: width ?? 353.w,
            height: height ?? 44.h,
            decoration: BoxDecoration(
              color: isClickable!
                  ? backGroundColor ?? Theme.of(context).colorScheme.primary
                  : Theme.of(context).colorScheme.surfaceContainerLowest,
              borderRadius: BorderRadius.circular(
                12.r,
              ),
            ),
            duration: const Duration(milliseconds: 300),
            child:  text != null
                    ? AnimatedDefaultTextStyle(
                        duration: const Duration(milliseconds: 300),
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: Colors.white,
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
