// import 'dart:developer';

// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:octopii_provier_app/core/di/di.dart';
// import 'package:octopii_provier_app/core/utils/extensions.dart';
// import 'package:octopii_provier_app/views/dashboard/cubits/upcoming_appointments_booking_cubit/upcoming_appointments_booking_cubit.dart';
// import 'package:octopii_provier_app/views/dashboard/widgets/dashboard_widgets/index.dart';
// import 'package:octopii_provier_app/views/profile/cubits/get_user_profile_cubit/user_profile_cubit.dart';

// class DashboardBody extends StatefulWidget {
//   const DashboardBody({super.key});

//   @override
//   State<DashboardBody> createState() => _DashboardBodyState();
// }

// class _DashboardBodyState extends State<DashboardBody> {
//   @override
//   void initState() {
//     context.read<UpcomingAppointmentsBookingCubit>().getBookingList();
//     sl<UserProfileCubit>().getUserProfileData();
//     log('=-=--=-=-=-==-=--=-=-=-==-=--=-=-=-==-=--=-=-=-==-=--=-=-=-==-=--=-=-=-=');
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//       builder: (context, constraints) {
//         return RefreshIndicator(
//           onRefresh: () async {
//             context.read<UpcomingAppointmentsBookingCubit>().getBookingList();
//             await Future.delayed(1.seconds);
//             return Future.value();
//           },
//           child: ListView(
//             controller: context.read<UpcomingAppointmentsBookingCubit>().scrollController,
//             shrinkWrap: true,
//             padding: EdgeInsets.symmetric(
//               horizontal: 20.w,
//               vertical: 20.h,
//             ),
//             children: <Widget>[
//               const HeaderSection(),
//               SizedBox(
//                 height: 24.h,
//               ),
//               const StatisticsSection(),
//               // SizedBox(
//               //   height: 24.h,
//               // ),
//               // const AvailabilityToggle(),
//               SizedBox(
//                 height: 24.h,
//               ),
//               const UpcomingAppointmentsSection(),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
