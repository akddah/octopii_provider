import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octopii_provier_app/core/const/const_strings.dart';
import 'package:octopii_provier_app/core/extensions/widgets_extensions.dart';
import 'package:octopii_provier_app/core/theme/app_colors.dart';

class CustomTextFormField extends HookWidget {
  const CustomTextFormField({
    required this.textEditingController,
    this.hintText,
    this.labelText,
    super.key,
    this.keyboardType,
    this.onChanged,
    this.onTap,
    this.onFieldSubmitted,
    this.onSaved,
    this.validator,
    this.focusNode,
    this.suffixIcon,
    this.prefixIcon,
    this.contentPadding,
    this.icon,
    this.obscureText = false,
    this.readOnly = false,
    this.inputFormatters,
    this.textFieldName = '',
    this.maxLines,
    this.initialValue = '',
    this.autoFocus = false,
    this.enabled,
    this.onSuffixIconPressed,
    this.paddingLeft,
    this.paddingRight,
    this.hintStyle,
    this.height,
    this.width,
    this.labelTextColor,
    this.fillColor,
    this.borderRadius,
    this.focusedBorderColor,
    this.enabledBorderColor,
    this.hasShadow = false,
    this.showToolTip = false,
    this.toolTipMessage,
    this.errorText,
    this.obscuringCharacter = '*',
    this.labelStyle,
    this.labelPadding,
    this.autovalidateMode,
  });

  final TextEditingController textEditingController;
  final TextInputType? keyboardType;
  final ValueChanged<String?>? onChanged;
  final ValueChanged<String?>? onFieldSubmitted;
  final ValueChanged<String?>? onSaved;
  final GestureTapCallback? onTap;
  final String? Function(String?)? validator;
  final FocusNode? focusNode;
  final String? labelText;
  final String? hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final EdgeInsetsGeometry? contentPadding;
  final bool obscureText;
  final Widget? icon;
  final bool readOnly;
  final List<TextInputFormatter>? inputFormatters;
  final String textFieldName;
  final int? maxLines;
  final String? initialValue;
  final bool? autoFocus;
  final bool? enabled;
  final GestureTapCallback? onSuffixIconPressed;
  final double? paddingLeft;
  final double? paddingRight;
  final TextStyle? hintStyle;
  final double? height;
  final double? width;
  final Color? labelTextColor;
  final Color? fillColor;
  final Color? focusedBorderColor;
  final Color? enabledBorderColor;
  final BorderRadius? borderRadius;
  final bool? hasShadow;
  final bool? showToolTip;
  final String? toolTipMessage;
  final String? errorText;
  final String? obscuringCharacter;
  final TextStyle? labelStyle;
  final double? labelPadding;
  final AutovalidateMode? autovalidateMode;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        if (labelText != null)
          Align(
            alignment: context.locale.languageCode == AppStrings.englishLang ? Alignment.topLeft : Alignment.topRight,
            child: Row(
              children: <Widget>[
                Text(
                  labelText!,
                  style: labelStyle ??
                      Theme.of(context).textTheme.headlineSmall?.copyWith(
                            color: Colors.black,
                            height: 1.43.h,
                          ),
                ).paddingHorizontal(labelPadding ?? 20.w),
              ],
            ),
          )
        else
          const SizedBox.shrink(),
        SizedBox(
          height: 8.h,
        ),
        Container(
          height: height ?? 44.h,
          width: width ?? 353.w,
          decoration: BoxDecoration(
            boxShadow: hasShadow!
                ? <BoxShadow>[
                    const BoxShadow(
                      color: AppColors.shadowColor2,
                      blurRadius: 2,
                      offset: Offset(0, 1),
                    ),
                  ]
                : null,
          ),
          child: FormBuilderTextField(
            enabled: enabled ?? true,
            onTapOutside: (PointerDownEvent event) => FocusManager.instance.primaryFocus?.unfocus(),
            maxLines: maxLines ?? 1,
            name: textFieldName,
            inputFormatters: const <TextInputFormatter>[],
            readOnly: readOnly,
            obscureText: obscureText,
            controller: textEditingController,
            focusNode: focusNode,
            onChanged: onChanged,
            onTap: onTap,
            onSubmitted: onFieldSubmitted,
            validator: validator,
            onSaved: onSaved,
            keyboardType: keyboardType,
            autofocus: autoFocus ?? false,
            autovalidateMode: autovalidateMode ?? AutovalidateMode.onUserInteraction,
            style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  color: Theme.of(context).colorScheme.scrim,
                ),
            obscuringCharacter: obscuringCharacter ?? '',
            decoration: InputDecoration(
              errorStyle: TextStyle(height: 0.01.h, color: Colors.transparent),
              hintText: hintText,
              hintStyle: hintStyle ?? Theme.of(context).textTheme.displaySmall,
              suffixIcon: suffixIcon,
              prefixIcon: prefixIcon,
              contentPadding: contentPadding ?? EdgeInsets.zero,
              fillColor: fillColor ?? AppColors.primaryWhite,
              filled: true,
              errorText: errorText,
              focusedBorder: OutlineInputBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(16.0.r),
                borderSide: BorderSide(
                  color: focusedBorderColor ?? Theme.of(context).colorScheme.primary,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(16.0.r),
                borderSide: BorderSide(
                  color: enabledBorderColor ?? Theme.of(context).colorScheme.shadow,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(16.0.r),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: borderRadius ??
                    BorderRadius.circular(
                      16.0.r,
                    ),
                borderSide: const BorderSide(
                  color: AppColors.red500Base,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
