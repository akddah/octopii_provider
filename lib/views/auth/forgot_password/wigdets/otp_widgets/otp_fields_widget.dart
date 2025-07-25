import 'dart:async';
import 'dart:ui' as dir;

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../../core/common_widgets/custom_loading_button.dart';
import '../../../../../core/common_widgets/toast_manager.dart';
import '../../../../../core/extensions/navigation.dart';
import '../../../../../core/helpers/app_helper_functions.dart';
import '../../../../../core/helpers/enums.dart';
import '../../../../../core/navigation/route_names.dart';
import '../../../../../core/theme/app_colors.dart';
import '../../../../../gen/locale_keys.g.dart';
import '../../../../../models/login/login_request_model.dart';
import '../../../country_list/cubits/get_country_list_cubit/get_country_list_cubit.dart';
import '../../cubits/request_otp_cubit/request_otp_cubit.dart';
import '../../cubits/verify_otp_cubit/verify_otp_cubit.dart';

class OtpFieldsWidget extends StatefulWidget {
  const OtpFieldsWidget({required this.phoneNumber, required this.countryCode, super.key});

  final String phoneNumber;
  final int countryCode;

  @override
  State<OtpFieldsWidget> createState() => _OtpFieldsWidgetState();
}

class _OtpFieldsWidgetState extends State<OtpFieldsWidget> with TickerProviderStateMixin {
  late final TextEditingController pinCodeEditingController;
  late final StreamController<ErrorAnimationType> errorController;
  late final FocusNode focusNode;
  late Timer _timer;

  bool isLoading = false;
  bool countDownIsRunning = false;
  bool isButtonEnabled = false;
  int _countDownTime = 60;

  @override
  void initState() {
    super.initState();
    pinCodeEditingController = TextEditingController();
    errorController = StreamController<ErrorAnimationType>();
    focusNode = FocusNode();
    context.read<VerifyOtpCubit>().stream.listen(
      (VerifyOtpStates state) {
        if (state.isError) {
          setState(() {
            pinCodeEditingController.clear();
            isButtonEnabled = false;
            ToastManager().error(
              context: context,
              message: state.errorMsg ?? '',
              description: '',
            );
          });
        } else if (state.isLoaded) {
          if (mounted) {
            if (state.responseState!) {
              ToastManager().success(
                context: context,
                message: '',
                description: '${LocaleKeys.loginSuccessWelcomeMessage.tr()} ${state.loginResponse?.user.name}',
              );
              context.push(RouteNames.addNewPassword, arguments: {"countryCode": widget.countryCode});
            } else {
              ToastManager().error(
                context: context,
                message: state.errorMsg ?? LocaleKeys.invalidOtpMessage.tr(),
                description: LocaleKeys.invalidOtpDescription.tr(),
              );
            }
          }
        }
      },
    );
  }

  void startTimer() {
    setState(() {
      countDownIsRunning = true;
      _countDownTime = 60;
    });
    context.read<RequestOtpCubit>().requestOtp(
          requestModel: GenericLoginRequestModel(
            phone: widget.phoneNumber,
            password: null,
            otp: null,
            countryId: context.read<GetCountryListCubit>().state.countryData!.id,
          ),
        );
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      setState(() {
        if (_countDownTime > 0) {
          _countDownTime--;
        } else {
          countDownIsRunning = false;
          timer.cancel();
        }
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    errorController.close();
    pinCodeEditingController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Directionality(
          textDirection: dir.TextDirection.ltr,
          child: IgnorePointer(
            ignoring: isLoading,
            child: PinCodeTextField(
              appContext: context,
              scrollPadding: EdgeInsets.zero,
              length: 4,
              autoFocus: true,
              focusNode: focusNode,
              animationType: AnimationType.scale,
              keyboardType: TextInputType.number,
              controller: pinCodeEditingController,
              errorAnimationController: errorController,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(16.r),
                fieldHeight: 55.h,
                fieldWidth: 48.83.w,
                borderWidth: 1.w,
                activeColor: Theme.of(context).colorScheme.onPrimaryContainer,
                inactiveColor: Theme.of(context).colorScheme.shadow,
                selectedColor: Theme.of(context).colorScheme.onPrimaryContainer,
                selectedFillColor: AppColors.primaryWhite,
                inactiveFillColor: AppColors.primaryWhite,
                activeFillColor: AppColors.primaryWhite,
              ),
              backgroundColor: AppColors.primaryWhite,
              enableActiveFill: true,
              textStyle: Theme.of(context).textTheme.headlineLarge,
              cursorColor: AppColors.brand500Base,
              cursorHeight: 24.h,
              cursorWidth: 3.w,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.allow(RegExp('[0-9]')),
              ],
              onChanged: (String value) {
                if (value.length == 4) {
                  setState(() {
                    isButtonEnabled = true;
                  });
                } else {
                  setState(() {
                    isButtonEnabled = false;
                  });
                }
              },
              onCompleted: (_) {
                if (isButtonEnabled) {
                  AppHelperFunctions().hideKeyboard();
                  context.read<VerifyOtpCubit>().verifyOtp(
                        requestModel: GenericLoginRequestModel(
                          phone: widget.phoneNumber,
                          countryId: widget.countryCode,
                          password: null,
                          otp: pinCodeEditingController.text,
                        ),
                      );
                }
              },
            ),
          ),
        ),
        SizedBox(height: 25.h),
        CustomLoadingButton<VerifyOtpCubit, VerifyOtpStates>(
          loadingState: const VerifyOtpStates(status: GenericStateStatus.loading),
          cubit: context.read<VerifyOtpCubit>(),
          isClickable: isButtonEnabled,
          onTap: () => context.read<VerifyOtpCubit>().verifyOtp(
                requestModel: GenericLoginRequestModel(
                  phone: widget.phoneNumber,
                  countryId: widget.countryCode,
                  password: null,
                  otp: pinCodeEditingController.text,
                ),
              ),
          text: LocaleKeys.continueKey.tr(),
        ),
        SizedBox(height: 25.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text.rich(
              TextSpan(
                children: <InlineSpan>[
                  TextSpan(
                    text: LocaleKeys.resendCodeIn.tr(),
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  WidgetSpan(
                    child: SizedBox(
                      width: 3.w,
                    ),
                  ),
                  if (countDownIsRunning)
                    TextSpan(
                      text: '$_countDownTime',
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                            color: Theme.of(context).colorScheme.surfaceContainerLowest,
                          ),
                    )
                  else
                    WidgetSpan(
                      child: SizedBox(
                        width: 3.w,
                      ),
                    ),
                  if (!countDownIsRunning)
                    TextSpan(
                      text: LocaleKeys.resend_code.tr(),
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                      recognizer: TapGestureRecognizer()..onTap = countDownIsRunning ? null : startTimer,
                    )
                  else
                    const WidgetSpan(
                      child: SizedBox.shrink(),
                    ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
