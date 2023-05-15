import 'package:flutter/material.dart';
import 'package:helping_hands_app/resources/colors_manager.dart';
import 'package:helping_hands_app/resources/routes_manager.dart';
import 'package:helping_hands_app/screens/campaign/all_campaigns_view.dart';
import 'package:helping_hands_app/screens/campaign/my_campaigns.dart';
import 'package:helping_hands_app/screens/conservations/conservations.dart';
import 'package:helping_hands_app/screens/projects/projects_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../resources/assets_manager.dart';
import '../../resources/dimens_manager.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _selectedIndex = 0;

  final List<Widget> _menuScreens = <Widget>[
    const AllCampaignsView(),
    const MyCampaigns(),
    const ProjectsView(),
    const Conservations(),
  ];

  void _onBottomNavClick(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage:const AssetImage(
                      ImageAssetsManager.appLogo,
                    ),
                    backgroundColor: ColorsManager.screenColor,
                    radius: ValuesManager.imagePicker,
                  ),
               const   SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Ali Haider",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
            ),
            ListTile(
              leading:const Icon(
                Icons.home,
              ),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, RoutesManager.mainRoute);
              },
            ),
            ListTile(
              leading:const Icon(
                Icons.person,
              ),
              title: const Text('Profile'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, RoutesManager.userProfileRoute);
              },
            ),
            ListTile(
              leading:const Icon(
                Icons.favorite,
              ),
              title: const Text('Favourite'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, RoutesManager.favouriteRoute);
              },
            ),
            ListTile(
              leading:const Icon(
                Icons.auto_stories,
              ),
              title: const Text('Success Stories'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, RoutesManager.successStoriesRoute);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.history,
              ),
              title: const Text('Transactions History'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(
                    context, RoutesManager.transactionsHistoryRoute);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.article_rounded,
              ),
              title: const Text('Terms and Conditions'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(
                    context, RoutesManager.termsConditionsRoute);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.privacy_tip,
              ),
              title: const Text('Privacy Policy'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, RoutesManager.privacyPolicyRoute);
              },
            ),
            ListTile(
              leading:const Icon(
                Icons.supervised_user_circle_rounded,
              ),
              title: const Text('About Us'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, RoutesManager.aboutUsRoute);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.logout,
              ),
              title: const Text('Logout'),
              onTap: () {
                logoutUser(context);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: ColorsManager.primaryColor,
        ),
      ),
      body: Center(
        child: _menuScreens.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.apps,
            ),
            label: "My Campaigns",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.assignment,
            ),
            label: "Projects",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat,
            ),
            label: "Conservation",
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        onTap: _onBottomNavClick,
      ),
    );
  }
}

Future<void> logoutUser(BuildContext context) async {
  SharedPreferences userDetail = await SharedPreferences.getInstance();
  userDetail.setString('id', "");
  userDetail.setString('type', "");
  userDetail.setBool('isUserLoggedIn', false);

  Navigator.pushReplacementNamed(context, RoutesManager.loginRoute);
}
