import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octopii_provier_app/core/common_widgets/app_static_button.dart';
import 'package:octopii_provier_app/core/const/database_constants.dart';
import 'package:octopii_provier_app/core/di/di.dart';
import 'package:octopii_provier_app/core/extensions/navigation.dart';
import 'package:octopii_provier_app/core/extensions/widgets_extensions.dart';
import 'package:octopii_provier_app/core/navigation/route_names.dart';
import 'package:octopii_provier_app/core/theme/app_colors.dart';
import 'package:octopii_provier_app/gen/assets.gen.dart';
import 'package:octopii_provier_app/gen/locale_keys.g.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    Future<void> finishOnboardingAndNavigate() async {
      await sl<SharedPreferences>().setBool(DatabaseConstants.onboardingKey, true);
      if (context.mounted) {
        await context.pushNamedAndRemoveUntil(
          RouteNames.login,
          predicate: (Route<dynamic> route) => false,
        );
      }
    }

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.w,
      ),
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.33, -0.94),
          end: Alignment(-0.33, 0.94),
          colors: <Color>[
            Colors.white,
            AppColors.neutral700,
          ],
        ),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 20.h,
          ),
          MyAssets.logos.logo.image(
            width: 96.w,
            height: 42.h,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 160.h,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.r),
              child: MyAssets.images.onBoardingOne.image(
                width: 313.w,
                height: 206.h,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          Text(
            LocaleKeys.trackYourRequests.tr(),
            style: Theme.of(context).textTheme.displayLarge,
            textAlign: TextAlign.center,
          ).wrapCenter(),
          SizedBox(
            height: 18.h,
          ),
          Text(
            LocaleKeys.chooseRightService.tr(),
            style: Theme.of(context).textTheme.bodySmall,
            textAlign: TextAlign.center,
          ).wrapCenter(),
          SizedBox(
            height: 40.h,
          ),
          AppStaticButton(
            onTap: () async => finishOnboardingAndNavigate(),
            buttonName: LocaleKeys.logIn.tr(),
          ),
        ],
      ),
    );
  }
}
