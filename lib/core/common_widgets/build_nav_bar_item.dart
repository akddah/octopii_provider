import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:octopii_provier_app/core/common_widgets/cached_network_image_provider_widget.dart';
import 'package:octopii_provier_app/core/di/di.dart';
import 'package:octopii_provier_app/views/profile/cubits/get_user_profile_cubit/user_profile_cubit.dart';

class BuildNavBarItem extends StatelessWidget {
  const BuildNavBarItem({
    required this.index,
    required this.selectedSvgPath,
    required this.currentIndex,
    required this.onTap,
    required this.label,
    super.key,
  });

  final int index;
  final String selectedSvgPath;
  final int currentIndex;
  final VoidCallback onTap;
  final String label;

  @override
  Widget build(BuildContext context) {
    final bool isSelected = index == currentIndex;

    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Container(
        width: 85.75.w,
        height: 52.h,
        padding: EdgeInsets.only(top: 8.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (index == 3)
              BlocBuilder<UserProfileCubit, UserProfileState>(
                bloc: sl<UserProfileCubit>(),
                builder: (BuildContext context, UserProfileState state) {
                  return CachedNetworkImageProviderWidget(
                    imageUrl: state.userProfileData?.response.image ?? '',
                    width: 20.w,
                    height: 20.h,
                    isCircular: true,
                  );
                },
              )
            else
              SvgPicture.asset(
                width: 16.w,
                height: 16.h,
                selectedSvgPath,
                colorFilter: ColorFilter.mode(
                  isSelected ? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.secondary,
                  BlendMode.srcIn,
                ),
              ),
            SizedBox(
              height: 6.h,
            ),
            Expanded(
              child: Text(
                label,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.labelSmall!.copyWith(
                      fontSize: 10.sp,
                      color: isSelected ? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.onInverseSurface,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
