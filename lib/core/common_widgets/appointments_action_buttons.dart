import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octopii_provier_app/core/common_widgets/app_static_button.dart';
import 'package:octopii_provier_app/gen/locale_keys.g.dart';

class AppointmentsActionButtons extends StatelessWidget {
  const AppointmentsActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        AppStaticButton(
          width: 159.50.w,
          height: 34.h,
          onTap: () {},
          buttonColor: Theme.of(context).colorScheme.secondaryContainer,
          borderColor: Theme.of(context).colorScheme.onError,
          buttonName: LocaleKeys.cancel.tr(),
          textStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: Theme.of(context).colorScheme.onError,
          ),

        ),
        SizedBox(
          width: 10.w,
        ),
        AppStaticButton(
          width: 159.50.w,
          height: 34.h,
          onTap: () {},
          buttonColor: Theme.of(context).colorScheme.onTertiaryFixedVariant,
          buttonName: LocaleKeys.approve.tr(),
        ),
      ],
    );
  }
}
