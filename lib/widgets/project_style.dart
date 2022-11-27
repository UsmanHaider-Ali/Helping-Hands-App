import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../resources/colors_manager.dart';
import '../resources/dimens_manager.dart';

class ProjectStyle extends StatelessWidget {
  const ProjectStyle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double widthOfBoxBar = width * 0.85;
    double widthOfCompletedBar = width * 0.5;

    return Card(
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
                    "Mobile App",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    "Funding by Ali Haider",
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
                        "Design Mobile App",
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
                        "31 December, 2022",
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
                          const Text(
                            "70%",
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
