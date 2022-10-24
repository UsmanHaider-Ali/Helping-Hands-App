import 'package:flutter/material.dart';
import '../screens/campaign_detail/campaign_detail_view.dart';
import '../screens/chat/chat_view.dart';
import '../screens/discussion/discussion_view.dart';
import '../screens/forgot_password/forgot_password_view.dart';
import '../screens/login/login_view.dart';
import '../screens/onboarding/onboarding_view.dart';
import '../screens/opt/otp_view.dart';
import '../screens/splash/splash_view.dart';
import '../screens/start_campaign/start_campaign_view.dart';
import '../screens/update_password/update_password_view.dart';
import '../screens/user_type/user_type_view.dart';

import '../screens/register/register_view.dart';
import 'strings_manager.dart';

class RoutesManager {
  static const String splashRoute = '/';
  static const String onBoardingRoute = '/onBoarding';
  static const String loginRoute = '/login';
  static const String registerRoute = '/register';
  static const String userTypeRoute = '/userType';
  static const String otpRoute = '/otp';
  static const String forgotPasswordRoute = '/forgotPassword';
  static const String updatePasswordRoute = '/updatePassword';
  static const String mainRoute = '/main';
  static const String startCampaignRoute = '/startCampaign';
  static const String campaignDetailRoute = '/campaignDetail';
  static const String chatRoute = '/chatDetail';
  static const String discussionRoute = '/discussion';
}

class RoutesGenerator {
  static Route<dynamic> getRoute(
    RouteSettings routeSettings,
  ) {
    switch (routeSettings.name) {
      case RoutesManager.splashRoute:
        return MaterialPageRoute(
          builder: (_) => SplashView(),
        );
      case RoutesManager.onBoardingRoute:
        return MaterialPageRoute(
          builder: (_) => OnBoardingView(),
        );
      case RoutesManager.loginRoute:
        return MaterialPageRoute(
          builder: (_) => LoginView(),
        );
      case RoutesManager.registerRoute:
        return MaterialPageRoute(
          builder: (_) => RegisterView(),
        );
      case RoutesManager.userTypeRoute:
        return MaterialPageRoute(
          builder: (_) => UserTypeView(),
        );
      case RoutesManager.otpRoute:
        return MaterialPageRoute(
          builder: (_) => OTPView(),
        );
      case RoutesManager.forgotPasswordRoute:
        return MaterialPageRoute(
          builder: (_) => ForgotPasswordView(),
        );
      case RoutesManager.updatePasswordRoute:
        return MaterialPageRoute(
          builder: (_) => UpdatePasswordView(),
        );
      case RoutesManager.startCampaignRoute:
        return MaterialPageRoute(
          builder: (_) => StartCampaignView(),
        );
      case RoutesManager.campaignDetailRoute:
        return MaterialPageRoute(
          builder: (_) => CampaignDetailView(),
        );
      case RoutesManager.chatRoute:
        return MaterialPageRoute(
          builder: (_) => ChatView(),
        );
      case RoutesManager.discussionRoute:
        return MaterialPageRoute(
          builder: (_) => DiscussionView(),
        );
      default:
        return unDefined();
    }
  }

  static Route<dynamic> unDefined() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text(
                  StringsManager.noRouteFound,
                ),
              ),
              body: const Center(
                child: Text(
                  StringsManager.noRouteFound,
                ),
              ),
            ));
  }
}
