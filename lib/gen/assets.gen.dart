/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

import 'package:flutter/services.dart';
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/add_circle_icon.svg
  SvgGenImage get addCircleIcon => const SvgGenImage('assets/icons/add_circle_icon.svg');

  /// File path: assets/icons/app_icon.svg
  SvgGenImage get appIcon => const SvgGenImage('assets/icons/app_icon.svg');

  /// File path: assets/icons/arrow_icon_down.svg
  SvgGenImage get arrowIconDown => const SvgGenImage('assets/icons/arrow_icon_down.svg');

  /// File path: assets/icons/back_icon.svg
  SvgGenImage get backIcon => const SvgGenImage('assets/icons/back_icon.svg');

  /// File path: assets/icons/booking_icon.svg
  SvgGenImage get bookingIcon => const SvgGenImage('assets/icons/booking_icon.svg');

  /// File path: assets/icons/bookmarks_icon.svg
  SvgGenImage get bookmarksIcon => const SvgGenImage('assets/icons/bookmarks_icon.svg');

  /// File path: assets/icons/calendar_month_icon.svg
  SvgGenImage get calendarMonthIcon => const SvgGenImage('assets/icons/calendar_month_icon.svg');

  /// File path: assets/icons/call_icon.svg
  SvgGenImage get callIcon => const SvgGenImage('assets/icons/call_icon.svg');

  /// File path: assets/icons/check_circle_icon.svg
  SvgGenImage get checkCircleIcon => const SvgGenImage('assets/icons/check_circle_icon.svg');

  /// File path: assets/icons/close_icon.svg
  SvgGenImage get closeIcon => const SvgGenImage('assets/icons/close_icon.svg');

  /// File path: assets/icons/content_copy_icon.svg
  SvgGenImage get contentCopyIcon => const SvgGenImage('assets/icons/content_copy_icon.svg');

  /// File path: assets/icons/dashboard_icon.svg
  SvgGenImage get dashboardIcon => const SvgGenImage('assets/icons/dashboard_icon.svg');

  /// File path: assets/icons/error_icon.png
  AssetGenImage get errorIcon => const AssetGenImage('assets/icons/error_icon.png');

  /// File path: assets/icons/flag_place_holder_image.webp
  AssetGenImage get flagPlaceHolderImage => const AssetGenImage('assets/icons/flag_place_holder_image.webp');

  /// File path: assets/icons/ios_share_icon.svg
  SvgGenImage get iosShareIcon => const SvgGenImage('assets/icons/ios_share_icon.svg');

  /// File path: assets/icons/language_icon.svg
  SvgGenImage get languageIcon => const SvgGenImage('assets/icons/language_icon.svg');

  /// File path: assets/icons/logout_icon.svg
  SvgGenImage get logoutIcon => const SvgGenImage('assets/icons/logout_icon.svg');

  /// File path: assets/icons/map_icon.svg
  SvgGenImage get mapIcon => const SvgGenImage('assets/icons/map_icon.svg');

  /// File path: assets/icons/more_vert_icon.svg
  SvgGenImage get moreVertIcon => const SvgGenImage('assets/icons/more_vert_icon.svg');

  /// File path: assets/icons/notification_icon.svg
  SvgGenImage get notificationIcon => const SvgGenImage('assets/icons/notification_icon.svg');

  /// File path: assets/icons/notifications_icon.svg
  SvgGenImage get notificationsIcon => const SvgGenImage('assets/icons/notifications_icon.svg');

  /// File path: assets/icons/payments_icon.svg
  SvgGenImage get paymentsIcon => const SvgGenImage('assets/icons/payments_icon.svg');

  /// File path: assets/icons/trash_icon.svg
  SvgGenImage get trashIcon => const SvgGenImage('assets/icons/trash_icon.svg');

  /// File path: assets/icons/work_history_icon.svg
  SvgGenImage get workHistoryIcon => const SvgGenImage('assets/icons/work_history_icon.svg');

  /// List of all assets
  List<dynamic> get values => [
        addCircleIcon,
        appIcon,
        arrowIconDown,
        backIcon,
        bookingIcon,
        bookmarksIcon,
        calendarMonthIcon,
        callIcon,
        checkCircleIcon,
        closeIcon,
        contentCopyIcon,
        dashboardIcon,
        errorIcon,
        flagPlaceHolderImage,
        iosShareIcon,
        languageIcon,
        logoutIcon,
        mapIcon,
        moreVertIcon,
        notificationIcon,
        notificationsIcon,
        paymentsIcon,
        trashIcon,
        workHistoryIcon
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/on_boarding_one.png
  AssetGenImage get onBoardingOne => const AssetGenImage('assets/images/on_boarding_one.png');

  /// File path: assets/images/place_holder_image.jpg
  AssetGenImage get placeHolderImage => const AssetGenImage('assets/images/place_holder_image.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [onBoardingOne, placeHolderImage];
}

class $AssetsLogosGen {
  const $AssetsLogosGen();

  /// File path: assets/logos/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/logos/logo.png');

  /// List of all assets
  List<AssetGenImage> get values => [logo];
}

class $AssetsTranslationsGen {
  const $AssetsTranslationsGen();

  /// File path: assets/translations/ar-EG.json
  String get arEG => 'assets/translations/ar-EG.json';

  /// File path: assets/translations/en-US.json
  String get enUS => 'assets/translations/en-US.json';

  /// List of all assets
  List<String> get values => [arEG, enUS];
}

class MyAssets {
  MyAssets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsLogosGen logos = $AssetsLogosGen();
  static const $AssetsTranslationsGen translations = $AssetsTranslationsGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated Clip? clipBehavior,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      // clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
