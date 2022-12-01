import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../resources/assets_manager.dart';
import '../../resources/colors_manager.dart';
import '../../resources/dimens_manager.dart';
import '../../resources/routes_manager.dart';
import '../../resources/strings_manager.dart';

class UpdateUserProfileView extends StatelessWidget {
  const UpdateUserProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Update Profile",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        iconTheme: IconThemeData(
          color: ColorsManager.primaryTextColor,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: PaddingsManager.screenHorizontalPadding,
            vertical: PaddingsManager.screenVerticalPadding,
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 0,
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
                    RoutesManager.userProfileRoute,
                  );
                },
                child: Text(
                  "Update Profile",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
