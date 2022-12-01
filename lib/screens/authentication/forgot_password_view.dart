import 'package:flutter/material.dart';

import '../../resources/assets_manager.dart';
import '../../resources/dimens_manager.dart';
import '../../resources/routes_manager.dart';
import '../../resources/strings_manager.dart';

class ForgotPasswordView extends StatefulWidget {
  const ForgotPasswordView({super.key});

  @override
  State<ForgotPasswordView> createState() => _ForgotPasswordViewState();
}

class _ForgotPasswordViewState extends State<ForgotPasswordView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: PaddingsManager.screenHorizontalPadding,
            vertical: PaddingsManager.screenVerticalPadding,
          ),
          child: Column(children: [
            const SizedBox(
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
                hintText: StringsManager.enterEmail,
                label: Text(
                  StringsManager.email,
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
                  RoutesManager.updatePasswordRoute,
                );
              },
              child: Text(
                StringsManager.next,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
