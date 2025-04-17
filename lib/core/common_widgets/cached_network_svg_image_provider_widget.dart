import 'package:cached_network_image/cached_network_image.dart';
import 'package:cached_network_svg_image/cached_network_svg_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octopii_provier_app/core/common_widgets/animations/app_animated_shimmer_widget.dart';
import 'package:octopii_provier_app/gen/assets.gen.dart';

class CachedNetworkSvgImageProviderWidget extends StatelessWidget {
  const CachedNetworkSvgImageProviderWidget({
    required this.imageUrl,
    super.key,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
    this.borderRadius,
    this.child,
    this.isCircular = false,
  });

  final String imageUrl;
  final double? width;
  final double? height;
  final BoxFit fit;
  final BorderRadiusDirectional? borderRadius;
  final Widget? child;
  final bool isCircular;

  @override
  Widget build(BuildContext context) {
    final double resolvedWidth = width ?? 50.w;
    final double resolvedHeight = height ?? 50.h;

    return Container(
      width: resolvedWidth,
      height: resolvedHeight,
      decoration: BoxDecoration(
        shape: isCircular ? BoxShape.circle : BoxShape.rectangle,
        borderRadius: isCircular ? null : borderRadius,
      ),
      child: CachedNetworkSVGImage(
        imageUrl,
        width: resolvedWidth,
        height: resolvedHeight,
        placeholderBuilder: (
          BuildContext context,
        ) =>
            CachedNetworkImage(
              imageUrl: imageUrl,
              fit: fit,
              width: width,
              height: height,
              placeholder: (BuildContext context, String url) => AppShimmerWidget(
                width: resolvedWidth,
                height: resolvedHeight,
              ),
              errorWidget: (BuildContext context, String url, Object error) =>
                  Container(
                    width: resolvedWidth,
                    height: resolvedHeight,
                    decoration: BoxDecoration(
                      shape: isCircular ? BoxShape.circle : BoxShape.rectangle,
                      borderRadius: isCircular ? null : borderRadius,
                      image: DecorationImage(
                        image: AssetImage(
                          MyAssets.icons.flagPlaceHolderImage.path,
                        ),
                      ),
                    ),
                  ),
            ),
        errorWidget: CachedNetworkImage(
          imageUrl: imageUrl,
          fit: fit,
          width: width,
          height: height,
          placeholder: (BuildContext context, String url) => AppShimmerWidget(
            width: resolvedWidth,
            height: resolvedHeight,
          ),
          errorWidget: (BuildContext context, String url, Object error) =>
              Container(
            width: resolvedWidth,
            height: resolvedHeight,
            decoration: BoxDecoration(
              shape: isCircular ? BoxShape.circle : BoxShape.rectangle,
              borderRadius: isCircular ? null : borderRadius,
              image: DecorationImage(
                image: AssetImage(
                  MyAssets.icons.flagPlaceHolderImage.path,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
