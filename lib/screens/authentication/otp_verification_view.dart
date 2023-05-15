import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart';

import '../../network/APIs.dart';
import '../../resources/assets_manager.dart';
import '../../resources/dimens_manager.dart';
import '../../resources/routes_manager.dart';
import '../../resources/strings_manager.dart';

class OtpVerificationView extends StatefulWidget {
  const OtpVerificationView({super.key});

  @override
  State<OtpVerificationView> createState() => _OtpVerificationViewState();
}

class _OtpVerificationViewState extends State<OtpVerificationView> {
  final otpController = TextEditingController();

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
            const SizedBox(
              height: MarginsManager.marginBetweenSections,
            ),
            Text(
              textAlign: TextAlign.center,
              StringsManager.loginScreenTitle,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(
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
              controller: otpController,
              decoration: const InputDecoration(
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
              onPressed: () {},
              child: const Text(
                StringsManager.next,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
