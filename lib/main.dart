import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'app/octopii_provier_app.dart';
import 'app_init.dart';
import 'core/utils/utils/app_logger.dart';

// final String domain = kDebugMode ? 'mrreda' : '';
// final String phone = kDebugMode ? '01009828555' : '';
// final String password = kDebugMode ? 'Aa123123@' : '';
//
final String domain = kDebugMode ? 'reda-new' : '';
final String phone = kDebugMode ? '01117246896' : '';
final String password = kDebugMode ? '123456' : '';
//
// final String domain = kDebugMode ? 'top-wash' : '';
// final String phone = kDebugMode ? '01211000358' : '';
// final String password = kDebugMode ? '123456' : '';
// final String domain = kDebugMode ? 'alsalam-care' : '';
// final String phone = kDebugMode ? '01012416781' : '';
// final String password = kDebugMode ? '123456Aa@' : '';
// final String domain = kDebugMode ? 'domestica' : '';
// final String phone = kDebugMode ? '01033825767' : '';
// final String password = kDebugMode ? '123456Aa@' : '';
// final String domain = kDebugMode ? 'domestica' : '';
// final String phone = kDebugMode ? '01091229771' : '';
// final String password = kDebugMode ? '123456' : '';
// final String domain = kDebugMode ? 'top-wash' : '';
// final String phone = kDebugMode ? '01020155238' : '';
// final String password = kDebugMode ? '123456' : '';

Future<void> main() async {
  await runZonedGuarded(() async {
    await AppInit().beforeAppInit();

    runApp(
      EasyLocalization(
        supportedLocales: const <Locale>[Locale('en', 'US'), Locale('ar', "EG")],
        path: 'assets/translations',
        fallbackLocale: const Locale('en', "US"),
        startLocale: const Locale('en', "US"),
        saveLocale: true,
        child: const MyApp(),
      ),
    );
  }, (Object error, StackTrace stack) {
    AppLogger().error('Unhandled platform error: $error\n$stack');
  });
}
