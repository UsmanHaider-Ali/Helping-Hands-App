import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:helping_hands_app/resources/routes_manager.dart';

import '../../resources/colors_manager.dart';
import '../../widgets/campaign_style.dart';
import '../../widgets/category_title_style.dart';

class MyCampaigns extends StatefulWidget {
  const MyCampaigns({super.key});

  @override
  State<MyCampaigns> createState() => _MyCampaignsState();
}

class _MyCampaignsState extends State<MyCampaigns> {
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
      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorsManager.primaryColor,
        child: Icon(
          Icons.add,
        ),
        onPressed: () {
          Navigator.pushNamed(context, RoutesManager.startCampaignRoute);
        },
      ),
    );
  }
}
