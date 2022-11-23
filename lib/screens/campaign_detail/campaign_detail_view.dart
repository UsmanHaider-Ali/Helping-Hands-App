import 'package:flutter/material.dart';
import 'package:helping_hands_app/resources/colors_manager.dart';

class CampaignDetailView extends StatefulWidget {
  const CampaignDetailView({super.key});

  @override
  State<CampaignDetailView> createState() => _CampaignDetailViewState();
}

class _CampaignDetailViewState extends State<CampaignDetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Campaign Detail",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        iconTheme: IconThemeData(
          color: ColorsManager.primaryTextColor,
        ),
      ),
      body: Column(
        children: [
          Card(
            color: Colors.white,
            child: Container(),
          ),
        ],
      ),
    );
  }
}
