import 'package:flutter/material.dart';
import 'package:helping_hands_app/resources/dimens_manager.dart';

import '../../resources/assets_manager.dart';
import '../../resources/routes_manager.dart';
import '../../resources/strings_manager.dart';

class OTPView extends StatefulWidget {
  const OTPView({super.key});

  @override
  State<OTPView> createState() => _OTPViewState();
}

class _OTPViewState extends State<OTPView> {
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
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: StringsManager.enterVerificationCode,
                label: Text(
                  StringsManager.verificationCode,
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
                  RoutesManager.loginRoute,
                );
              },
              child: Text(
                StringsManager.verify,
              ),
            ),
            const SizedBox(
              height: MarginsManager.marginBetweenSections,
            ),
            Text(
              StringsManager.notReceivedYet,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(
              height: MarginsManager.marginBetweenSectionsViews,
            ),
            Text(
              StringsManager.resend,
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ]),
        ),
      ),
    );
  }
}
