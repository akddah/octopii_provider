import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:octopii_provier_app/core/extensions/navigation.dart';
import 'package:octopii_provier_app/core/extensions/widgets_extensions.dart';
import 'package:octopii_provier_app/core/theme/app_colors.dart';
import 'package:octopii_provier_app/gen/assets.gen.dart';
import 'package:octopii_provier_app/gen/locale_keys.g.dart';

class ChangeLanguageBottomSheet extends HookWidget {
  const ChangeLanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final String currentLocale = context.locale.languageCode;
    final ValueNotifier<String> selectedLang = useState(currentLocale);

    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(
        top: 20.h,
        left: 20.w,
        right: 20.w,
        bottom: 32.h,
      ),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.r),
          topRight: Radius.circular(24.r),
        ),
        color: Theme.of(context).colorScheme.secondaryContainer,
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
      child: Column(
        children: <Widget>[
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () => context.pop<dynamic>(),
            child: Container(
              width: 44.w,
              height: 44.h,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.outlineVariant,
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: SvgPicture.asset(
                MyAssets.icons.closeIcon.path,
              ).wrapCenter(),
            ),
          ).align(
            Alignment.topRight,
          ),
          SizedBox(height: 24.h),
          Container(
            width: 77.w,
            height: 77.h,
            decoration: ShapeDecoration(
              gradient: LinearGradient(
                begin: const Alignment(0.33, -0.94),
                end: const Alignment(-0.33, 0.94),
                colors: <Color>[
                  Theme.of(context).colorScheme.secondaryContainer,
                  Theme.of(context).colorScheme.surfaceDim,
                ],
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.r),
              ),
            ),
            child: MyAssets.icons.languageIcon
                .svg(
                  width: 36.w,
                  height: 36.h,
                  colorFilter: ColorFilter.mode(
                    Theme.of(context).colorScheme.primary,
                    BlendMode.srcIn,
                  ),
                )
                .paddingAll(10),
          ),
          SizedBox(height: 10.h),
          Text(
            LocaleKeys.changeLanguage.tr(),
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          SizedBox(height: 24.h),
          RadioListTile<String>(
            controlAffinity: ListTileControlAffinity.trailing,
            activeColor: Theme.of(context).primaryColor,
            value: 'en',
            groupValue: selectedLang.value,
            title: Text(
              LocaleKeys.english.tr(),
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.scrim,
                  ),
            ),
            onChanged: (String? newValue) async {
              await context.setLocale(
                Locale(newValue!, newValue == 'en' ? "US" : "EG"),
              );
              if (context.mounted) {
                context.pop<dynamic>();
              }
            },
          ),
          SizedBox(height: 12.h),
          Divider(
            color: Theme.of(context).colorScheme.shadow,
          ),
          SizedBox(height: 12.h),
          RadioListTile<String>(
            controlAffinity: ListTileControlAffinity.trailing,
            activeColor: Theme.of(context).primaryColor,
            value: 'ar',
            groupValue: selectedLang.value,
            title: Text(
              LocaleKeys.arabic.tr(),
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.scrim,
                  ),
            ),
            onChanged: (String? newValue) async {
              await context.setLocale(
                Locale(newValue!, newValue == 'en' ? "US" : "EG"),
              );
              if (context.mounted) {
                context.pop<dynamic>();
              }
            },
          ),
        ],
      ),
    );
  }
}
