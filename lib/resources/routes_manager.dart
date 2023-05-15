import 'package:flutter/material.dart';

import '/screens/about_us/about_us_view.dart';
import '/screens/campaign_details/campaign_details_view.dart';
import '/screens/discussion/post_question_view.dart';
import '/screens/favourite/favourite_view.dart';
import '/screens/privacy_policy/privacy_policy_view.dart';
import '/screens/profile/update_user_profile_view.dart';
import '/screens/profile/user_profile_view.dart';
import '/screens/projects/project_details_view.dart';
import '/screens/success_stories/success_stories_view.dart';
import '/screens/terms_conditions/terms_conditions_view.dart';
import '/screens/transaction/transaction_details_view.dart';
import '/screens/transaction/transactions_history_view.dart';
import '../screens/authentication/forgot_password_view.dart';
import '../screens/authentication/login_view.dart';
import '../screens/authentication/otp_view.dart';
import '../screens/authentication/registration_view.dart';
import '../screens/authentication/registration_second_view.dart';
import '../screens/campaign/create_campaign.dart';
import '../screens/chat/chat_details_view.dart';
import '../screens/chat/chat_view.dart';
import '../screens/discussion/discussion_view.dart';
import '../screens/discussion/question_details_view.dart';
import '../screens/main/main_view.dart';
import '../screens/onboarding/onboarding_view.dart';
import '../screens/profile/update_password_view.dart';
import '../screens/splash/splash_view.dart';
import 'strings_manager.dart';

class RoutesManager {
  static const String splashRoute = '/';
  static const String onBoardingRoute = '/onBoarding';
  static const String loginRoute = '/login';
  static const String registerRoute = '/register';
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
  static const String postQuestionRoute = '/postQuestion';
}

class RoutesGenerator {
  static Route<dynamic> getRoute(
    RouteSettings routeSettings,
  ) {
    switch (routeSettings.name) {
      case RoutesManager.splashRoute:
        return MaterialPageRoute(
          builder: (_) => const SplashView(),
        );
      case RoutesManager.onBoardingRoute:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingView(),
        );
      case RoutesManager.loginRoute:
        return MaterialPageRoute(
          builder: (_) => const LoginView(),
        );
      case RoutesManager.registerRoute:
        return MaterialPageRoute(
          builder: (_) => const RegistrationView(),
        );
      case RoutesManager.otpRoute:
        return MaterialPageRoute(
          builder: (_) => const OTPView(),
        );
      case RoutesManager.forgotPasswordRoute:
        return MaterialPageRoute(
          builder: (_) => const ForgotPasswordView(),
        );
      case RoutesManager.updatePasswordRoute:
        return MaterialPageRoute(
          builder: (_) => const UpdatePasswordView(),
        );
      case RoutesManager.mainRoute:
        return MaterialPageRoute(
          builder: (_) => const MainView(),
        );
      case RoutesManager.startCampaignRoute:
        return MaterialPageRoute(
          builder: (_) => const CreateCampaign(),
        );
      case RoutesManager.campaignDetailRoute:
        return MaterialPageRoute(
          builder: (_) => const CampaignDetailsView(),
        );
      case RoutesManager.chatRoute:
        return MaterialPageRoute(
          builder: (_) => const ChatView(),
        );
      case RoutesManager.discussionRoute:
        return MaterialPageRoute(
          builder: (_) => DiscussionView(),
        );
      case RoutesManager.discussionChatRoute:
        return MaterialPageRoute(
          builder: (_) => const QuestionDetailsView(),
        );
      case RoutesManager.chatDetailRoute:
        return MaterialPageRoute(
          builder: (_) => const ChatDetailsView(),
        );
      case RoutesManager.userProfileRoute:
        return MaterialPageRoute(
          builder: (_) => const UserProfileView(),
        );
      case RoutesManager.updateUserProfileRoute:
        return MaterialPageRoute(
          builder: (_) => const UpdateUserProfileView(),
        );
      case RoutesManager.favouriteRoute:
        return MaterialPageRoute(
          builder: (_) => const FavouriteView(),
        );
      case RoutesManager.privacyPolicyRoute:
        return MaterialPageRoute(
          builder: (_) => const PrivacyPolicyView(),
        );
      case RoutesManager.termsConditionsRoute:
        return MaterialPageRoute(
          builder: (_) => const TermsConditionsView(),
        );
      case RoutesManager.aboutUsRoute:
        return MaterialPageRoute(
          builder: (_) => const AboutUsView(),
        );
      case RoutesManager.transactionsHistoryRoute:
        return MaterialPageRoute(
          builder: (_) => const TransactionsHistoryView(),
        );
      case RoutesManager.transactionDetailsRoute:
        return MaterialPageRoute(
          builder: (_) => const TransactionDetailsView(),
        );
      case RoutesManager.successStoriesRoute:
        return MaterialPageRoute(
          builder: (_) => const SuccessStoriesView(),
        );
      case RoutesManager.projectDetailsRoute:
        return MaterialPageRoute(
          builder: (_) => const ProjectDetailsView(),
        );
      case RoutesManager.postQuestionRoute:
        return MaterialPageRoute(
          builder: (_) => const PostQuestionView(),
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
