import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:helping_hands_app/presentation/resources/assets_manager.dart';

import 'package:helping_hands_app/presentation/resources/colors_manager.dart';
import 'package:helping_hands_app/presentation/resources/fonts_manager.dart';
import 'package:helping_hands_app/presentation/resources/strings_manager.dart';
import 'package:helping_hands_app/presentation/resources/values_manager.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsManager.appBarBackgroundColor,
        elevation: SizesManager.appBarElevationSize,
      ),
      body: Padding(
        padding: const EdgeInsets.all(
          PaddingsManager.p10,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: SizesManager.s40,
            ),
            Image(
              image: AssetImage(
                ImagesAssetsManager.splashAppLogo,
              ),
            ),
            SizedBox(
              height: SizesManager.s20,
            ),
            Text(
              textAlign: TextAlign.center,
              StringsManager.loginScreenTitle,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(
              height: SizesManager.s10,
            ),
            Text(
              StringsManager.loginScreenSubTitle,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            SizedBox(
              height: SizesManager.inputFieldTopSpace,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: StringsManager.emailHint,
                label: Text(
                  StringsManager.emailLabel,
                ),
              ),
            ),
            SizedBox(
              height: SizesManager.spaceBetweenInputField,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: StringsManager.passwordHint,
                label: Text(
                  StringsManager.passwordLabel,
                ),
              ),
            ),
            SizedBox(
              height: SizesManager.textFieldBottomSpace,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                StringsManager.login,
              ),
            ),
            SizedBox(
              height: SizesManager.filledButtonBottomSpace,
            ),
            Text(
              StringsManager.orContinueWith,
              style: Theme.of(context).textTheme.subtitle1,
            ),
            SizedBox(
              height: SizesManager.s16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  ImagesAssetsManager.facebookIcon,
                ),
                SizedBox(
                  width: SizesManager.s16,
                ),
                SvgPicture.asset(
                  ImagesAssetsManager.googleIcon,
                ),
              ],
            ),
          ],
        ),
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 30,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              StringsManager.dontHaveAccount,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            SizedBox(
              width: SizesManager.s16,
            ),
            Text(
              StringsManager.signUp,
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ],
        ),
      ),
    );
  }
}
