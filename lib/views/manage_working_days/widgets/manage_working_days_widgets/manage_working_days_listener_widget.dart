// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:octopii_provier_app/core/common_widgets/toast_manager.dart';
// import 'package:octopii_provier_app/gen/locale_keys.g.dart';
// import 'package:octopii_provier_app/views/manage_working_days/cubits/list_working_days_cubit/list_working_days_cubit.dart';
// import 'package:octopii_provier_app/views/manage_working_days/cubits/update_working_days_cubit/update_working_days_cubit.dart';
// import 'package:provider/single_child_widget.dart';

// class ManageWorkingDaysListenerWidget extends StatelessWidget {
//   const ManageWorkingDaysListenerWidget({
//     required this.child,
//     super.key,
//   });

//   final Widget child;

//   @override
//   Widget build(BuildContext context) {
//     return MultiBlocListener(
//       listeners: <SingleChildWidget>[
//         BlocListener<ListWorkingDaysCubit, ListWorkingDaysState>(
//           listener: (BuildContext context, ListWorkingDaysState state) {
//             if (state.isError) {
//               ToastManager().error(
//                 context: context,
//                 message: LocaleKeys.validationErrorAddTime.tr(
//                   namedArgs: <String, String>{
//                     'dayName': state.errorMsg.toString(),
//                   },
//                 ),
//                 description: LocaleKeys.validationErrorDayTurnedOn.tr(
//                   namedArgs: <String, String>{
//                     'dayName': state.errorMsg.toString(),
//                   },
//                 ),
//               );
//             }
//           },
//         ),
//         BlocListener<UpdateWorkingDaysCubit, UpdateWorkingDaysState>(
//           listener: (BuildContext context, UpdateWorkingDaysState state) {
//             if (state.isError) {
//               ToastManager().error(
//                 context: context,
//                 message: state.errorMsg??LocaleKeys.errorUpdatingWorkingDays.tr(),
//                 description: state.errorDescription??LocaleKeys.pleaseTryAgain.tr(),
//               );
//             } else if (state.isLoaded) {
//               ToastManager().success(
//                 context: context,
//                 message: LocaleKeys.successUpdatingWorkingDays.tr(),
//                 description: LocaleKeys.workingDaysUpdatedSuccessfully.tr(),
//               );
//               context.read<ListWorkingDaysCubit>().clearCache();

//               context.read<ListWorkingDaysCubit>().getWorkingDaysList();
//             }
//           },
//         ),

//       ],
//       child: child,
//     );
//   }
// }
