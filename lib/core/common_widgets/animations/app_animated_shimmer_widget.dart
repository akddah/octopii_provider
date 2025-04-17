import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:octopii_provier_app/core/theme/app_colors.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class AppShimmerWidget extends StatelessWidget {
  final double width;
  final double height;
  final BorderRadiusDirectional? borderRadius;
  final Color color;

  const AppShimmerWidget({
    required this.width,
    required this.height,
    this.color = AppColors.grey100,
    this.borderRadius,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ClipRRect(
        borderRadius: borderRadius ?? BorderRadiusDirectional.zero,
        child: Shimmer(
          color: color,
          direction: context.locale.languageCode == 'ar'
              ? const ShimmerDirection.fromRightToLeft()
              : const ShimmerDirection.fromLeftToRight(),
          duration: const Duration(milliseconds: 1200),
          child: const SizedBox.expand(),
        ),
      ),
    );
  }
}
