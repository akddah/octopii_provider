import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:octopii_provier_app/core/di/di.dart';
import 'package:octopii_provier_app/core/extensions/navigation.dart';
import 'package:octopii_provier_app/core/navigation/app_router.dart';
import 'package:octopii_provier_app/core/navigation/route_names.dart';
import 'package:octopii_provier_app/core/theme/app_colors.dart';
import 'package:octopii_provier_app/gen/assets.gen.dart';
import 'package:octopii_provier_app/gen/locale_keys.g.dart';
import 'package:octopii_provier_app/views/profile/bottom_sheets/index.dart';
import 'package:octopii_provier_app/views/profile/cubits/get_user_profile_cubit/user_profile_cubit.dart';
import 'package:octopii_provier_app/views/profile/cubits/logout_cubit/logout_cubit.dart';
import 'package:octopii_provier_app/views/profile/shimmers/profile_option_shimmer_widget.dart';
import 'package:octopii_provier_app/views/profile/widgets/profile_widgets/index.dart';

class ProfileOptionWidget extends StatelessWidget {
  const ProfileOptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LogoutListenerWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          BlocBuilder<UserProfileCubit, UserProfileState>(
            bloc: sl<UserProfileCubit>(),
            builder: (BuildContext context, UserProfileState state) {
              if (state.isInitial || state.isLoading) {
                return const ProfileOptionShimmerWidget();
              }
              return ProfileOptionView(
                imagePath: MyAssets.icons.bookmarksIcon.path,
                title: LocaleKeys.myPayments.tr(),
                leading: Text.rich(
                  TextSpan(
                    children: <InlineSpan>[
                      TextSpan(
                        text: '${LocaleKeys.received.tr()} ${state.userProfileData?.response.earnings.toStringAsFixed(2) ?? ''} ${LocaleKeys.currencyEgp.tr()}',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: Theme.of(context).colorScheme.onTertiaryFixedVariant,
                            ),
                      ),
                    ],
                  ),
                ),
                onTap: () => context.push(RouteNames.transactions),
              );
            },
          ),
          SizedBox(
            height: 12.h,
          ),
          // ProfileOptionView(
          //   imagePath: MyAssets.icons.workHistoryIcon.path,
          //   title: LocaleKeys.manageWorkingHours.tr(),
          //   onTap: () => context.push(RouteNames.manageWorkingDays),
          // ),
          // SizedBox(
          //   height: 12.h,
          // ),
          ProfileOptionView(
            imagePath: MyAssets.icons.languageIcon.path,
            title: LocaleKeys.language.tr(),
            onTap: () => showModalBottomSheet<void>(
              backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24.r),
                  topRight: Radius.circular(24.r),
                ),
              ),
              context: navigatorKey.currentContext!,
              builder: (_) => const ChangeLanguageBottomSheet(),
            ),
          ),
          SizedBox(
            height: 12.h,
          ),
          ProfileOptionView(
            imagePath: MyAssets.icons.logoutIcon.path,
            title: LocaleKeys.logout.tr(),
            onTap: context.read<LogoutCubit>().userLogout,
          ),
          SizedBox(
            height: 12.h,
          ),
        ],
      ),
    );
  }
}

class ProfileOptionView extends StatelessWidget {
  const ProfileOptionView({
    required this.imagePath,
    required this.title,
    required this.onTap,
    super.key,
    this.leading,
  });

  final String imagePath;
  final String title;
  final Widget? leading;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Container(
        width: 353.w,
        height: 48.h,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: const <BoxShadow>[
            BoxShadow(
              color: AppColors.shadowColor,
              blurRadius: 8,
              offset: Offset(0, 4),
            ),
            BoxShadow(
              color: AppColors.shadowColor2,
              blurRadius: 4,
            ),
          ],
        ),
        child: Row(
          children: <Widget>[
            SvgPicture.asset(
              imagePath,
              width: 24.w,
              height: 24.h,
            ),
            SizedBox(
              width: 18.w,
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Theme.of(context).colorScheme.scrim,
                  ),
            ),
            const Spacer(),
            if (leading != null) leading! else const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
