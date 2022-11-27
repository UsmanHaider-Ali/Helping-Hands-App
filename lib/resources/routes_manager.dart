import 'package:flutter/material.dart';
import 'package:helping_hands_app/screens/about_us/about_us_view.dart';
import 'package:helping_hands_app/screens/favourite/favourite_view.dart';
import 'package:helping_hands_app/screens/privacy_policy/privacy_policy_view.dart';
import 'package:helping_hands_app/screens/profile/update_user_profile_view.dart';
import 'package:helping_hands_app/screens/profile/user_profile_view.dart';
import 'package:helping_hands_app/screens/projects/project_details_view.dart';
import 'package:helping_hands_app/screens/success_stories/success_stories_view.dart';
import 'package:helping_hands_app/screens/terms_conditions/terms_conditions_view.dart';
import 'package:helping_hands_app/screens/transaction_details/transaction_details_view.dart';
import 'package:helping_hands_app/screens/transactions_history/transactions_history_view.dart';

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
  static const String userProfileRoute = '/userProfile';
  static const String updateUserProfileRoute = '/updateUserProfile';
  static const String favouriteRoute = '/favourit';
  static const String privacyPolicyRoute = '/privacyPolicy';
  static const String termsConditionsRoute = '/termsConditions';
  static const String aboutUsRoute = '/aboutUs';
  static const String transactionsHistoryRoute = '/transactionsHistory';
  static const String transactionDetailsRoute = '/transactionDetail';
  static const String successStoriesRoute = '/successStories';
  static const String projectDetailsRoute = '/projectDetails';
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
      case RoutesManager.userProfileRoute:
        return MaterialPageRoute(
          builder: (_) => UserProfileView(),
        );
      case RoutesManager.updateUserProfileRoute:
        return MaterialPageRoute(
          builder: (_) => UpdateUserProfileView(),
        );
      case RoutesManager.favouriteRoute:
        return MaterialPageRoute(
          builder: (_) => FavouriteView(),
        );
      case RoutesManager.privacyPolicyRoute:
        return MaterialPageRoute(
          builder: (_) => PrivacyPolicyView(),
        );
      case RoutesManager.termsConditionsRoute:
        return MaterialPageRoute(
          builder: (_) => TermsConditionsView(),
        );
      case RoutesManager.aboutUsRoute:
        return MaterialPageRoute(
          builder: (_) => AboutUsView(),
        );
      case RoutesManager.transactionsHistoryRoute:
        return MaterialPageRoute(
          builder: (_) => TransactionsHistoryView(),
        );
      case RoutesManager.transactionDetailsRoute:
        return MaterialPageRoute(
          builder: (_) => TransactionDetailsView(),
        );
      case RoutesManager.successStoriesRoute:
        return MaterialPageRoute(
          builder: (_) => SuccessStoriesView(),
        );
      case RoutesManager.projectDetailsRoute:
        return MaterialPageRoute(
          builder: (_) => ProjectDetailsView(),
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
