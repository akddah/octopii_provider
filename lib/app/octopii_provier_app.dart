import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../core/const/const_strings.dart';
import '../core/navigation/app_router.dart';
import '../core/navigation/route_names.dart';
import '../core/theme/app_theme.dart';
import '../core/theme/app_theme_data.dart';
import '../gen/locale_keys.g.dart';
import '../views/holidays/cubits/list_holidays_cubit/list_holidays_cubit.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, Widget? child) => MultiBlocProvider(
        providers: <BlocProvider<dynamic>>[
          // BlocProvider<HomePageLayoutCubit>(
          //   create: (_) => HomePageLayoutCubit(),
          // ),
          // BlocProvider<UpcomingAppointmentsBookingCubit>(
          //   create: (_) => UpcomingAppointmentsBookingCubit(),
          // ),
          // BlocProvider<UserProfileCubit>(
          //   create: (BuildContext context) => UserProfileCubit(),
          // ),
          BlocProvider<ListHolidaysCubit>(
            create: (BuildContext context) => ListHolidaysCubit(),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: AppStrings.applicationName,
          theme: AppTheme.light.themeData(),
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          initialRoute: RouteNames.splash,
          onGenerateRoute: AppRoutes.onGenerateRoute,
          navigatorKey: navigatorKey,
          navigatorObservers: <NavigatorObserver>[routeObserver],
          builder: (BuildContext context, Widget? child) {
            return RefreshConfiguration(
              headerBuilder: () {
                return ClassicHeader(
                  idleText: LocaleKeys.pullToRefreshIdleText.tr(),
                  releaseText: LocaleKeys.pullToRefreshReleaseText.tr(),
                  refreshingText: LocaleKeys.pullToRefreshRefreshingText.tr(),
                  completeText: LocaleKeys.pullToRefreshCompleteText.tr(),
                  failedText: LocaleKeys.pullToRefreshFailedText.tr(),
                );
              },
              child: child!,
            );
          },
        ),
      ),
    );
  }
}
