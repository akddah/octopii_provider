import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octopii_provier_app/core/extensions/widgets_extensions.dart';
import 'package:octopii_provier_app/entities/bottom_nav_bar_entity.dart';
import 'package:octopii_provier_app/gen/assets.gen.dart';
import 'package:octopii_provier_app/gen/locale_keys.g.dart';
import 'package:octopii_provier_app/views/booking/screens/booking_screen.dart';
import 'package:octopii_provier_app/views/dashboard/screens/dashboard_screen.dart';
import 'package:octopii_provier_app/views/notifications/screens/notifications_screen.dart';
import 'package:octopii_provier_app/views/profile/screens/profile_screen.dart';

part 'home_page_layout_state.dart';

class HomePageLayoutCubit extends Cubit<HomePageLayoutState> {
  HomePageLayoutCubit()
      : currentIndex = 0,
        super(const HomePageLayoutState(states: HomePageLayoutStates.initial));

  int currentIndex;

  List<BottomNavBarEntity> get screens {
    return <BottomNavBarEntity>[
      BottomNavBarEntity(
        icon: MyAssets.icons.dashboardIcon.svg().paddingBottom(5.h),
        label: LocaleKeys.dashboard.tr(),
        screen: const DashboardScreen(),
      ),
      BottomNavBarEntity(
        icon: MyAssets.icons.bookingIcon.svg().paddingBottom(5.h),
        label: LocaleKeys.bookings.tr(),
        screen: const BookingScreen(),
      ),
      BottomNavBarEntity(
        icon: MyAssets.icons.notificationsIcon.svg().paddingBottom(5.h),
        label: LocaleKeys.notifications.tr(),
        screen: const NotificationsScreen(),
      ),
      BottomNavBarEntity(
        icon: MyAssets.icons.notificationsIcon.svg().paddingBottom(5.h),
        label: LocaleKeys.profile.tr(),
        screen: const ProfileScreen(),
      ),
    ];
  }

  void changeTapIndex({required int index}) {
    currentIndex = index;
    emit(
      state.copyWith(
        states: HomePageLayoutStates.changeTapIndex,
        index: index,
      ),
    );
  }

  void resetNavigation() {
    currentIndex = 0;
    emit(
      state.copyWith(
        states: HomePageLayoutStates.initial,
        index: 0,
      ),
    );
  }
}
