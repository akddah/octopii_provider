import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/common_widgets/toast_manager.dart';
import '../../../../../core/extensions/navigation.dart';
import '../../../../../core/navigation/route_names.dart';
import '../../../../../gen/locale_keys.g.dart';
import '../../cubits/request_otp_cubit/request_otp_cubit.dart';

class RequestOptListenerWidget extends StatelessWidget {
  const RequestOptListenerWidget({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocListener<RequestOtpCubit, RequestOtpStates>(
      listener: (BuildContext context, RequestOtpStates state) {
        if (state.isLoaded) {
          context.push(
            RouteNames.otp,
            arguments: <String, Object>{
              'phoneNumber': context.read<RequestOtpCubit>().phoneNumberController.text,
              'countryCode': 1,
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
