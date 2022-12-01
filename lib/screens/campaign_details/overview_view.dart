import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../resources/assets_manager.dart';
import '../../resources/colors_manager.dart';
import '../../resources/dimens_manager.dart';

class OverviewView extends StatefulWidget {
  const OverviewView({Key? key}) : super(key: key);

  @override
  State<OverviewView> createState() => _OverviewViewState();
}

class _OverviewViewState extends State<OverviewView> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double widthOfBoxBar = width * 0.6;
    double widthOfCompletedBar = width * 0.5;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Fund Raising for Flood",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        SizedBox(
          height: 4,
        ),
        Row(
          children: [
            Image.asset(
              ImageAssetsManager.appLogo,
              height: 48,
            ),
            SizedBox(
              width: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Created By",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                Text(
                  "Ali Haider",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          children: [
            Text(
              "Note: ",
              style: Theme.of(context).textTheme.bodySmall,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              "It can be a Long Term Project.",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Raised 100.0 ETH",
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  Text(
                    "Goal 200.0 ETH",
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ],
              ),
              SizedBox(
                height: 4,
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
                    height: 16,
                    width: width,
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
                        height: 16,
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
            ],
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          "Description",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
          style: Theme.of(context).textTheme.bodyMedium,
          textAlign: TextAlign.justify,
        ),
      ],
    );
  }
}
