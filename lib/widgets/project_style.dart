import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helping_hands_app/dummy_data.dart';

import '../resources/colors_manager.dart';
import '../resources/dimens_manager.dart';

class ProjectStyle extends StatelessWidget {
  ProjectModel projectModel;

  ProjectStyle({Key? key, required this.projectModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width - 12;
    double widthOfBoxBar = width * 0.85;
    double widthOfCompletedBar = width * projectModel.percentage / 150;

    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      color: ColorsManager.appBarColor,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            Container(
              width: widthOfBoxBar,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    projectModel.name,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    projectModel.isGivingFunds
                        ? "Funding by ${projectModel.projectBy}"
                        : "Funding to ${projectModel.projectBy}",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Current Module:",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        projectModel.currentModule,
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Current Module Deadline:",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        projectModel.completionDate,
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
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
                            height: 16,
                            width: widthOfCompletedBar,
                          ),
                          Text(
                            projectModel.percentage.toString(),
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
          ],
        ),
      ),
    );
  }
}
