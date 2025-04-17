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
import '../../../../../gen/locale_keys.g.dart';
import '../../../../../models/reset_password/reset_password_request_models.dart';
import '../../cubits/reset_password_cubit/reset_password_cubit.dart';
import 'index.dart';

class AddNewPasswordBody extends HookWidget {
  final int countryCode;

  const AddNewPasswordBody({ super.key ,required
   this.countryCode});

  @override
  Widget build(BuildContext context) {
    final TextEditingController newPasswordController = useTextEditingController();
    final TextEditingController newConfirmPasswordController = useTextEditingController();
    final ValueNotifier<bool> showPassword = useState(false);
    final ValueNotifier<bool> showConfirmPassword = useState(false);
    final ValueNotifier<String?> passwordError = useState<String?>(null);
    final ValueNotifier<String?> confirmPasswordError = useState<String?>(null);
    final ValueNotifier<bool?> isClickable = useState<bool?>(false);

    void validatePasswords() {
      final String password = newPasswordController.text.trim();
      final String confirmPassword = newConfirmPasswordController.text.trim();

      // Password validation
      if (password.isEmpty) {
        passwordError.value = LocaleKeys.passwordRequired.tr();
      }
      // else if (password.length < 8) {
      //   passwordError.value = LocaleKeys.passwordTooShort.tr();
      // } else if (!RegExp('[A-Z]').hasMatch(password)) {
      //   passwordError.value = LocaleKeys.passwordMustContainUppercase.tr();
      // } else if (!RegExp('[a-z]').hasMatch(password)) {
      //   passwordError.value = LocaleKeys.passwordMustContainLowercase.tr();
      // } else if (!RegExp('[0-9]').hasMatch(password)) {
      //   passwordError.value = LocaleKeys.passwordMustContainNumber.tr();
      // } else if (!RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(password)) {
      //   passwordError.value = LocaleKeys.passwordMustContainSpecialChar.tr();
      // } else {
      //   passwordError.value = null;
      // }

      // Confirm password validation
      // if (confirmPassword.isEmpty) {
      //   confirmPasswordError.value = LocaleKeys.confirmPasswordRequired.tr();
      // } else if (password != confirmPassword) {
      //   confirmPasswordError.value = LocaleKeys.passwordsDoNotMatch.tr();
      // } else {
      //   confirmPasswordError.value = null;
      // }

      // if (passwordError.value == null && confirmPasswordError.value == null) {
      context.read<ResetPasswordCubit>().requestPassword(
            requestModel: ResetPasswordRequestModel(
              password: newPasswordController.text.trim(),
              passwordConfirmation: newConfirmPasswordController.text.trim(),
              countryId:countryCode,

            ),
          );
      // }
    }

    void updateIsClickable() {
      isClickable.value = newPasswordController.text.isNotEmpty && newConfirmPasswordController.text.isNotEmpty;
    }

    useEffect(
      () {
        newPasswordController.addListener(updateIsClickable);
        newConfirmPasswordController.addListener(updateIsClickable);

        return () {
          newPasswordController.removeListener(updateIsClickable);
          newConfirmPasswordController.removeListener(updateIsClickable);
        };
      },
      <Object?>[newPasswordController, newConfirmPasswordController],
    );

    return ResetPasswordListenerWidget(
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        children: <Widget>[
          SizedBox(
            height: 100.h,
          ),
          Hero(
            tag: AppStrings.otpTag,
            child: Text(
              LocaleKeys.enterNewPassword.tr(),
              style: Theme.of(context).textTheme.displayLarge?.copyWith(
                    color: Theme.of(context).colorScheme.scrim,
                  ),
            ),
          ).wrapCenter(),
          SizedBox(
            height: 24.h,
          ),
          CustomTextFormField(
            width: 353.w,
            height: 44.h,
            textEditingController: newPasswordController,
            obscureText: !showPassword.value,
            suffixIcon: IconButton(
              onPressed: () => showPassword.value = !showPassword.value,
              icon: Icon(
                showPassword.value ? Icons.visibility : Icons.visibility_off,
              ),
            ),
            errorText: passwordError.value,
            contentPadding: EdgeInsets.symmetric(horizontal: 20.w),
          ),
          SizedBox(
            height: 24.h,
          ),
          CustomTextFormField(
            width: 353.w,
            height: 44.h,
            textEditingController: newConfirmPasswordController,
            obscureText: !showConfirmPassword.value,
            suffixIcon: IconButton(
              onPressed: () => showConfirmPassword.value = !showConfirmPassword.value,
              icon: Icon(
                showConfirmPassword.value ? Icons.visibility : Icons.visibility_off,
              ),
            ),
            errorText: passwordError.value,
            contentPadding: EdgeInsets.symmetric(horizontal: 20.w),
          ),
          SizedBox(
            height: 24.h,
          ),
          CustomLoadingButton<ResetPasswordCubit, ResetPasswordState>(
            cubit: context.read<ResetPasswordCubit>(),
            loadingState: const ResetPasswordState(status: GenericStateStatus.loading),
            isClickable: isClickable.value,
            onTap: validatePasswords,
            text: LocaleKeys.saveNewPassword.tr(),
          ),
        ],
      ),
    );
  }
}
