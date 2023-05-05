import 'package:flutter/material.dart';

import '../../resources/dimens_manager.dart';
import '../../resources/assets_manager.dart';
import '../../resources/routes_manager.dart';
import '../../resources/strings_manager.dart';

class RegistrationSecondView extends StatefulWidget {
  const RegistrationSecondView({super.key});

  @override
  State<RegistrationSecondView> createState() => _RegistrationSecondViewState();
}

class _RegistrationSecondViewState extends State<RegistrationSecondView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: PaddingsManager.screenHorizontalPadding,
            vertical: PaddingsManager.screenVerticalPadding,
          ),
          child: Column(
            children: [
              SizedBox(
                height: MarginsManager.topMarginWithoutAppBar,
              ),
              const Image(
                image: AssetImage(
                  ImageAssetsManager.appLogo,
                ),
              ),
              SizedBox(
                height: MarginsManager.marginBetweenSections,
              ),
              Text(
                textAlign: TextAlign.center,
                StringsManager.loginScreenTitle,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(
                height: MarginsManager.marginBetweenSectionsViews,
              ),
              Text(
                StringsManager.loginScreenSubTitle,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(
                height: MarginsManager.marginBetweenSections,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: StringsManager.enterWalletAddress,
                  label: Text(
                    StringsManager.walletAddress,
                  ),
                ),
              ),
              const SizedBox(
                height: MarginsManager.marginBetweenSectionsViews,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: StringsManager.enterPassword,
                  label: Text(
                    StringsManager.password,
                  ),
                ),
              ),
              const SizedBox(
                height: MarginsManager.marginBetweenSectionsViews,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: StringsManager.confirmEnterPassword,
                  label: Text(
                    StringsManager.confirmPassword,
                  ),
                ),
              ),
              const SizedBox(
                height: MarginsManager.marginBetweenSectionsViews,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(
                    context,
                    RoutesManager.otpRoute,
                  );
                },
                child: Text(
                  StringsManager.registerNow,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
