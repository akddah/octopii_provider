import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octopii_provier_app/core/common_widgets/animations/app_animated_shimmer_widget.dart';

class CardShimmerWidget extends StatelessWidget {
  const CardShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppShimmerWidget(
      width: 170.50.w,
      height: 55.h,
      borderRadius: BorderRadiusDirectional.circular(16.r),
    );
  }
}
