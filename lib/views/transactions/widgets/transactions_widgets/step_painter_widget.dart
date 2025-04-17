import 'package:flutter/material.dart';

class StepPainterWidget extends StatelessWidget {
  const StepPainterWidget({
    required this.stepperAvatar,
    required this.stepperContent,
    required this.isLast,
    required this.stepperWidget,
    this.customWidget,
    super.key,
  });

  final PreferredSizeWidget stepperAvatar;
  final Widget stepperContent;
  final bool isLast;
  final PreferredSizeWidget stepperWidget;
  final Widget? customWidget;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: CustomPaint(
            painter: RootPainter(
              const Size.fromRadius(14),
              Theme.of(context).colorScheme.primary,
              3,
              Directionality.of(context),
              isLast,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                stepperAvatar,
                const SizedBox(
                  width: 4,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 5,
                          left: 5,
                        ),
                        child: stepperWidget,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      stepperContent,
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        if (customWidget != null) Padding(
                padding: const EdgeInsets.only(
                  right: 5,
                  left: 5,
                ),
                child: customWidget,
              ) else const SizedBox.shrink(),
      ],
    );
  }
}

class RootPainter extends CustomPainter {
  RootPainter(
    this.avatar,
    this.pathColor,
    this.strokeWidth,
    this.textDecoration,
    this.isLast,    // ignore: avoid_positional_boolean_parameters

      ) {
    _paint = Paint()
      ..color = pathColor!
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth!
      ..strokeCap = StrokeCap.round;
  }

  Size? avatar;
  late Paint _paint;
  Color? pathColor;
  double? strokeWidth;
  final TextDirection textDecoration;
  final bool isLast;

  @override
  void paint(Canvas canvas, Size size) {
    if (textDecoration == TextDirection.rtl) {
      canvas.translate(size.width, 0);
    }

    double dx = avatar!.width / 2;
    if (textDecoration == TextDirection.rtl) {
      dx *= -1;
    }

    const double topGap = 10; // The size of the cut/notch at the top

    if (!isLast) {
      canvas.drawLine(
        Offset(dx, avatar!.height + topGap), // Start after the gap
        Offset(dx, size.height - topGap), // End at the bottom
        _paint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
