import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octopii_provier_app/core/helpers/app_helper_functions.dart';
import 'package:octopii_provier_app/core/utils/utils/app_logger.dart';
import 'package:octopii_provier_app/gen/assets.gen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool _isDisposed = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(microseconds: 1500),
      vsync: this,
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(_controller)
      ..addListener(() {
        if (!_isDisposed) {
          setState(() {});
        }
      });

    _controller.forward();

    AppLogger().info('SplashScreen initState called');

    Timer(const Duration(milliseconds: 3000), () async {
      AppLogger().info('Timer completed, calling navigateToNextScreen');
      await AppHelperFunctions().checkCachedKeysAndNavigate();
    });
  }

  @override
  void dispose() {
    AppLogger().info('SplashScreen dispose called');
    _isDisposed = true; // Set the flag when the widget is disposed
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedOpacity(
          opacity: _animation.value,
          duration: const Duration(seconds: 2),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 42.w),
            child: MyAssets.logos.logo.image(
              width: double.infinity,
              height: double.infinity,
            ),
          ),
        ),
      ),
    );
  }
}
