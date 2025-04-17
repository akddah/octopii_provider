// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// import 'package:octopii_provier_app/core/common_widgets/custom_tabbar.dart';
// import 'package:octopii_provier_app/core/extensions/widgets_extensions.dart';
// import 'package:octopii_provier_app/gen/locale_keys.g.dart';
// import 'package:octopii_provier_app/views/booking/wigdets/booking_widgets/index.dart';

// class BookingBody extends StatefulWidget {
//   const BookingBody({super.key});

//   @override
//   State<BookingBody> createState() => _BookingBodyState();
// }

// class _BookingBodyState extends State<BookingBody> {
//   // late Cubit<BookingListState> _bookingCubit;

//   @override
//   void initState() {
//     // _bookingCubit = context.read<BookingListCubit>();
//     // if (_bookingCubit.state.isInitial) {
//     // }

//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         Text(
//           LocaleKeys.myBookings.tr(),
//           style: Theme.of(context).textTheme.labelMedium?.copyWith(
//                 fontSize: 15.sp,
//               ),
//         ),
//         SizedBox(
//           height: 24.h,
//         ),
//         Expanded(
//           child: CustomTabBar(
//             tabBarItems: <String>[
//               LocaleKeys.upcomingBookings.tr(),
//               LocaleKeys.finishedBookings.tr(),
//             ],
//             tabViewItems: const <Widget>[
//               UpcomingBookingsWidget(),
//               FinishedBookingsWidget(),
//             ],
//           ),
//         ),
//       ],
//     ).paddingAll(20);
//   }
// }
