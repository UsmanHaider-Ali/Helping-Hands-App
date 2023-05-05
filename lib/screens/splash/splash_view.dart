import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../resources/assets_manager.dart';
import '../../resources/routes_manager.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

Future<void> checkIfUserLoggedIn(BuildContext context) async {
  SharedPreferences userDetail = await SharedPreferences.getInstance();

  bool? isUserLoggedIn = userDetail.getBool('isUserLoggedIn');

  if (isUserLoggedIn == true) {
    Navigator.pushReplacementNamed(context, RoutesManager.mainRoute);
  } else {
    Navigator.pushReplacementNamed(context, RoutesManager.onBoardingRoute);
  }
}

class _SplashViewState extends State<SplashView> {
  Timer? _timer;

  _startDelay() {
    _timer = Timer(
        const Duration(seconds: 3), (() => {checkIfUserLoggedIn(context)}));
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
    return const Scaffold(
      body: Center(
        child: Image(
          image: AssetImage(
            ImageAssetsManager.appLogo,
          ),
        ),
      ),
    );
  }
}
