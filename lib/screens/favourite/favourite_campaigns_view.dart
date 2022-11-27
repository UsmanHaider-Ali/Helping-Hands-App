import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../resources/routes_manager.dart';
import '../../widgets/campaign_style.dart';

class FavouriteCampaignsView extends StatelessWidget {
  const FavouriteCampaignsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: ClampingScrollPhysics(),
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) => InkWell(
        child: CampaignStyle(),
        onTap: () {
          Navigator.pushNamed(context, RoutesManager.campaignDetailRoute);
        },
      ),
    );
  }
}
