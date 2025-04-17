import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:octopii_provier_app/core/common_widgets/cached_network_image_provider_widget.dart';

class NetworkSvgWithFallback extends StatelessWidget {
  final String imageUrl;
  final double width;
  final double height;
  final BorderRadiusDirectional borderRadius;

  const NetworkSvgWithFallback({
    required this.imageUrl,
    required this.width,
    required this.height,
    required this.borderRadius,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius,
      child: SvgPicture.network(
        imageUrl,
        width: width,
        height: height,
        placeholderBuilder: (BuildContext context) =>
            CachedNetworkImageProviderWidget(
          imageUrl: imageUrl,
          width: width,
          height: height,
          borderRadius: borderRadius,
        ),
      ),
    );
  }
}
