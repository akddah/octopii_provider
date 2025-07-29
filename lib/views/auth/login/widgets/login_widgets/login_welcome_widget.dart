import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octopii_provier_app/gen/locale_keys.g.dart';

class LoginWelcomeWidget extends StatelessWidget {
  const LoginWelcomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          LocaleKeys.log_In.tr(),
          style: Theme.of(context).textTheme.displayLarge,
        ),
        SizedBox(
          height: 30.h,
        ),
        Text(
          LocaleKeys.loginToYourAccount.tr(),
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: Theme.of(context).colorScheme.onInverseSurface,
              ),
        ),
      ],
    );
  }
}
