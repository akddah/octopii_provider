import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:octopii_provier_app/core/common_widgets/toast_manager.dart';
import 'package:octopii_provier_app/core/extensions/navigation.dart';
import 'package:octopii_provier_app/core/navigation/route_names.dart';
import 'package:octopii_provier_app/gen/locale_keys.g.dart';
import 'package:octopii_provier_app/views/auth/country_list/cubits/get_country_list_cubit/get_country_list_cubit.dart';
import 'package:octopii_provier_app/views/auth/forgot_password/cubits/request_otp_cubit/request_otp_cubit.dart';

class RequestOptListenerWidget extends StatelessWidget {
  const RequestOptListenerWidget({
    required this.child,
    required this.mobileNumber,
    super.key,
  });

  final Widget child;
  final String mobileNumber;

  @override
  Widget build(BuildContext context) {
    return BlocListener<RequestOtpCubit, RequestOtpStates>(
      listener: (BuildContext context, RequestOtpStates state) {
        if (state.isLoaded) {
          context.push(
            RouteNames.otp,
            arguments: <String, Object>{
              'phoneNumber': mobileNumber,
              'countryCode': context.read<GetCountryListCubit>().state.countryData!.id,
            },
          );
        } else if (state.isError) {
          ToastManager().error(
            context: context,
            message: state.errorMsg ?? LocaleKeys.errorMessage.tr(),
            description: LocaleKeys.errorDescription.tr(),
          );
        }
      },
      child: child,
    );
  }
}
