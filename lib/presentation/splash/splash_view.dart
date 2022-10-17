import 'dart:async';

import 'package:flutter/material.dart';
import '/presentation/resources/assets_manager.dart';
import '/presentation/resources/routes_manager.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Timer? _timer;

  _startDelay() {
    _timer = Timer(
        Duration(seconds: 3),
        (() => {
              Navigator.pushReplacementNamed(
                  context, RoutesManager.onBoardingRoute)
            }));
  }

  @override
  void initState() {
    super.initState();
    _startDelay();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image(
          image: AssetImage(
            ImagesAssetsManager.splashAppLogo,
          ),
        ),
      ),
    );
  }
}
