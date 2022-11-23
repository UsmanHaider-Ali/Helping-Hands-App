import 'package:flutter/material.dart';
import 'package:helping_hands_app/resources/colors_manager.dart';
import 'package:helping_hands_app/resources/routes_manager.dart';
import 'package:helping_hands_app/widgets/campaign_style.dart';
import 'package:helping_hands_app/widgets/category_title_style.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;

  void _onCategoryClick(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: "Search",
                prefixIcon: Icon(
                  Icons.search,
                  color: ColorsManager.lightTextColor,
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            SizedBox(
              height: 36.0,
              child: ListView.builder(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) => InkWell(
                  child: CategoryStyle(
                    textStyle: _selectedIndex == index
                        ? TextStyle(
                            color: ColorsManager.primaryColor,
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.underline,
                          )
                        : TextStyle(
                            color: ColorsManager.lightTextColor,
                          ),
                    title: 'Category $index',
                  ),
                  onTap: () {
                    _onCategoryClick(index);
                  },
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) => InkWell(
                  child: CampaignStyle(),
                  onTap: () {
                    Navigator.pushNamed(
                        context, RoutesManager.campaignDetailRoute);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
