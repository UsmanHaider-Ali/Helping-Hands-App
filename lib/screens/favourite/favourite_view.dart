import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helping_hands_app/screens/favourite/favourite_campaigns_view.dart';
import 'package:helping_hands_app/screens/favourite/favourite_projects_view.dart';

import '../../resources/colors_manager.dart';
import '../../widgets/category_title_style.dart';

class FavouriteView extends StatefulWidget {
  const FavouriteView({Key? key}) : super(key: key);

  @override
  State<FavouriteView> createState() => _FavouriteViewState();
}

class _FavouriteViewState extends State<FavouriteView> {
  int _selectedIndex = 0;

  void _onCategoryClick(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<String> menuList = ["Campaigns", "Projects"];
  final List<Widget> menuScreen = [
    FavouriteCampaignsView(),
    FavouriteProjectsView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Favourite",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        iconTheme: IconThemeData(
          color: ColorsManager.primaryTextColor,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
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
                height: 36.0,
                child: ListView.builder(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
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
                      title: menuList[index],
                    ),
                    onTap: () {
                      _onCategoryClick(index);
                    },
                  ),
                ),
              ),
              SizedBox(
                child: menuScreen[_selectedIndex],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
