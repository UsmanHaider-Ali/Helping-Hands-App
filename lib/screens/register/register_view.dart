import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '/resources/dimens_manager.dart';
import '../../resources/assets_manager.dart';
import '../../resources/colors_manager.dart';
import '../../resources/routes_manager.dart';
import '../../resources/strings_manager.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
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
              const SizedBox(
                height: MarginsManager.topMarginWithoutAppBar,
              ),
              Text(
                textAlign: TextAlign.center,
                StringsManager.registerScreenTitle,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(
                height: MarginsManager.marginBetweenSectionsViews,
              ),
              Text(
                StringsManager.registerScreenSubTitle,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(
                height: MarginsManager.marginBetweenSections,
              ),
              CircleAvatar(
                backgroundImage: AssetImage(
                  ImageAssetsManager.appLogo,
                ),
                backgroundColor: ColorsManager.screenColor,
                radius: ValuesManager.imagePicker,
              ),
              const SizedBox(
                height: MarginsManager.marginBetweenSectionsViews,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: StringsManager.enterName,
                  label: Text(
                    StringsManager.name,
                  ),
                ),
              ),
              const SizedBox(
                height: MarginsManager.marginBetweenSectionsViews,
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
                decoration: InputDecoration(
                  hintText: StringsManager.enterPhone,
                  label: Text(
                    StringsManager.phone,
                  ),
                ),
              ),
              const SizedBox(
                height: MarginsManager.marginBetweenSectionsViews,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: StringsManager.selectDateOfBirth,
                  label: Text(
                    StringsManager.dateOfBirth,
                  ),
                ),
              ),
              const SizedBox(
                height: MarginsManager.marginBetweenSectionsViews,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: StringsManager.enterAddress,
                  label: Text(
                    StringsManager.address,
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
                    RoutesManager.userTypeRoute,
                  );
                },
                child: Text(
                  StringsManager.next,
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
                    StringsManager.alreadyHaveAccount,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  SizedBox(
                    width: MarginsManager.marginBetweenSectionsViews,
                  ),
                  GestureDetector(
                    child: Text(
                      StringsManager.loginNow,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    onTap: () => {
                      Navigator.pushReplacementNamed(
                        context,
                        RoutesManager.loginRoute,
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
