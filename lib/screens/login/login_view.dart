import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:helping_hands_app/resources/dimens_manager.dart';
import 'package:helping_hands_app/resources/routes_manager.dart';
import '../../resources/assets_manager.dart';
import '../../resources/strings_manager.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
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
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    child: Text(
                      StringsManager.ForgotPassword,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    onTap: (() => {
                          Navigator.pushReplacementNamed(
                            context,
                            RoutesManager.forgotPasswordRoute,
                          )
                        }),
                  ),
                ],
              ),
              const SizedBox(
                height: MarginsManager.marginBetweenSectionsViews,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(
                    context,
                    RoutesManager.mainRoute,
                  );
                },
                child: Text(
                  StringsManager.login,
                ),
              ),
              const SizedBox(
                height: MarginsManager.marginBetweenSections,
              ),
              Text(
                StringsManager.orContinueWith,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(
                height: MarginsManager.marginBetweenSectionsViews,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    ImageAssetsManager.facebookIcon,
                  ),
                  const SizedBox(
                    width: MarginsManager.marginBetweenSectionsViews,
                  ),
                  SvgPicture.asset(
                    ImageAssetsManager.googleIcon,
                  ),
                ],
              ),
              SizedBox(
                height: MarginsManager.marginBetweenSections,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    StringsManager.dontHaveAccount,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  SizedBox(
                    width: MarginsManager.marginBetweenSectionsViews,
                  ),
                  GestureDetector(
                    child: Text(
                      StringsManager.registerNow,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    onTap: () => {
                      Navigator.pushReplacementNamed(
                        context,
                        RoutesManager.registerRoute,
                      ),
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
