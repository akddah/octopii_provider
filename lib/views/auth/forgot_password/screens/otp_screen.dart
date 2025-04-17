import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octopii_provier_app/core/common_widgets/application_app_bar_back_button.dart';
import 'package:octopii_provier_app/core/theme/app_colors.dart';
import 'package:octopii_provier_app/core/theme/app_system_ui_overlay_styles.dart';
import 'package:octopii_provier_app/core/utils/utils/app_logger.dart';
import 'package:octopii_provier_app/views/auth/forgot_password/cubits/request_otp_cubit/request_otp_cubit.dart';
import 'package:octopii_provier_app/views/auth/forgot_password/cubits/verify_otp_cubit/verify_otp_cubit.dart';
import 'package:octopii_provier_app/views/auth/forgot_password/wigdets/otp_widgets/index.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({
    required this.phoneNumber,
    required this.countryCode,
    super.key,
  });

  final String phoneNumber;
  final int countryCode;

  @override
  Widget build(BuildContext context) {
    AppLogger().info('The Retrieve Mobile Number Is $phoneNumber');

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: AppSystemUiOverlayStyles.darkStatusBarIconsStyle.copyWith(
        statusBarColor: AppColors.primaryWhite,
        systemNavigationBarColor: AppColors.primaryWhite,
      ),
      child: MultiBlocProvider(
        providers: <BlocProvider<dynamic>>[
          BlocProvider<RequestOtpCubit>(
            create: (BuildContext context) => RequestOtpCubit(),
          ),
          BlocProvider<VerifyOtpCubit>(
            create: (BuildContext context) => VerifyOtpCubit(),
          ),
        ],
        child: Scaffold(
          appBar: ApplicationAppBarBackButton(
            containerBackgroundColor:
                Theme.of(context).colorScheme.outlineVariant,
            backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
            height: 80.h,
          ),
          body: OtpBody(
            phoneNumber: phoneNumber,
            countryCode: countryCode,
          ),
        ),
      ),
    );
  }
}
