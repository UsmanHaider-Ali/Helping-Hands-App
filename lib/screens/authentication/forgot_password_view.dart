import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../network/APIs.dart';
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
  final emailContoller = TextEditingController();

  void sendOtp(String email) async {
    try {
      Response response = await post(Uri.parse(APIs.sendOtp), body: {
        'email': email,
      });

      if (response.statusCode == 200) {
        var result = jsonDecode(response.body.toString());

        if (result['message'] == 'Check email for OTP verification.') {
          Map<String, dynamic> data = result['data'];
          int otpCode = data['otp_code'];
          String email = data['email'];

          Navigator.pushReplacementNamed(
            context,
            RoutesManager.updatePasswordRoute,
            arguments: {
              'otpCode': otpCode,
              'email': email,
            },
          );
        } else {
          Fluttertoast.showToast(
              msg: result['message'],
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.grey,
              textColor: Colors.white,
              fontSize: 16.0);
        }
      } else {
        Fluttertoast.showToast(
            msg: "Something wrong, please try again",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.grey,
            textColor: Colors.white,
            fontSize: 16.0);
      }
    } catch (e) {
      Fluttertoast.showToast(
          msg: e.toString(),
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.grey,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }

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
              controller: emailContoller,
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
              onPressed: () {
                sendOtp(emailContoller.text);
              },
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
