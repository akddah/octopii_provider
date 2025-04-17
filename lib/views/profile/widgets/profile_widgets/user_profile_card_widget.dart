import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octopii_provier_app/core/common_widgets/cached_network_image_provider_widget.dart';
import 'package:octopii_provier_app/core/di/di.dart';
import 'package:octopii_provier_app/gen/locale_keys.g.dart';
import 'package:octopii_provier_app/views/profile/cubits/get_user_profile_cubit/user_profile_cubit.dart';
import 'package:octopii_provier_app/views/profile/shimmers/profile_shimmer_view.dart';

class UserProfileCardWidget extends StatelessWidget {
  const UserProfileCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Text(
              LocaleKeys.myProfile.tr(),
              style: Theme.of(context).textTheme.labelMedium?.copyWith(fontSize: 15.sp),
            ),
            const Spacer(),
            // GestureDetector(
            //   behavior: HitTestBehavior.opaque,
            //   onTap: () {},
            //   child: Container(
            //     alignment: Alignment.center,
            //     width: 44.w,
            //     height: 44.h,
            //     padding: const EdgeInsets.all(8),
            //     decoration: BoxDecoration(
            //       color: Theme.of(context).colorScheme.secondaryContainer,
            //       shape: BoxShape.circle,
            //     ),
            //     child: MyAssets.icons.iosShareIcon.svg().wrapCenter(),
            //   ),
            // ),
          ],
        ),
        SizedBox(
          height: 24.h,
        ),
        BlocBuilder<UserProfileCubit, UserProfileState>(
          bloc: sl<UserProfileCubit>(),
          builder: (BuildContext context, UserProfileState state) {
            if (state.isInitial || state.isLoading) {
              return const ProfileShimmerView();
            }

            return Container(
              width: 353.w,
              height: 158.h,
              padding: EdgeInsets.symmetric(vertical: 16.h),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondaryContainer,
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Column(
                children: <Widget>[
                  CachedNetworkImageProviderWidget(
                    imageUrl: state.userProfileData?.response.image ?? '',
                    isCircular: true,
                    width: 72.w,
                    height: 72.h,
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Text.rich(
                    TextSpan(
                      children: <InlineSpan>[
                        TextSpan(
                          text: LocaleKeys.hello.tr(),
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        WidgetSpan(
                          child: SizedBox(
                            width: 2.w,
                          ),
                        ),
                        TextSpan(
                          text: state.userProfileData?.response.name,
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Text(
                      state.userProfileData?.response.phone ?? '',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Theme.of(context).colorScheme.scrim,
                          ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
