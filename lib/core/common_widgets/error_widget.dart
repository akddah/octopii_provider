import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octopii_provier_app/core/extensions/widgets_extensions.dart';
import 'package:octopii_provier_app/gen/assets.gen.dart';
import 'package:octopii_provier_app/gen/locale_keys.g.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({
    required this.errorMsg,
    super.key,
  });

  final String? errorMsg;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MyAssets.icons.errorIcon.image(
              width: 50.w,
              height: 50.h,
            ),
            SizedBox(
              width: 10.w,
            ),
            Text(
              LocaleKeys.error.tr(),
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 30.sp,
                  ),
            ),
          ],
        ),
        Text(
          LocaleKeys.statusCode500.tr(),
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: Theme.of(context).colorScheme.error,
                fontSize: 50.sp,
              ),
        ),
        SizedBox(
          height: 20.h,
        ),
        if (errorMsg != null)
          Text(
            errorMsg!,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                ),
            textAlign: TextAlign.center,
          )
        else
          const SizedBox.shrink(),
        SizedBox(
          height: 20.h,
        ),
        Text(
          LocaleKeys.serverErrorDescription.tr(),
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
          textAlign: TextAlign.center,
        ),
      ],
    ).wrapWithPadding(
      paddingTop: 20.h,
    );
  }
}
