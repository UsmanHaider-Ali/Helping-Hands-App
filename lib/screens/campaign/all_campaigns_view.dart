import 'package:flutter/material.dart';
import 'package:helping_hands_app/dummy_data.dart';
import 'package:helping_hands_app/resources/colors_manager.dart';
import 'package:helping_hands_app/resources/routes_manager.dart';
import 'package:helping_hands_app/widgets/campaign_style.dart';
import 'package:helping_hands_app/widgets/category_title_style.dart';

class AllCampaignsView extends StatefulWidget {
  const AllCampaignsView({super.key});

  @override
  State<AllCampaignsView> createState() => _AllCampaignsViewState();
}

class _AllCampaignsViewState extends State<AllCampaignsView> {
  int _selectedIndex = 0;

  void _onCategoryClick(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<CampaignModel> campaignsList = getCampaignsList();
  final List categoryList = getCategoriesList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
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
              height: 40.0,
              child: ListView.builder(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: categoryList.length,
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
                    title: categoryList[index],
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
                itemCount: campaignsList.length,
                itemBuilder: (BuildContext context, int index) => InkWell(
                  child: CampaignStyle(
                    image: campaignsList[index].image,
                    name: campaignsList[index].name,
                    campaignBy: campaignsList[index].campaignBy,
                    raisedAmount: campaignsList[index].raisedAmount,
                    targetAmount: campaignsList[index].targetAmount,
                    timeLeft: campaignsList[index].timeLeft,
                  ),
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
