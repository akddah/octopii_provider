import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/common_widgets/custom_loading_button.dart';
import '../../../../../core/common_widgets/custom_text_form_field.dart';
import '../../../../../core/const/const_strings.dart';
import '../../../../../core/extensions/widgets_extensions.dart';
import '../../../../../core/helpers/enums.dart';
import '../../../../../core/theme/app_colors.dart';
import '../../../../../core/utils/utils/app_logger.dart';
import '../../../../../gen/locale_keys.g.dart';
import '../../../../../models/login/login_request_model.dart';
import '../../../country_list/widgets/country_list_widgets/country_view.dart';
import '../../cubits/request_otp_cubit/request_otp_cubit.dart';
import 'request_opt_listener_widget.dart';

class ForgotPasswordBody extends HookWidget {
  const ForgotPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<bool> isValidPhoneNumber = useState(false);
    //  TextEditingController ge phoneNumberController => context.read<RequestOtpCubit>().;
    final phone = context.read<RequestOtpCubit>().phoneNumberController;
    AppLogger().info('The Sending Mobile Number Is ${phone.text}');
    bool formIsNotEmpty() {
      return isValidPhoneNumber.value = phone.text.trim().isNotEmpty;
    }

    useEffect(
      () {
        phone.addListener(formIsNotEmpty);
        return () {
          phone.removeListener(formIsNotEmpty);
        };
      },
      <Object?>[phone],
    );

    return RequestOptListenerWidget(
      // mobileNumber: phone.text,
      child: ListView(
        padding: const EdgeInsets.all(20),
        children: <Widget>[
          Hero(
            tag: AppStrings.otpTag,
            child: Text(
              LocaleKeys.resetPassword.tr(),
              style: Theme.of(context).textTheme.displayLarge?.copyWith(color: Theme.of(context).colorScheme.scrim),
            ).wrapCenter(),
          ),
          SizedBox(
            height: 18.h,
          ),
          Text(
            LocaleKeys.enterYourPhoneNumber.tr(),
            style: Theme.of(context).textTheme.displaySmall,
          ).wrapCenter(),
          SizedBox(
            height: 24.h,
          ),
          Stack(
            children: <Widget>[
              CustomTextFormField(
                keyboardType: TextInputType.phone,
                textEditingController: phone,
                hintText: LocaleKeys.mobileNumber.tr(),
                contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
                prefixIcon: const CountryView().paddingHorizontal(10.w),
              ),
              PositionedDirectional(
                start: -200.w,
                top: 0,
                end: 0,
                bottom: 0,
                child: const VerticalDivider(
                  color: AppColors.grey100,
                  endIndent: 5,
                  indent: 10,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 24.h,
          ),
          CustomLoadingButton<RequestOtpCubit, RequestOtpStates>(
            loadingState: const RequestOtpStates(status: GenericStateStatus.loading),
            cubit: context.read<RequestOtpCubit>(),
            isClickable: isValidPhoneNumber.value,
            onTap: () => context.read<RequestOtpCubit>().requestOtp(
                  requestModel: GenericLoginRequestModel(
                    phone: phone.text,
                    password: null,
                    otp: null,
                    countryId: 1,
                  ),
                ),
            text: LocaleKeys.continueKey.tr(),
          ),
        ],
      ),
    );
  }
}
