// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class AppPhoneNumberInputField extends StatelessWidget {
//   final GlobalKey<FormState>? formStateKey;
//   final TextEditingController? textEditingController;
//   final void Function()? onInputChanged;
//   final void Function(bool value)? onInputValidated; // ignore: avoid_positional_boolean_parameters

//   final String? errorMessage;

//   final String hintText;
//   final List<String> countries;

//   const AppPhoneNumberInputField({
//     required this.hintText,
//     required this.countries,
//     this.formStateKey,
//     this.textEditingController,
//     this.onInputChanged,
//     this.onInputValidated,
//     this.errorMessage,
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: <Widget>[
//         Container(
//           width: 353.w,
//           height: 44.h,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(16.r),
//             border: Border.all(
//               color: Theme.of(context).colorScheme.shadow,
//               width: 1.w,
//             ),
//             color: Theme.of(context).colorScheme.secondaryContainer,
//           ),
//           padding: EdgeInsets.symmetric(
//             horizontal: 12.w,
//           ),
//           child: InternationalPhoneNumberInput(
//             locale: context.locale.languageCode,
//             textFieldController: textEditingController,
//             countries: countries,
//             textAlignVertical: TextAlignVertical.top,
//             onInputChanged: onInputChanged,
//             onInputValidated: onInputValidated,
//             ignoreBlank: true,
//             autoValidateMode: AutovalidateMode.always,
//             inputBorder: InputBorder.none,
//             spaceBetweenSelectorAndTextField: 24.w,
//             textAlign: context.locale.languageCode == AppStrings.englishLang ? TextAlign.left : TextAlign.right,
//             textStyle: Theme.of(context).textTheme.displaySmall!.copyWith(
//                   color: Theme.of(context).colorScheme.scrim,
//                 ),
//             selectorTextStyle: Theme.of(context).textTheme.displaySmall!.copyWith(
//                   color: Theme.of(context).colorScheme.scrim,
//                 ),
//             inputDecoration: InputDecoration(
//               errorStyle: TextStyle(
//                 fontSize: 11.sp,
//               ),
//               hintText: hintText,
//               isCollapsed: false,
//               isDense: true,
//               border: InputBorder.none,
//               contentPadding: EdgeInsets.zero,
//               hintStyle: Theme.of(context).textTheme.displaySmall,
//             ),
//             errorMessage: errorMessage,
//             selectorButtonOnErrorPadding: 0,
//             scrollPadding: EdgeInsets.zero,
//             selectorConfig: const SelectorConfig(
//               leadingPadding: 0,
//               trailingSpace: false,
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
