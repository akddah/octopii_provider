import 'dart:io' show Platform;

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octopii_provier_app/core/common_widgets/custom_loading_button.dart';
import 'package:octopii_provier_app/core/extensions/navigation.dart';
import 'package:octopii_provier_app/core/navigation/route_names.dart';
import 'package:octopii_provier_app/core/utils/utils/app_logger.dart';
import 'package:octopii_provier_app/gen/locale_keys.g.dart';
import 'package:octopii_provier_app/models/login/login_request_model.dart';
import 'package:octopii_provier_app/views/auth/country_list/cubits/get_country_list_cubit/get_country_list_cubit.dart';
import 'package:octopii_provier_app/views/auth/login/cubits/login_cubit/login_cubit.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        BlocBuilder<LoginCubit, LoginState>(
          builder: (BuildContext context, LoginState state) {
            final LoginCubit loginCubit = context.read<LoginCubit>();
            AppLogger().info(
              'The Selected Country Code Is ${context.read<GetCountryListCubit>().state.countryData?.id ?? ''}',
            );
            return UnconstrainedBox(
              child: CustomLoadingButton<LoginCubit, LoginState>(
                loadingState: const LoginState(
                  states: LoginStates.loading,
                ),
                cubit: loginCubit,
                onTap: () => loginCubit.loginUser(
                  requestModel: GenericLoginRequestModel(
                    phone: loginCubit.phoneNumberController.text,
                    countryId: context.read<GetCountryListCubit>().state.countryData!.id,
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
