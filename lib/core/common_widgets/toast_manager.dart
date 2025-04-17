import 'dart:ui' as ui;

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:toastification/toastification.dart';

class ToastManager {
  static final ToastManager _instance = ToastManager._internal();

  factory ToastManager() => _instance;

  ToastManager._internal();

  void success({
    required BuildContext context,
    required String message,
    required String description,
    int?autoCloseDuration,
  }) {
    toastification.show(
      context: context,
      type: ToastificationType.success,
      style: ToastificationStyle.flat,
      title: Text(message,style: Theme.of(context).textTheme.bodySmall,),
      description: Text(description,style: Theme.of(context).textTheme.labelSmall),
      alignment: Alignment.center,
      borderRadius: BorderRadius.circular(20.r),
      boxShadow: highModeShadow,
      direction: context.locale.languageCode == 'en'
          ? ui.TextDirection.ltr
          : ui.TextDirection.rtl,
      showProgressBar: false,
      autoCloseDuration:  Duration(
        seconds: autoCloseDuration??3,
      ),
    );
  }

  void error({
    required BuildContext context,
    required String message,
    required String description,
    int?autoCloseDuration,

  }) {
    toastification.show(
        context: context,
        type: ToastificationType.error,
        style: ToastificationStyle.flat,
      title: Text(message,style: Theme.of(context).textTheme.bodySmall,),
      description: Text(description,style: Theme.of(context).textTheme.labelSmall),
        alignment: Alignment.center,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: highModeShadow,
        direction: context.locale.languageCode == 'en'
            ? ui.TextDirection.ltr
            : ui.TextDirection.rtl,
        showProgressBar: false,
        autoCloseDuration:  Duration(seconds: autoCloseDuration??3),);
  }

  void warning({
    required BuildContext context,
    required String message,
    required String description,
    int?autoCloseDuration,

  }) {
    toastification.show(
      context: context,
      type: ToastificationType.warning,
      style: ToastificationStyle.flat,
      title: Text(message,style: Theme.of(context).textTheme.bodySmall,),

    description: Text(description,style: Theme.of(context).textTheme.labelSmall),
      alignment: Alignment.center,
      borderRadius: BorderRadius.circular(20.r),
      boxShadow: highModeShadow,
      direction: context.locale.languageCode == 'en'
          ? ui.TextDirection.ltr
          : ui.TextDirection.rtl,
      showProgressBar: false,
      autoCloseDuration:  Duration(seconds: autoCloseDuration??3),
    );
  }
}
