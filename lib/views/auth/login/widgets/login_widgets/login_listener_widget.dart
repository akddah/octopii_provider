import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:octopii_provier_app/core/common_widgets/toast_manager.dart';
import 'package:octopii_provier_app/core/extensions/navigation.dart';
import 'package:octopii_provier_app/core/navigation/route_names.dart';
import 'package:octopii_provier_app/gen/locale_keys.g.dart';
import 'package:octopii_provier_app/views/auth/login/cubits/login_cubit/login_cubit.dart';

class LoginListenerWidget extends StatelessWidget {
  const LoginListenerWidget({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (BuildContext context, LoginState state) {
        if (state.isLoaded) {
          context.pushNamedAndRemoveUntil(
            RouteNames.mainLayout,
            predicate: (Route<dynamic> route) => false,
          );
          ToastManager().success(
            context: context,
            message: LocaleKeys.loginSuccess.tr(),
            description: '${LocaleKeys.loginSuccessWelcomeMessage.tr()} ${state.responseModel?.user.name}',
          );
        } else if (state.isError) {
          ToastManager().error(
            context: context,
            message: LocaleKeys.loginError.tr(),
            description: state.errorMsg ?? LocaleKeys.loginErrorDescription.tr(),
          );
        }
      },
      child: child,
    );
  }
}
