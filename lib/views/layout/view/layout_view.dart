import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/common_widgets/build_nav_bar_item.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_system_ui_overlay_styles.dart';
import '../../../gen/assets.gen.dart';
import '../../../gen/locale_keys.g.dart';
import '../../notifications/cubits/get_notifications_cubit/get_notifications_cubit.dart';
import '../cubit/home_page_layout_cubit.dart';

class LayoutView extends StatefulWidget {
  const LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: <BlocProvider<dynamic>>[
        BlocProvider<HomePageLayoutCubit>(
          create: (_) => HomePageLayoutCubit(),
        ),
      ],
      child: BlocBuilder<HomePageLayoutCubit, HomePageLayoutState>(
        builder: (BuildContext context, HomePageLayoutState state) {
          final HomePageLayoutCubit cubit = context.read<HomePageLayoutCubit>();
          return AnnotatedRegion<SystemUiOverlayStyle>(
            value: AppSystemUiOverlayStyles.darkStatusBarIconsStyle.copyWith(
              statusBarColor: AppColors.transparent,
              systemNavigationBarColor: AppColors.primaryWhite,
            ),
            child: MultiBlocProvider(
              providers: <BlocProvider<dynamic>>[
                // BlocProvider<BookingListCubit>(
                //   create: (_) => BookingListCubit(),
                // ),
                BlocProvider<GetNotificationsCubit>(
                  create: (BuildContext context) => GetNotificationsCubit(),
                ),
              ],
              child: Scaffold(
                backgroundColor: Theme.of(context).colorScheme.onSurfaceVariant,
                body: cubit.screens[state.index ?? 0].screen,
                // LazyLoadIndexedStack(
                //   index: state.index!,
                //   children: cubit.screens.map((BottomNavBarEntity e) => e.screen).toList(),
                // ),
                bottomNavigationBar: Container(
                  width: 393.w,
                  // height: 56.h,
                  clipBehavior: Clip.antiAlias,
                  padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: MediaQuery.of(context).viewPadding.bottom / 2),
                  decoration: ShapeDecoration(
                    color: Theme.of(context).colorScheme.secondaryContainer,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12.r),
                        topRight: Radius.circular(12.r),
                      ),
                    ),
                    shadows: const <BoxShadow>[
                      BoxShadow(
                        color: Color(0x0F000000),
                        blurRadius: 8,
                        offset: Offset(0, 4),
                      ),
                      BoxShadow(
                        color: Color(0x0A000000),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: Row(
                    children: <Widget>[
                      BuildNavBarItem(
                        index: 0,
                        selectedSvgPath: MyAssets.icons.dashboardIcon.path,
                        currentIndex: state.index!,
                        onTap: () => cubit.changeTapIndex(index: 0),
                        label: LocaleKeys.dashboard.tr(),
                      ),
                      SizedBox(
                        width: 6.w,
                      ),
                      BuildNavBarItem(
                        index: 1,
                        selectedSvgPath: MyAssets.icons.bookingIcon.path,
                        currentIndex: state.index!,
                        onTap: () => cubit.changeTapIndex(index: 1),
                        label: LocaleKeys.bookings.tr(),
                      ),
                      SizedBox(
                        width: 6.w,
                      ),
                      BuildNavBarItem(
                        index: 2,
                        selectedSvgPath: MyAssets.icons.notificationsIcon.path,
                        currentIndex: state.index!,
                        onTap: () => cubit.changeTapIndex(index: 2),
                        label: LocaleKeys.notifications.tr(),
                      ),
                      SizedBox(
                        width: 6.w,
                      ),
                      BuildNavBarItem(
                        index: 3,
                        selectedSvgPath: MyAssets.icons.notificationsIcon.path,
                        currentIndex: state.index!,
                        onTap: () => cubit.changeTapIndex(index: 3),
                        label: LocaleKeys.profile.tr(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
