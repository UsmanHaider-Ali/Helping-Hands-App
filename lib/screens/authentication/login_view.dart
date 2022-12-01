import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;

import '../../resources/assets_manager.dart';
import '../../resources/dimens_manager.dart';
import '../../resources/routes_manager.dart';
import '../../resources/strings_manager.dart';
import 'package:http/http.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final emailContoller = TextEditingController();
  final passwordContoller = TextEditingController();

  // void login(String email, password) async {
  //   try {
  //     Response response = await post(
  //         Uri.parse('http://10.0.2.2:3000/users/login-user'),
  //         body: {'email': email, 'password': password});

  //     if (response.statusCode == 200) {
  //       var data = jsonDecode(response.body.toString());
  //       print(data['message']);
  //       if (data['message'] == 'User login successfully.') {
  //         Navigator.pushNamed(context, RoutesManager.mainRoute);
  //       }
  //     } else {
  //       print('failed');
  //     }
  //   } catch (e) {
  //     print(e.toString());
  //   }
  // }

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
                controller: emailContoller,
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
                controller: passwordContoller,
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
                  // login(emailContoller.text, passwordContoller.text);
                },
                child: const Text(
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
