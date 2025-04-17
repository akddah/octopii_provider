import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:octopii_provier_app/core/common_widgets/animations/app_animated_shimmer_widget.dart';

class CachedNetworkImageWidget extends StatelessWidget {
  final String imageUrl;
  final BoxFit fit;
  final double width;
  final double height;

  const CachedNetworkImageWidget({
    required this.imageUrl,
    super.key,
    this.fit = BoxFit.cover,
    this.width = 100.0,
    this.height = 100.0,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      fit: fit,
      width: width,
      height: height,
      placeholder: (BuildContext context, String url) => AppShimmerWidget(
        width: width,
        height: height,
      ),
      errorWidget: (BuildContext context, String url, Object error) =>
          const Icon(Icons.error),
    );
  }
}
