import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octopii_provier_app/core/helpers/app_helper_functions.dart';
import 'package:octopii_provier_app/core/theme/app_colors.dart';
import 'package:octopii_provier_app/gen/locale_keys.g.dart';

class AvailabilityToggle extends HookWidget {
  const AvailabilityToggle({super.key});

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<bool> isStoreAvailable = useState(true);
    return Container(
      width: 353.w,
      height: 44.h,
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        shadows: const <BoxShadow>[
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
          Text(
            AppHelperFunctions().formatDate(
              DateTime.now(),
            ),
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Theme.of(context).colorScheme.scrim,
                ),
          ),
          const Spacer(),
          Text(
            isStoreAvailable.value
                ? LocaleKeys.available.tr()
                : LocaleKeys.unavailable.tr(),
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: isStoreAvailable.value
                      ? Theme.of(context).colorScheme.onTertiaryFixedVariant
                      : Theme.of(context).colorScheme.inverseSurface,
                ),
          ),
          SizedBox(width: 12.w,),
          CupertinoSwitch(
            value: isStoreAvailable.value,
            onChanged: (bool newValue) {
              isStoreAvailable.value = newValue;
            },
          ),
        ],
      ),
    );
  }
}
