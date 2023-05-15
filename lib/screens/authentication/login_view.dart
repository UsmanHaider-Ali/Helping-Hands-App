import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../models/user/User.dart';
import '../../network/APIs.dart';
import '../../resources/assets_manager.dart';
import '../../resources/dimens_manager.dart';
import '../../resources/routes_manager.dart';
import '../../resources/strings_manager.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isLoading = false;

  void login(String email, password) async {
    setState(() {
      isLoading = true;
    });

    try {
      Response response = await post(Uri.parse(APIs.loginUser),
          body: {'email': email, 'password': password});
      final jsonResponse = json.decode(response.body);

      var message = jsonResponse['message'];

      if (message == "User login successfully.") {
        final user = User.fromJson(jsonResponse['user']);

        SharedPreferences userDetail = await SharedPreferences.getInstance();

        userDetail.setString('id', user.id);
        userDetail.setBool('isUserLoggedIn', true);

        WidgetsBinding.instance.addPostFrameCallback((_) {
          Navigator.pushNamed(context, RoutesManager.mainRoute);
        });

        setState(() {
          isLoading = false;
        });
      } else {
        setState(() {
          isLoading = false;
        });
        Fluttertoast.showToast(
            msg: message,
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.grey,
            textColor: Colors.white,
            fontSize: 16.0);
      }
    } catch (e) {
      setState(() {
        isLoading = false;
      });
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
                controller: emailController,
                style: Theme.of(context).textTheme.bodyLarge,
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
              TextField(
                controller: passwordController,
                obscureText: true,
                style: Theme.of(context).textTheme.bodyLarge,
                decoration: const InputDecoration(
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
                    onTap: (() => {
                          Navigator.pushNamed(
                            context,
                            RoutesManager.forgotPasswordRoute,
                          )
                        }),
                    child: Text(
                      StringsManager.ForgotPassword,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: MarginsManager.marginBetweenSectionsViews,
              ),
              ElevatedButton(
                onPressed: isLoading
                    ? null
                    : () {
                        login(emailController.text, passwordController.text);
                      },
                child: isLoading
                    ? const Padding(
                        padding: EdgeInsets.all(4.0),
                        child: CircularProgressIndicator(
                          color: Colors.white,
                        ),
                      )
                    : const Text(
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
              const SizedBox(
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
                  const SizedBox(
                    width: MarginsManager.marginBetweenSectionsViews,
                  ),
                  GestureDetector(
                    child: Text(
                      StringsManager.registerNow,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    onTap: () => {
                      Navigator.pushNamed(
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
