import 'package:flutter/material.dart';
import 'package:helping_hands_app/resources/colors_manager.dart';
import 'package:helping_hands_app/screens/campaign_details/action_plan_view.dart';
import 'package:helping_hands_app/screens/campaign_details/overview_view.dart';
import 'package:helping_hands_app/screens/campaign_details/risk_challenges_view.dart';
import 'package:helping_hands_app/screens/campaign_details/story_view.dart';

import '../../resources/dimens_manager.dart';
import '../../widgets/category_title_style.dart';

class CampaignDetailsView extends StatefulWidget {
  const CampaignDetailsView({super.key});

  @override
  State<CampaignDetailsView> createState() => _CampaignDetailsViewState();
}

class _CampaignDetailsViewState extends State<CampaignDetailsView> {
  late final List<String> _list = [
    'https://www.who.int/images/default-source/health-and-climate-change/rescue-operation-haiti-flood-c-un-photo-marco-dormino.tmb-1024v.jpg?sfvrsn=412ab270_1',
    'https://ichef.bbci.co.uk/news/976/cpsprodpb/76E8/production/_126504403_gettyimages-1242726142_kids976.jpg',
    'https://images.unsplash.com/photo-1547683905-f686c993aae5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8Zmxvb2R8ZW58MHx8MHx8&w=1000&q=80',
  ];

  PageController _pageController = PageController(
    initialPage: 0,
  );

  int _selectedIndex = 0;
  int imageSelectedAddress = 0;

  void _onCategoryClick(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<String> menuList = [
    "Overview",
    "Story",
    "Action Plan",
    "Risk and Challenges",
  ];
  final List<Widget> menuScreen = [
    OverviewView(),
    StoryView(),
    ActionPlanView(),
    RiskChallengesView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Campaign Details",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        iconTheme: IconThemeData(
          color: ColorsManager.primaryTextColor,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 200,
                child: Stack(
                  children: [
                    PageView.builder(
                        controller: _pageController,
                        itemCount: _list.length,
                        onPageChanged: (index) {
                          setState(() {
                            imageSelectedAddress = index;
                          });
                        },
                        itemBuilder: (context, index) {
                          return ImageSlider(
                            _list[index],
                          );
                        }),
                    Container(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (int i = 0; i < _list.length; i++)
                            _getIndicator(i, imageSelectedAddress),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      child: Card(
                        color: ColorsManager.lightTextColor.withOpacity(0.7),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            "Emergency",
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.topRight,
                      child: SizedBox(
                        height: 40,
                        width: 90,
                        child: Card(
                          color: ColorsManager.lightTextColor.withOpacity(0.7),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                alignment: Alignment.center,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.chat,
                                  ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Icon(
                                    Icons.favorite,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 36.0,
                child: ListView.builder(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: menuList.length,
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
              SingleChildScrollView(
                child: Expanded(
                  child: menuScreen[_selectedIndex],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _getIndicator(index, imageSelectedAddress) {
  if (index == imageSelectedAddress) {
    return _makeIndicator(true);
  } else {
    return _makeIndicator(false);
  }
}

Widget _makeIndicator(bool isSelected) {
  return Padding(
    padding: const EdgeInsets.symmetric(
      horizontal: 4,
      vertical: 12,
    ),
    child: Container(
      width: isSelected ? 24 : 8,
      height: 8,
      decoration: BoxDecoration(
        color: ColorsManager.primaryColor,
        borderRadius: BorderRadius.circular(
          ValuesManager.defaultRadious,
        ),
      ),
    ),
  );
}

class ImageSlider extends StatelessWidget {
  String imageAddress;

  ImageSlider(this.imageAddress, {super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12.0),
      child: Image.network(
        imageAddress,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
      ),
    );
  }
}
