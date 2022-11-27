import 'package:flutter/material.dart';

import '../resources/assets_manager.dart';
import '../resources/colors_manager.dart';
import '../resources/dimens_manager.dart';
import '../resources/strings_manager.dart';

class CampaignStyle extends StatelessWidget {
  const CampaignStyle({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double widthOfBoxBar = width * 0.6;
    double widthOfCompletedBar = width * 0.3;
    return Card(
      color: ColorsManager.appBarColor,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            Container(
              child: Image.asset(
                ImageAssetsManager.appLogo,
                width: width * 0.25,
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Container(
              width: widthOfBoxBar,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Funds for Flood",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    "Campaign by Ali Haider",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Raised 1.5 ETH",
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      Text(
                        "Goal 3.0 ETH",
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ],
                  ),
                  Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: ColorsManager.lightTextColor,
                          borderRadius: BorderRadius.circular(
                            ValuesManager.defaultRadious,
                          ),
                        ),
                        height: 12,
                        width: widthOfBoxBar,
                      ),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: ColorsManager.primaryColor,
                              borderRadius: BorderRadius.circular(
                                ValuesManager.defaultRadious,
                              ),
                            ),
                            height: 12,
                            width: widthOfCompletedBar,
                          ),
                          const Text(
                            "50%",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.access_time,
                              color: ColorsManager.lightTextColor,
                              size: 20,
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              "05 Days Left",
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext bc) {
                                return Container(
                                  child: AlertDialog(
                                    backgroundColor: ColorsManager.appBarColor,
                                    content: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          textAlign: TextAlign.center,
                                          StringsManager.loginScreenTitle,
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium,
                                        ),
                                        SizedBox(
                                          height: MarginsManager
                                              .marginBetweenSectionsViews,
                                        ),
                                        Text(
                                          StringsManager.loginScreenSubTitle,
                                          textAlign: TextAlign.center,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium,
                                        ),
                                        SizedBox(
                                          height: MarginsManager
                                              .marginBetweenSections,
                                        ),
                                        TextField(
                                          decoration: InputDecoration(
                                            hintText: "Amount",
                                            label: Text(
                                              "Enter amount",
                                            ),
                                          ),
                                        ),
                                        ElevatedButton(
                                          onPressed: () {
                                            Navigator.of(context,
                                                    rootNavigator: true)
                                                .pop();
                                          },
                                          child: const Text(
                                            "Donate Now",
                                          ),
                                        ),
                                        SizedBox(
                                          height: MarginsManager
                                              .marginBetweenSections,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            Navigator.of(context,
                                                    rootNavigator: true)
                                                .pop();
                                          },
                                          child: Text(
                                            "Cancel",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              });
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Donate Now",
                              style: TextStyle(
                                fontSize: 12,
                                color: ColorsManager.primaryColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: ColorsManager.primaryColor,
                              size: 20,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
