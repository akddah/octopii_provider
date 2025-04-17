import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octopii_provier_app/core/common_widgets/custom_text_form_field.dart';
import 'package:octopii_provier_app/core/extensions/widgets_extensions.dart';
import 'package:octopii_provier_app/core/theme/app_colors.dart';
import 'package:octopii_provier_app/gen/locale_keys.g.dart';
import 'package:octopii_provier_app/views/auth/country_list/widgets/country_list_widgets/country_view.dart';
import 'package:octopii_provier_app/views/auth/login/cubits/login_cubit/login_cubit.dart';

class LoginTestFields extends HookWidget {
  const LoginTestFields({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginCubit cubit = context.read<LoginCubit>();
    final ValueNotifier<bool> isVisiblePassword = useState(false);
    return Column(
      children: <Widget>[
        // AppPhoneNumberInputField(
        //   errorMessage: LocaleKeys.phoneNumberIsInvalid.tr(),
        //   countries: const <String>['EG'],
        //   hintText: LocaleKeys.mobileNumberOnly.tr(),
        //   onInputChanged: (PhoneNumber newPhoneNumber) =>
        //       cubit.updatePhoneNumberAndCheckValidPassword(
        //     phoneNumber: newPhoneNumber,
        //   ),
        //   onInputValidated: (bool value) =>
        //       cubit.updatePhoneNumberAndCheckValidPassword(
        //     isValid: value,
        //   ),
        // ),
        Stack(
          children: <Widget>[
            CustomTextFormField(
              keyboardType: TextInputType.phone,
              textEditingController: cubit.phoneNumberController,
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
                endIndent: 5.5,
                indent: 10.5,
              ),
            ),
          ],
        ),

        SizedBox(
          height: 20.h,
        ),
        CustomTextFormField(
          textEditingController: cubit.passwordController,
          hintText: LocaleKeys.password.tr(),
          contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
          obscureText: !isVisiblePassword.value,
          suffixIcon: IconButton(
            onPressed: () => isVisiblePassword.value = !isVisiblePassword.value,
            icon: Icon(
              isVisiblePassword.value ? Icons.visibility : Icons.visibility_off,
            ),
          ),
        ),
      ],
    );
  }
}
