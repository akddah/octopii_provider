import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octopii_provier_app/core/di/di.dart';
import 'package:octopii_provier_app/core/infrastructure/networking/local_notifications_service.dart';
import 'package:octopii_provier_app/core/utils/utils/bloc_observer.dart';
import 'package:octopii_provier_app/firebase_options.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppInit {
  static final AppInit _instance = AppInit._internal();

  factory AppInit() => _instance;

  AppInit._internal();

  Future<void> beforeAppInit() async {
    WidgetsFlutterBinding.ensureInitialized();
    await SystemChrome.setPreferredOrientations(
      <DeviceOrientation>[
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ],
    );

    await SharedPreferences.getInstance();

    await dotenv.load();
    await EasyLocalization.ensureInitialized();
    await SystemChrome.setPreferredOrientations(
      <DeviceOrientation>[DeviceOrientation.portraitUp],
    );

    await ScreenUtil.ensureScreenSize();
    await ServicesLocator().init();
    Bloc.observer = AppBlocObserver();
    HttpOverrides.global = MyHttpOverrides();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    ).then(
      (FirebaseApp v) => GlobalNotification().setUpFirebase(),
    );
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)..badCertificateCallback = (X509Certificate cert, String host, int port) => true;
  }
}
