import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WorkingHoursView extends StatelessWidget {
  const WorkingHoursView({
    required this.title,
    super.key,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24.h,
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondaryContainer,
        border: Border.all(color: Theme.of(context).colorScheme.shadow),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Text(
        title,
        style: Theme.of(context).textTheme.displaySmall?.copyWith(
          color: Theme.of(context).colorScheme.scrim,
        ),
      ),
    );
  }
}
