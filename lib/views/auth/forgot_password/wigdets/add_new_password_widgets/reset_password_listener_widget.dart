import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:octopii_provier_app/core/common_widgets/toast_manager.dart';
import 'package:octopii_provier_app/core/extensions/navigation.dart';
import 'package:octopii_provier_app/core/navigation/route_names.dart';
import 'package:octopii_provier_app/gen/locale_keys.g.dart';
import 'package:octopii_provier_app/views/auth/forgot_password/cubits/reset_password_cubit/reset_password_cubit.dart';

class ResetPasswordListenerWidget extends StatelessWidget {
  const ResetPasswordListenerWidget({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocListener<ResetPasswordCubit, ResetPasswordState>(
      listener: (BuildContext context, ResetPasswordState state) {
        if (state.isLoaded) {
          ToastManager().success(
            context: context,
            message: state.successMsg ??
                LocaleKeys.changePasswordSuccessMessage.tr(),
            description: LocaleKeys.changePasswordSuccessDescription.tr(),
          );
          context.pushNamedAndRemoveUntil(
            RouteNames.login,
            predicate: (Route<dynamic> route) => false,
          );
        } else if (state.isError) {
          ToastManager().error(
            context: context,
            message:
                state.errorMsg ?? LocaleKeys.changePasswordErrorMessage.tr(),
            description: LocaleKeys.changePasswordErrorDescription.tr(),
          );
        }
      },
      child: child,
    );
  }
}
