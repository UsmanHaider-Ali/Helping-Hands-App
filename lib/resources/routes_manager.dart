import 'package:flutter/material.dart';

import '../screens/campaign_detail/campaign_detail_view.dart';
import '../screens/chat/chat_view.dart';
import '../screens/chat_detail/chat_detail_view.dart';
import '../screens/create_campaign/create_campaign.dart';
import '../screens/discussion/discussion_view.dart';
import '../screens/discussion_form_chat/discussion_form_chat.dart';
import '../screens/forgot_password/forgot_password_view.dart';
import '../screens/login/login_view.dart';
import '../screens/main/main_view.dart';
import '../screens/onboarding/onboarding_view.dart';
import '../screens/opt/otp_view.dart';
import '../screens/register/register_view.dart';
import '../screens/splash/splash_view.dart';
import '../screens/update_password/update_password_view.dart';
import '../screens/user_type/user_type_view.dart';
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
  static const String chatRoute = '/chat';
  static const String discussionRoute = '/discussion';
  static const String discussionChatRoute = '/discussionChat';
  static const String chatDetailRoute = '/chatDetail';
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
      case RoutesManager.mainRoute:
        return MaterialPageRoute(
          builder: (_) => MainView(),
        );
      case RoutesManager.startCampaignRoute:
        return MaterialPageRoute(
          builder: (_) => CreateCampaign(),
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
      case RoutesManager.discussionChatRoute:
        return MaterialPageRoute(
          builder: (_) => DiscussionFormChat(),
        );
      case RoutesManager.chatDetailRoute:
        return MaterialPageRoute(
          builder: (_) => ChatDetailView(),
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
