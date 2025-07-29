import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:octopii_provier_app/core/navigation/app_router.dart';
import 'package:octopii_provier_app/core/theme/app_colors.dart';
import 'package:octopii_provier_app/core/theme/app_system_ui_overlay_styles.dart';
import 'package:octopii_provier_app/core/utils/utils/app_logger.dart';
import 'package:octopii_provier_app/views/auth/login/cubits/login_cubit/login_cubit.dart';
import 'package:octopii_provier_app/views/auth/login/widgets/login_widgets/index.dart';
import 'package:octopii_provier_app/views/auth/login/widgets/login_widgets/set_domain_sheet.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with RouteAware {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final ModalRoute<Object?>? route = ModalRoute.of(context);
    if (route is PageRoute) {
      routeObserver.subscribe(this, route);
    }
  }

  @override
  void dispose() {
    routeObserver.unsubscribe(this);
    super.dispose();
  }

  @override
  void didPush() {
    AppLogger().info('didPush Page2');
  }

  @override
  void didPopNext() {
    AppLogger().info('didPopNext Page2');
  }

  @override
  void initState() {
    SharedPreferences.getInstance().then((v) {
      showModalBottomSheet(
        context: context,
        isDismissible: false,
        enableDrag: false,
        isScrollControlled: true,
        builder: (context) => SetDomainSheet(),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: AppSystemUiOverlayStyles.darkStatusBarIconsStyle.copyWith(
        statusBarColor: AppColors.primaryWhite,
        systemNavigationBarColor: AppColors.primaryWhite,
      ),
      child: MultiBlocProvider(
        providers: <BlocProvider<dynamic>>[
          BlocProvider<LoginCubit>(
            create: (BuildContext context) => LoginCubit(),
          ),
          // BlocProvider<GetCountryListCubit>(
          //   create: (BuildContext context) => GetCountryListCubit()..getCountryList(),
          // ),
        ],
        child: const Scaffold(
          body: SafeArea(
            child: LoginBody(),
          ),
        ),
      ),
    );
  }
}
