import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../dummy_data.dart';
import '../../resources/routes_manager.dart';
import '../../widgets/campaign_style.dart';

class FavouriteCampaignsView extends StatelessWidget {
  FavouriteCampaignsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
          Navigator.pushNamed(context, RoutesManager.campaignDetailRoute);
        },
      ),
    );
  }
}
