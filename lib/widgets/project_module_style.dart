import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../resources/colors_manager.dart';

class ProjectModuleStyle extends StatelessWidget {
  const ProjectModuleStyle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: ColorsManager.appBarColor,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Design Mobile App",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    "Syncing files to device Android SDK built. Syncing files to device Android SDK built.",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Funding to Ali Haider",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      Text(
                        "Budget",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      SizedBox(
                        width: 32,
                      ),
                      Text(
                        "50 ETH",
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      Text(
                        "Duration",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      SizedBox(
                        width: 23,
                      ),
                      Text(
                        "12 December 2022 - 31 December 2023",
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      Text(
                        "Status",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      SizedBox(
                        width: 36,
                      ),
                      Text(
                        "Completed",
                        style: TextStyle(color: Colors.green),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Raise Issue",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      SizedBox(
                        width: 36,
                      ),
                      Text(
                        "Mark as Completed",
                        style: TextStyle(
                          color: ColorsManager.primaryColor,
                        ),
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
