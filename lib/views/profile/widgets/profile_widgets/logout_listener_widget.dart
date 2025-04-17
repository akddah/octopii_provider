import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/common_widgets/toast_manager.dart';
import '../../../../core/di/di.dart';
import '../../../../core/extensions/navigation.dart';
import '../../../../core/navigation/route_names.dart';
import '../../../../gen/locale_keys.g.dart';
import '../../../holidays/cubits/list_holidays_cubit/list_holidays_cubit.dart';
import '../../../layout/cubit/home_page_layout_cubit.dart';
import '../../../notifications/cubits/get_notifications_cubit/get_notifications_cubit.dart';
import '../../cubits/get_user_profile_cubit/user_profile_cubit.dart';
import '../../cubits/logout_cubit/logout_cubit.dart';

class LogoutListenerWidget extends StatelessWidget {
  const LogoutListenerWidget({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocListener<LogoutCubit, LogoutState>(
      listener: (BuildContext context, LogoutState state) {
        if (state.isLoading) {
          showDialog<dynamic>(
            context: context,
            builder: (_) => Dialog(
              backgroundColor: Colors.transparent,
              child: Container(
                alignment: FractionalOffset.center,
                padding: const EdgeInsets.all(20),
                child: const CircularProgressIndicator.adaptive(),
              ),
            ),
          );
        } else if (state.isLoaded) {
          ToastManager().success(
            context: context,
            message: state.successMessage ?? LocaleKeys.logoutSuccessMessage.tr(),
            description: LocaleKeys.logoutDescription.tr(),
          );
          sl.resetLazySingleton<UserProfileCubit>();
          context.read<HomePageLayoutCubit>().resetNavigation();
          context.read<GetNotificationsCubit>().resetCubit();
          context.read<ListHolidaysCubit>().resetCubit();

          context.pushNamedAndRemoveUntil(
            RouteNames.login,
            predicate: (Route<dynamic> route) => false,
          );
        } else if (state.isError) {
          ToastManager().error(
            context: context,
            message: state.errorMsg ?? LocaleKeys.logoutErrorMessage.tr(),
            description: LocaleKeys.logoutErrorDescription.tr(),
          );
        }
      },
      child: child,
    );
  }
}
