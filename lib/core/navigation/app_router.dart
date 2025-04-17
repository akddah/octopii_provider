import 'package:flutter/material.dart';
import 'package:octopii_provier_app/core/helpers/app_helper_functions.dart';
import 'package:octopii_provier_app/core/navigation/route_names.dart';
import 'package:octopii_provier_app/views/auth/forgot_password/screens/add_new_password_screen.dart';
import 'package:octopii_provier_app/views/auth/forgot_password/screens/forgot_password_screen.dart';
import 'package:octopii_provier_app/views/auth/forgot_password/screens/otp_screen.dart';
import 'package:octopii_provier_app/views/auth/login/screens/login_screen.dart';
import 'package:octopii_provier_app/views/booking_details/screens/booking_details_screen.dart';
import 'package:octopii_provier_app/views/holidays/screens/add_holidays_screen.dart';
import 'package:octopii_provier_app/views/layout/view/layout_view.dart';
import 'package:octopii_provier_app/views/manage_working_days/screens/manage_working_days_screen.dart';
import 'package:octopii_provier_app/views/onboarding/screens/onboarding_screen.dart';
import 'package:octopii_provier_app/views/splash/screens/splash_screen.dart';
import 'package:octopii_provier_app/views/transactions/screens/transactions_screen.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
final RouteObserver<PageRoute<dynamic>> routeObserver =
    RouteObserver<PageRoute<dynamic>>();

class AppRoutes {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.splash:
        return MaterialPageRoute<dynamic>(builder: (_) => const SplashScreen());
      case RouteNames.mainLayout:
        return AppHelperFunctions().fadeTransition(
          page: const LayoutView(),
        );
      case RouteNames.onboarding:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const OnboardingScreen(),
        );
      case RouteNames.login:
        return MaterialPageRoute<dynamic>(builder: (_) => const LoginScreen());
      case RouteNames.manageWorkingDays:
        return AppHelperFunctions().fadeTransition(
          page: const ManageWorkingDaysScreen(),
        );
      case RouteNames.forgotPassword:
        return AppHelperFunctions().fadeTransition(
          page: const ForgotPasswordScreen(),
        );
      case RouteNames.otp:
        final Map<String, dynamic> args =
            settings.arguments! as Map<String, dynamic>;
        final String phoneNumber = args['phoneNumber'] as String;
        final int countryCode = args['countryCode'] as int;
        return AppHelperFunctions().fadeTransition(
          page: OtpScreen(
            phoneNumber: phoneNumber,
            countryCode:countryCode ,
          ),
        );
      case RouteNames.addNewPassword:
          final Map<String, dynamic> args =
            settings.arguments! as Map<String, dynamic>;
        final int countryCode = args['countryCode'] as int? ?? 1;
        return AppHelperFunctions().fadeTransition(
          page:  AddNewPasswordScreen(countryCode: countryCode),
        );
      case RouteNames.bookingDetails:
        final Map<String, dynamic> args =
            settings.arguments! as Map<String, dynamic>;
        final int bookId = args['bookId'] as int;
        final String customerName = args['customerName'] as String? ?? '';

        return AppHelperFunctions().fadeTransition(
          page: BookingDetailsScreen(
            bookId: bookId,
            customerName: customerName,
          ),
        );
      case RouteNames.transactions:
        return AppHelperFunctions().fadeTransition(
          page: const TransactionsScreen(),
        );
      case RouteNames.addHolidays:
        return AppHelperFunctions().fadeTransition(
          page: const AddHolidaysScreen(),
        );
      default:
        return MaterialPageRoute<dynamic>(builder: (_) => const SplashScreen());
    }
  }
}
