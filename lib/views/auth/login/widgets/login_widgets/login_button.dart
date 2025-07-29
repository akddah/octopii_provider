import 'dart:io' show Platform;

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/common_widgets/custom_loading_button.dart';
import '../../../../../core/extensions/navigation.dart';
import '../../../../../core/navigation/route_names.dart';
import '../../../../../gen/locale_keys.g.dart';
import '../../../../../models/login/login_request_model.dart';
import '../../cubits/login_cubit/login_cubit.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        BlocBuilder<LoginCubit, LoginState>(
          builder: (BuildContext context, LoginState state) {
            final LoginCubit loginCubit = context.read<LoginCubit>();
            // AppLogger().info(
            //   'The Selected Country Code Is ${context.read<GetCountryListCubit>().state.countryData?.id ?? ''}',
            // );
            return UnconstrainedBox(
              child: CustomLoadingButton<LoginCubit, LoginState>(
                loadingState: const LoginState(
                  states: LoginStates.loading,
                ),
                cubit: loginCubit,
                onTap: () => loginCubit.loginUser(
                  requestModel: GenericLoginRequestModel(
                    phone: loginCubit.phoneNumberController.text,
                    countryId: 1,
                    password: loginCubit.passwordController.text,
                    otp: null,
                    deviceType: Platform.isIOS ? 'ios' : 'android',
                  ),
                ),
                text: LocaleKeys.logIn.tr(),
                // isClickable: state.isValidPassword,
              ),
            );
          },
        ),
        SizedBox(
          height: 20.h,
        ),
        GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () => context.push(
            RouteNames.forgotPassword,
          ),
          child: Text(
            LocaleKeys.forgotYourPassword.tr(),
            style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: Theme.of(context).colorScheme.primary,
                ),
          ),
        ),
      ],
    );
  }
}
