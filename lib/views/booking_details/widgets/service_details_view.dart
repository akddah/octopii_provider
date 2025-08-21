import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octopii_provier_app/gen/locale_keys.g.dart';

class ServiceDetailsView extends StatelessWidget {
  const ServiceDetailsView({
    required this.serviceName,
    required this.serviceDuration,
    required this.serviceCost,
    super.key,
  });

  final String serviceName;
  final num serviceDuration;
  final String serviceCost;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Text(
            serviceName,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Theme.of(context).colorScheme.scrim,
                ),
          ),
        ),
        if (serviceDuration != 0)
          Container(
            alignment: Alignment.center,
            height: 21.h,
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 0.h),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.outlineVariant,
              borderRadius: BorderRadius.circular(360.r),
            ),
            child: Text(
              serviceDuration > 0 ? '$serviceDuration ${LocaleKeys.h.tr()}' : '${serviceDuration * 60} ${LocaleKeys.min.tr()}',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Theme.of(context).colorScheme.scrim),
              textAlign: TextAlign.center,
            ),
          ),
        SizedBox(
          width: 15.w,
        ),
        Text(
          '${LocaleKeys.currencyEgp.tr()} $serviceCost',
          style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Theme.of(context).colorScheme.scrim),
          textAlign: TextAlign.right,
        ),
      ],
    );
  }
}
