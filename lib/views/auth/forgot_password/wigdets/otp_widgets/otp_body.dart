import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octopii_provier_app/core/const/const_strings.dart';
import 'package:octopii_provier_app/core/extensions/widgets_extensions.dart';
import 'package:octopii_provier_app/gen/locale_keys.g.dart';
import 'package:octopii_provier_app/views/auth/forgot_password/wigdets/otp_widgets/index.dart';

class OtpBody extends StatelessWidget {
  const OtpBody({
    required this.phoneNumber,
    required this.countryCode,
    super.key,
  });

  final String phoneNumber;
  final int countryCode;

  @override
  Widget build(BuildContext context) {
    return ListView(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      padding: const EdgeInsets.all(20),
      children: <Widget>[
        Hero(
          tag: AppStrings.otpTag,
          child: Text(
            LocaleKeys.otp.tr(),
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  color: Theme.of(context).colorScheme.scrim,
                ),
          ),
        ).wrapCenter(),
        SizedBox(
          height: 18.h,
        ),
        Text.rich(
          TextSpan(
            children: <InlineSpan>[
              TextSpan(
                text: LocaleKeys.codeHasBeenSentTo.tr(),
                style: Theme.of(context).textTheme.displaySmall,
              ),
              WidgetSpan(
                child: SizedBox(
                  width: 2.w,
                ),
              ),
              TextSpan(
                text: phoneNumber,
                style: Theme.of(context).textTheme.displaySmall,
              ),
            ],
          ),
        ).wrapCenter(),
        SizedBox(
          height: 24.h,
        ),
        OtpFieldsWidget(
          phoneNumber: phoneNumber,
          countryCode: countryCode,
        ).wrapCenter(),
      ],
    );
  }
}
