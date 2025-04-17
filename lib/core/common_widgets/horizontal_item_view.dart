import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HorizontalItemView extends StatelessWidget {
  const HorizontalItemView({
    required this.isSelected,
    required this.imagePath,
    required this.title,
    required this.onTap,
    super.key,
  });

  final bool isSelected;
  final String imagePath;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Container(
        width: 167.w,
        height: 40.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40.r),
          border: Border.all(
            color: isSelected
                ? Theme.of(context).colorScheme.primary
                : Theme.of(context).colorScheme.tertiaryContainer,
          ),
          color: isSelected
              ? Theme.of(context).colorScheme.primary
              : Theme.of(context).colorScheme.secondaryContainer,
          boxShadow: !isSelected
              ? <BoxShadow>[
                  const BoxShadow(
                    color: Color(0x14000000),
                    blurRadius: 2,
                  ),
                  const BoxShadow(
                    color: Color(0x14000000),
                    blurRadius: 4,
                    offset: Offset(0, 6),
                    spreadRadius: -4,
                  ),
                ]
              : null,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(
              imagePath,
              colorFilter: ColorFilter.mode(
                isSelected
                    ? Theme.of(context).colorScheme.secondaryContainer
                    : Theme.of(context).colorScheme.onPrimaryContainer,
                BlendMode.srcIn,
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: isSelected
                        ? Theme.of(context).colorScheme.secondaryContainer
                        : Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
