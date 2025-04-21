// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:octopii_provier_app/core/extensions/navigation.dart';
// import 'package:octopii_provier_app/core/theme/app_colors.dart';
// import 'package:octopii_provier_app/core/theme/app_system_ui_overlay_styles.dart';
// import 'package:octopii_provier_app/gen/assets.gen.dart';
// import 'package:octopii_provier_app/gen/locale_keys.g.dart';
// import 'package:octopii_provier_app/models/schedule_list/working_days_response_model.dart';
// import 'package:octopii_provier_app/views/manage_working_days/cubits/list_working_days_cubit/list_working_days_cubit.dart';

// class ApplyTimeToAllBottomSheet extends StatelessWidget {
//   const ApplyTimeToAllBottomSheet({
//     required this.workingDaysData,
//     super.key,
//   });

//   final WorkingDay workingDaysData;

//   @override
//   Widget build(BuildContext context) {
//     return AnnotatedRegion<SystemUiOverlayStyle>(
//       value: AppSystemUiOverlayStyles.lightStatusBarIconsStyle.copyWith(
//         systemNavigationBarColor: AppColors.primaryWhite,
//       ),
//       child: Container(
//         width: double.infinity,
//         height: 228.h,
//         padding: EdgeInsets.only(
//           top: 20.h,
//           left: 20.w,
//           right: 20.w,
//           bottom: 32.w,
//         ),
//         clipBehavior: Clip.antiAlias,
//         decoration: ShapeDecoration(
//           color: Theme.of(context).colorScheme.secondaryContainer,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(24.r),
//               topRight: Radius.circular(24.r),
//             ),
//           ),
//           shadows: const <BoxShadow>[
//             BoxShadow(
//               color: AppColors.shadowColor,
//               blurRadius: 8,
//               offset: Offset(0, 4),
//             ),
//             BoxShadow(
//               color: AppColors.shadowColor2,
//               blurRadius: 4,
//             ),
//           ],
//         ),
//         child: Column(
//           children: <Widget>[
//             Row(
//               children: <Widget>[
//                 Text(
//                   LocaleKeys.timeOptions.tr(),
//                   style: Theme.of(context).textTheme.headlineMedium,
//                 ),
//                 const Spacer(),
//                 GestureDetector(
//                   onTap: () => context.pop<dynamic>(),
//                   child: Container(
//                     width: 44.w,
//                     height: 44.h,
//                     padding: const EdgeInsets.all(8),
//                     decoration: ShapeDecoration(
//                       color: Theme.of(context).colorScheme.outlineVariant,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(16.r),
//                       ),
//                     ),
//                     child: MyAssets.icons.closeIcon.svg(),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 24.h,
//             ),
//             ClipRRect(
//               borderRadius: BorderRadius.circular(12.r),
//               child: ColoredBox(
//                 color: Theme.of(context).colorScheme.outlineVariant,
//                 child: ListTile(
//                   onTap: () {
//                     context.read<ListWorkingDaysCubit>().applyTimeToAll(workingDaysData);

//                     context.pop<dynamic>();
//                   },
//                   title: Text(
//                     LocaleKeys.applyTimeToAll.tr(),
//                     style: Theme.of(context).textTheme.bodySmall?.copyWith(
//                           color: Theme.of(context).colorScheme.scrim,
//                         ),
//                   ),
//                   leading: MyAssets.icons.contentCopyIcon.svg(),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
