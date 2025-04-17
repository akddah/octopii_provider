import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octopii_provier_app/core/common_widgets/animations/app_animated_shimmer_widget.dart';
import 'package:octopii_provier_app/core/di/di.dart';
import 'package:octopii_provier_app/core/utils/extensions.dart';
import 'package:octopii_provier_app/gen/assets.gen.dart';
import 'package:octopii_provier_app/gen/locale_keys.g.dart';
import 'package:octopii_provier_app/views/profile/cubits/get_user_profile_cubit/user_profile_cubit.dart';

class HeaderSection extends StatefulWidget {
  const HeaderSection({super.key});

  @override
  State<HeaderSection> createState() => _HeaderSectionState();
}

class _HeaderSectionState extends State<HeaderSection> {
  final cubit = sl<UserProfileCubit>();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserProfileCubit, UserProfileState>(
      bloc: cubit,
      builder: (context, state) {
        return SliverAppBar(
          backgroundColor: context.onSurfaceVariant,
          centerTitle: false,
          primary: true,
          pinned: true,
          toolbarHeight: 140.h,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              MyAssets.logos.logo.image(
                width: 96.w,
                height: 42.h,
              ),
              SizedBox(
                height: 24.h,
              ),
              Text.rich(
                TextSpan(
                  children: <InlineSpan>[
                    TextSpan(
                      text: LocaleKeys.hello.tr(),
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            fontSize: 11.sp,
                            color: Theme.of(context).colorScheme.scrim,
                          ),
                    ),
                    WidgetSpan(
                      child: SizedBox(
                        width: 2.w,
                      ),
                    ),
                    if ((state.isInitial || state.isLoading) && state.userProfileData == null)
                      WidgetSpan(
                        child: AppShimmerWidget(
                          width: 75.w,
                          height: 10.h,
                        ),
                      )
                    else
                      TextSpan(
                        text: state.userProfileData?.response.name ?? '',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              fontSize: 11.sp,
                              color: Theme.of(context).colorScheme.scrim,
                            ),
                      ),
                  ],
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              if ((state.isInitial || state.isLoading) && state.userProfileData == null)
                AppShimmerWidget(
                  width: 75.w,
                  height: 10.h,
                )
              else
                Text.rich(
                  TextSpan(
                    children: <InlineSpan>[
                      TextSpan(
                        text: '${state.userProfileData?.response.outstanding ?? 0}',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      WidgetSpan(
                        child: SizedBox(
                          width: 2.w,
                        ),
                      ),
                      TextSpan(
                        text: LocaleKeys.pendingRequests.tr(),
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              fontSize: 11.sp,
                              color: Theme.of(context).colorScheme.onInverseSurface,
                            ),
                      ),
                    ],
                  ),
                ),
            ],
          ).withPadding(horizontal: 20.w),
          titleSpacing: 0,
        );
      },
    );
  }
}
