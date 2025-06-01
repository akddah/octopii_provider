import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octopii_provier_app/core/utils/extensions.dart';
import 'package:octopii_provier_app/models/bookings/booking_details_response_model.dart';

class LocationInfoWidget extends StatelessWidget {
  final Address? address;
  const LocationInfoWidget({super.key, this.address});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (address?.locationName?.isNotEmpty ?? false)
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Location name',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              SizedBox(width: 12.w),
              Flexible(
                child: Text(
                  address?.locationName ?? '',
                  // [
                  //   if (address.locationName != null) address.locationName,
                  //   if (address.streetName != null) address.streetName,
                  //   if (address.buildingNumber != null) "${LocaleKeys.building.tr()} ${address.buildingNumber}",
                  //   if (address.floorNumber != null) "${LocaleKeys.floor.tr()}${address.floorNumber}",
                  //   if (address.unitNumber != null) "${LocaleKeys.appartment_no.tr()} ${address.unitNumber}"
                  // ].join(', '),
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
            ],
          ).withPadding(vertical: 4.h),
        if (address?.streetName?.isNotEmpty ?? false)
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Street name',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              SizedBox(width: 12.w),
              Flexible(
                child: Text(
                  address?.streetName ?? '',
                  // [
                  //   if (address.locationName != null) address.locationName,
                  //   if (address.streetName != null) address.streetName,
                  //   if (address.buildingNumber != null) "${LocaleKeys.building.tr()} ${address.buildingNumber}",
                  //   if (address.floorNumber != null) "${LocaleKeys.floor.tr()}${address.floorNumber}",
                  //   if (address.unitNumber != null) "${LocaleKeys.appartment_no.tr()} ${address.unitNumber}"
                  // ].join(', '),
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
            ],
          ).withPadding(vertical: 4.h),
        if (address?.streetName?.isNotEmpty ?? false)
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Building Number',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              SizedBox(width: 12.w),
              Flexible(
                child: Text(
                  address?.buildingNumber ?? '',
                  // [
                  //   if (address.locationName != null) address.locationName,
                  //   if (address.streetName != null) address.streetName,
                  //   if (address.buildingNumber != null) "${LocaleKeys.building.tr()} ${address.buildingNumber}",
                  //   if (address.floorNumber != null) "${LocaleKeys.floor.tr()}${address.floorNumber}",
                  //   if (address.unitNumber != null) "${LocaleKeys.appartment_no.tr()} ${address.unitNumber}"
                  // ].join(', '),
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
            ],
          ).withPadding(vertical: 4.h),
        // if (address?.streetName?.isNotEmpty ?? false)
        //   Row(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     children: [
        //       Text(
        //         'Building Number',
        //         style: Theme.of(context).textTheme.bodySmall,
        //       ),
        //       SizedBox(width: 12.w),
        //       Flexible(
        //         child: Text(
        //           address?.buildingNumber ?? '',
        //           // [
        //           //   if (address.locationName != null) address.locationName,
        //           //   if (address.streetName != null) address.streetName,
        //           //   if (address.buildingNumber != null) "${LocaleKeys.building.tr()} ${address.buildingNumber}",
        //           //   if (address.floorNumber != null) "${LocaleKeys.floor.tr()}${address.floorNumber}",
        //           //   if (address.unitNumber != null) "${LocaleKeys.appartment_no.tr()} ${address.unitNumber}"
        //           // ].join(', '),
        //           style: Theme.of(context).textTheme.bodySmall,
        //         ),
        //       ),
        //     ],
        //   ).withPadding(vertical: 4.h),
        if (address?.floorNumber?.isNotEmpty ?? false)
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Floor Number',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              SizedBox(width: 12.w),
              Flexible(
                child: Text(
                  address?.buildingNumber ?? '',
                  // [
                  //   if (address.locationName != null) address.locationName,
                  //   if (address.streetName != null) address.streetName,
                  //   if (address.buildingNumber != null) "${LocaleKeys.building.tr()} ${address.buildingNumber}",
                  //   if (address.floorNumber != null) "${LocaleKeys.floor.tr()}${address.floorNumber}",
                  //   if (address.unitNumber != null) "${LocaleKeys.appartment_no.tr()} ${address.unitNumber}"
                  // ].join(', '),
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
            ],
          ).withPadding(vertical: 4.h),
        if (address?.floorNumber?.isNotEmpty ?? false)
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Unit Number',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              SizedBox(width: 12.w),
              Flexible(
                child: Text(
                  address?.unitNumber ?? '',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
            ],
          ).withPadding(vertical: 4.h),
        if (address?.notes?.isNotEmpty ?? false)
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Notes',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              SizedBox(width: 12.w),
              Flexible(
                child: Text(
                  address?.notes ?? '',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
            ],
          ).withPadding(vertical: 4.h),
      ],
    );
  }
}
