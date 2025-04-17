import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octopii_provier_app/core/common_widgets/custom_loading_button.dart';
import 'package:octopii_provier_app/core/common_widgets/custom_text_form_field.dart';
import 'package:octopii_provier_app/core/const/const_strings.dart';
import 'package:octopii_provier_app/core/extensions/widgets_extensions.dart';
import 'package:octopii_provier_app/core/helpers/enums.dart';
import 'package:octopii_provier_app/core/theme/app_colors.dart';
import 'package:octopii_provier_app/core/utils/utils/app_logger.dart';
import 'package:octopii_provier_app/gen/locale_keys.g.dart';
import 'package:octopii_provier_app/models/login/login_request_model.dart';
import 'package:octopii_provier_app/views/auth/country_list/cubits/get_country_list_cubit/get_country_list_cubit.dart';
import 'package:octopii_provier_app/views/auth/country_list/widgets/country_list_widgets/country_view.dart';
import 'package:octopii_provier_app/views/auth/forgot_password/cubits/request_otp_cubit/request_otp_cubit.dart';
import 'package:octopii_provier_app/views/auth/forgot_password/wigdets/forgot_password_widgets/request_opt_listener_widget.dart';

class ForgotPasswordBody extends HookWidget {

  const ForgotPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<bool> isValidPhoneNumber = useState(false);
    final TextEditingController phoneNumberController = useTextEditingController();
    AppLogger().info('The Sending Mobile Number Is ${phoneNumberController.text}');
    bool formIsNotEmpty() {
      return isValidPhoneNumber.value = phoneNumberController.text.trim().isNotEmpty;
    }

    useEffect(
      () {
        phoneNumberController.addListener(formIsNotEmpty);
        return () {
          phoneNumberController.removeListener(formIsNotEmpty);
        };
      },
      <Object?>[phoneNumberController],
    );

    return RequestOptListenerWidget(
      mobileNumber: phoneNumberController.text,
      child: ListView(
        padding: const EdgeInsets.all(20),
        children: <Widget>[
          Hero(
            tag: AppStrings.otpTag,
            child: Text(
              LocaleKeys.resetPassword.tr(),
              style: Theme.of(context).textTheme.displayLarge?.copyWith(
                    color: Theme.of(context).colorScheme.scrim,
                  ),
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
                textEditingController: phoneNumberController,
                hintText: LocaleKeys.mobileNumber.tr(),
                contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
                prefixIcon: const CountryView().paddingHorizontal(
                  10.w,
                ),
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
                    phone: phoneNumberController.text,
                    countryId: context.read<GetCountryListCubit>().state.countryData!.id,
                    password: null,
                    otp: null,
                  ),
                ),
            text: LocaleKeys.continueKey.tr(),
          ),
        ],
      ),
    );
  }
}
