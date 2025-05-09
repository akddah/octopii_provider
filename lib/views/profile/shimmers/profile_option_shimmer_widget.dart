import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octopii_provier_app/core/common_widgets/animations/app_animated_shimmer_widget.dart';

class ProfileOptionShimmerWidget extends StatelessWidget {
  const ProfileOptionShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppShimmerWidget(
      width: 353.w,
      height: 48.h,
      borderRadius: BorderRadiusDirectional.circular(
        16.r,
      ),
    );
  }
}
