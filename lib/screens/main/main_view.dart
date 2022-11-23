import 'package:flutter/material.dart';
import 'package:helping_hands_app/resources/colors_manager.dart';
import 'package:helping_hands_app/screens/conservations/conservations.dart';
import 'package:helping_hands_app/screens/home/home_view.dart';
import 'package:helping_hands_app/screens/my_campaigns/my_campaigns.dart';
import 'package:helping_hands_app/screens/my_projects/my_projects.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _selectedIndex = 0;

  List<Widget> _menuScreens = <Widget>[
    HomeView(),
    MyCampaigns(),
    MyProjects(),
    Conservations(),
  ];

  void _onBottomNavClick(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
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
