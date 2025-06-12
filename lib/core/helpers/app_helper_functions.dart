import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

import '../const/database_constants.dart';
import '../di/di.dart';
import '../extensions/navigation.dart';
import '../navigation/app_router.dart';
import '../navigation/route_names.dart';
import '../utils/utils/app_logger.dart';
import 'shared_pref_helper.dart';

/// A utility class that provides helper functions for common tasks
/// such as routing, transitions, and checking user states from local storage.
class AppHelperFunctions {
  // Singleton Instance of AppHelperFunctions
  static final AppHelperFunctions _instance = AppHelperFunctions._internal();

  // Factory constructor to provide the singleton instance
  factory AppHelperFunctions() => _instance;

  // Private constructor to initialize singleton instance
  AppHelperFunctions._internal();

  /// A set of helper functions to create custom page transitions in Flutter.

  /// Creates a slide transition from bottom to top for a given page.
  ///
  /// This method wraps a page with a transition where the page slides in
  /// from the bottom of the screen to its final position.
  /// Typically used for modal-like or upward navigation transitions.
  ///
  /// Example:
  /// ```dart
  /// Navigator.of(context).push(slideFromBottomToTopTransition(page: MyPage()));
  /// ```
  PageRouteBuilder<dynamic> slideFromBottomToTopTransition({
    required Widget page,
  }) {
    return PageRouteBuilder<dynamic>(
      pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
      ) =>
          page,
      transitionsBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
      ) {
        const Offset begin = Offset(0, 1); // Slide in from bottom
        const Offset end = Offset.zero; // End at the original position
        const Cubic curve = Curves.easeOutQuint; // Easing curve
        final Animatable<Offset> tween = Tween<Offset>(begin: begin, end: end).chain(CurveTween(curve: curve));
        return SlideTransition(position: animation.drive(tween), child: child);
      },
    );
  }

  /// Creates a fade transition for a given page.
  ///
  /// This method wraps a page with a fade-in effect.
  /// It can be used for smooth transitions where the page appears gradually.
  ///
  /// Example:
  /// ```dart
  /// Navigator.of(context).push(fadeTransition(page: MyPage()));
  /// ```
  PageRouteBuilder<dynamic> fadeTransition({
    required Widget page,
  }) {
    return PageRouteBuilder<dynamic>(
      pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
      ) =>
          page,
      transitionsBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
      ) {
        return FadeTransition(opacity: animation, child: child);
      },
    );
  }

  /// Creates a slide transition from right to left for a given page.
  ///
  /// This method wraps a page with a transition where the page slides
  /// in from the right side of the screen.
  /// Useful for typical navigation transitions where the new page comes in from the right.
  ///
  /// Example:
  /// ```dart
  /// Navigator.of(context).push(slideFromRightTransition(page: MyPage()));
  /// ```
  PageRouteBuilder<dynamic> slideFromRightTransition({
    required Widget page,
  }) {
    return PageRouteBuilder<dynamic>(
      pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
      ) =>
          page,
      transitionsBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
      ) {
        const Offset begin = Offset(1, 0); // Slide in from right
        const Offset end = Offset.zero; // End at the original position
        const Cubic curve = Curves.easeOutQuint; // Easing curve
        final Animatable<Offset> tween = Tween<Offset>(begin: begin, end: end).chain(CurveTween(curve: curve));
        return SlideTransition(position: animation.drive(tween), child: child);
      },
    );
  }

  /// Creates a slide transition from top to bottom for a given page.
  ///
  /// This method wraps a page with a transition where the page slides
  /// in from the top of the screen to its final position.
  /// Typically used for downward navigation or dismiss-like transitions.
  ///
  /// Example:
  /// ```dart
  /// Navigator.of(context).push(slideFromTopToBottomTransition(page: MyPage()));
  /// ```
  PageRouteBuilder<dynamic> slideFromTopToBottomTransition({
    required Widget page,
  }) {
    return PageRouteBuilder<dynamic>(
      pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
      ) =>
          page,
      transitionsBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
      ) {
        const Offset begin = Offset(0, -1); // Slide in from top
        const Offset end = Offset.zero; // End at the original position
        const Cubic curve = Curves.easeOutQuint; // Easing curve
        final Animatable<Offset> tween = Tween<Offset>(begin: begin, end: end).chain(CurveTween(curve: curve));
        return SlideTransition(position: animation.drive(tween), child: child);
      },
    );
  }

  /// Checks cached keys in local storage to determine which screen to navigate to.
  ///
  /// This method retrieves the authentication token and onboarding state
  /// from local storage and navigates the user to the appropriate screen.
  /// It returns the route name depending on whether the user is logged in
  /// or needs to complete onboarding.
  Future<void> checkCachedKeysAndNavigate() async {
    try {
      final String? token = await SharedPrefHelper().getSecuredToken(DatabaseConstants.tokenKey);
      final bool? hasDoneOnboarding = sl<SharedPreferences>().getBool(
        DatabaseConstants.onboardingKey,
      );
      AppLogger().info('User Token: $token');
      AppLogger().info('Has Completed Onboarding: $hasDoneOnboarding');

      if (hasDoneOnboarding != null && hasDoneOnboarding == true) {
        if (token != null && token.isNotEmpty) {
          await navigatorKey.currentContext!.pushNamedAndRemoveUntil(
            RouteNames.mainLayout,
            predicate: (Route<dynamic> route) => false,
          );
        } else {
          await navigatorKey.currentContext!.pushNamedAndRemoveUntil(
            RouteNames.login,
            predicate: (Route<dynamic> route) => false,
          );
        }
      } else {
        await navigatorKey.currentContext!.pushNamedAndRemoveUntil(
          RouteNames.onboarding,
          predicate: (Route<dynamic> route) => false,
        );
      }
    } catch (e) {
      AppLogger().error('Error while checking cached keys: $e');
      await navigatorKey.currentContext!.pushNamedAndRemoveUntil(
        RouteNames.onboarding,
        predicate: (Route<dynamic> route) => false,
      );
    }
  }

  String formatDate(DateTime dateTime) {
    final String formattedDate = DateFormat('d MMM y').format(dateTime);
    return formattedDate;
  }

  String formatDateTime(DateTime dateTime) {
    final time = dateTime.toLocal();
    final String formattedDate = DateFormat('d MMM y').format(time);
    final String formattedTime = DateFormat('hh:mm a').format(time);
    return '$formattedDate - $formattedTime';
  }

  /// Hides the on-screen keyboard if it is currently visible.
  ///
  /// This method uses the Flutter [FocusManager] to remove the current focus
  /// from any widget that is receiving user input, effectively dismissing
  /// the on-screen keyboard.
  ///
  /// Usage:
  /// ```dart
  /// hideKeyboard();
  /// ```
  ///
  /// Typical use cases include:
  /// - Dismissing the keyboard when tapping outside of a text field.
  /// - Closing the keyboard after form submission.
  ///
  /// Notes:
  /// - If no widget has focus or the keyboard is not visible, calling this
  ///   method will have no effect.
  void hideKeyboard() {
    FocusManager.instance.primaryFocus?.unfocus();
  }

  /// Helper function to open a phone call with a dynamic phone number.
  Future<void> makePhoneCall(String phoneNumber) async {
    final Uri phoneUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );

    if (await canLaunchUrl(phoneUri)) {
      await launchUrl(phoneUri);
    } else {
      throw Exception('Could not launch phone call to $phoneNumber');
    }
  }

  /// Helper function to open Google Maps with dynamic latitude and longitude.
  Future<void> openMaps(double latitude, double longitude) async {
    final String googleMapsUrl = 'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';

    final Uri mapsUri = Uri.parse(googleMapsUrl);

    if (await canLaunchUrl(mapsUri)) {
      await launchUrl(mapsUri);
    } else {
      throw Exception(
        'Could not launch Google Maps for coordinates ($latitude, $longitude)',
      );
    }
  }

  String? formatTime(num? time) {
    if (time == null) return null;

    // ignore: parameter_assignments
    if (time == 24) time = 0;

    final int hours = time.toInt() % 24; // Extract integer hours
    final int minutes = ((time - hours) * 60).round(); // Calculate minutes
    final String period = hours < 12 ? 'AM' : 'PM';
    final int formattedHour = hours == 0 ? 12 : (hours > 12 ? hours - 12 : hours);

    return '$formattedHour:${minutes.toString().padLeft(2, '0')} $period';
  }

  String formatHolidayDate(DateTime date) {
    return DateFormat('yyyy-M-d').format(date);
  }

  // Future<void> clearDataFromMemoryAndLogout({
  //   required BuildContext context,
  // }) async {
  //   await SharedPrefHelper().deleteUser();
  //   await SharedPrefHelper().clearAllSecuredData();
  //   if (context.mounted) {
  //     // sl.resetLazySingleton<UserProfileCubit>();
  //     context.read<UserProfileCubit>().resetCubit();
  //     context.read<GetNotificationsCubit>().resetCubit();
  //     context.read<ListHolidaysCubit>().resetCubit();
  //     context.read<HomePageLayoutCubit>().resetNavigation();
  //     await context.pushNamedAndRemoveUntil(
  //       RouteNames.login,
  //       predicate: (Route<dynamic> route) => false,
  //     );
  //   }
  // }

  /// Function to convert to "11 March 2024"
  String formatDateToDayMonthYear(DateTime dateTime) {
    return '${dateTime.day} ${_monthName(dateTime.month)} ${dateTime.year}';
  }

  /// Function to convert to "March 2024"
  String formatDateToMonthYear(DateTime dateTime) {
    return '${_monthName(dateTime.month)} ${dateTime.year}';
  }

  /// Formats a [DateTime] object into a string representation with a specific format.
  ///
  /// The formatted string follows the pattern: "dd Month yyyy - hh:mmAM/PM".
  ///
  /// Example:
  /// ```dart
  /// DateTime now = DateTime(2025, 1, 21, 14, 30);
  /// String formatted = formatDateTimeWithTime(now);
  /// print(formatted); // Output: "21 January 2025 - 2:30PM"
  /// ```
  ///
  /// - If the hour is greater than 12, it is converted to a 12-hour format.
  /// - The minutes are zero-padded.
  /// - The time period (AM/PM) is appended based on the hour.
  ///
  /// [dateTime]: The input [DateTime] to format.
  ///
  /// Returns the formatted date-time string.
  String formatDateTimeWithTime(DateTime dateTime) {
    final String day = dateTime.day.toString().padLeft(2, '0');
    final String month = _monthName(dateTime.month);
    final String year = dateTime.year.toString();
    final String hour = dateTime.hour > 12 ? (dateTime.hour - 12).toString() : dateTime.hour.toString();
    final String minute = dateTime.minute.toString().padLeft(2, '0');
    final String period = dateTime.hour < 12 ? 'AM' : 'PM';

    final String formattedDate = '$day $month $year - $hour:$minute$period';
    return formattedDate;
  }

  /// Helper function to get the name of a month based on its numeric index.
  ///
  /// The month index should be in the range [1, 12], where 1 corresponds to
  /// January and 12 corresponds to December.
  ///
  /// Example:
  /// ```dart
  /// String monthName = _monthName(1);
  /// print(monthName); // Output: "January"
  /// ```
  ///
  /// [month]: The numeric index of the month (1-based).
  ///
  /// Returns the name of the month as a string.
  String _monthName(int month) {
    const List<String> months = <String>[
      'January',
      'February',
      'March',
      'April',
      'May',
      'June',
      'July',
      'August',
      'September',
      'October',
      'November',
      'December',
    ];
    return months[month - 1];
  }

  /// Displays a time picker dialog to allow the user to select a time, and updates
  /// the provided [WorkingDay] object with the selected time.
  ///
  /// The time picker uses a dial-only mode for input, and the updated `WorkingDay`
  /// object reflects the selected time depending on whether the `isShorFromFieldOnly`
  /// parameter is true or false.
  ///
  /// Example:
  /// ```dart
  /// WorkingDay? updatedDay = await pickTime(
  ///   isShorFromFieldOnly: true,
  ///   workingDaysData: currentWorkingDay,
  /// );
  /// if (updatedDay != null) {
  ///   // Handle the updated working day
  /// }
  /// ```
  ///
  /// - If `isShorFromFieldOnly` is `true`, the "from" time of the `WorkingDay`
  ///   is updated.
  /// - If `isShorFromFieldOnly` is `false`, the "to" time of the `WorkingDay`
  ///   is updated.
  ///
  /// [isShorFromFieldOnly]: Whether the picker is for the "from" field only.
  /// [workingDaysData]: The current `WorkingDay` object to update.
  ///
  /// Returns the updated `WorkingDay` object if a time was selected, or `null`
  /// if the picker was cancelled.
  // Future<WorkingDay?> pickTime({
  //   required bool isShorFromFieldOnly,
  //   required WorkingDay workingDaysData,
  // }) async {
  //   final TimeOfDay? picked = await showTimePicker(
  //     initialEntryMode: TimePickerEntryMode.dialOnly,
  //     context: navigatorKey.currentContext!,
  //     initialTime: TimeOfDay.now(),
  //   );
  //   if (picked != null) {
  //     final double timeIn24HourFormat = picked.hour + (picked.minute / 60);
  //     final WorkingDay updatedDay = workingDaysData.copyWith(
  //       off: false,
  //       from: isShorFromFieldOnly ? timeIn24HourFormat : workingDaysData.from,
  //       to: isShorFromFieldOnly ? workingDaysData.to : timeIn24HourFormat,
  //     );
  //     if (navigatorKey.currentContext!.mounted) {
  //       AppLogger().info(
  //         'Selected Time (24-hour): $timeIn24HourFormat | Display Time: ${picked.format(navigatorKey.currentContext!)}',
  //       );
  //       return updatedDay;
  //     }
  //   }
  //   return null;
  // }
}
