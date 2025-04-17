import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octopii_provier_app/core/common_widgets/animations/app_animated_shimmer_widget.dart';
import 'package:octopii_provier_app/core/extensions/widgets_extensions.dart';

class BookingDetailsShimmerWidget extends StatelessWidget {
  const BookingDetailsShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        AppShimmerWidget(
          width: 353.w,
          height: 52.h,
          borderRadius: BorderRadiusDirectional.circular(
            12.r,
          ),
        ).paddingHorizontal(20.w),
        SizedBox(
          height: 24.h,
        ),
        AppShimmerWidget(
          width: 353.w,
          height: 129.h,
          borderRadius: BorderRadiusDirectional.circular(
            12.r,
          ),
        ).paddingHorizontal(20.w),
        SizedBox(
          height: 24.h,
        ),
        AppShimmerWidget(
          width: 353.w,
          height: 185.h,
          borderRadius: BorderRadiusDirectional.circular(
            12.r,
          ),
        ).paddingHorizontal(20.w),
        SizedBox(
          height: 24.h,
        ),
        AppShimmerWidget(
          width: 353.w,
          height: 48.h,
          borderRadius: BorderRadiusDirectional.circular(
            12.r,
          ),
        ).paddingHorizontal(20.w),
        const Spacer(),
        Container(
          height: 108.h,
          padding: EdgeInsets.only(top: 16.h, left: 16.h, right: 16.w),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondaryContainer,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
            ),
          ),
          child: Row(
            children: <Widget>[
              Expanded(
                child: AppShimmerWidget(
                  width: 174.50.w,
                  height: 44.h,
                  borderRadius: BorderRadiusDirectional.circular(
                    12.r,
                  ),
                ),
              ),
              SizedBox(
                width: 12.w,
              ),
              Expanded(
                child: AppShimmerWidget(
                  width: 174.50.w,
                  height: 44.h,
                  borderRadius: BorderRadiusDirectional.circular(
                    12.r,
                  ),
                ),
              ),

            ],
          ),
        ),
      ],
    );
  }
}
