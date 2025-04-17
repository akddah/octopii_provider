import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octopii_provier_app/core/common_widgets/animations/app_animated_shimmer_widget.dart';

class BookingCardShimmerWidget extends StatelessWidget {
  const BookingCardShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, __) => AppShimmerWidget(
        width: 353.w,
        height: 127.h,
        borderRadius: BorderRadiusDirectional.circular(16.r),
      ),
      separatorBuilder: (BuildContext context, __) => SizedBox(
        height: 12.h,
      ),
      itemCount: 10,
    );
  }
}
