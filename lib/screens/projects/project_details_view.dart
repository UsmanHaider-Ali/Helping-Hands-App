import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helping_hands_app/resources/colors_manager.dart';
import 'package:helping_hands_app/widgets/project_module_style.dart';

import '../../resources/dimens_manager.dart';
import '../../resources/strings_manager.dart';

class ProjectDetailsView extends StatelessWidget {
  const ProjectDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double widthOfBoxBar = width * 0.9;
    double widthOfCompletedBar = width * 0.5;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Project Details",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        iconTheme: IconThemeData(
          color: ColorsManager.primaryTextColor,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      textAlign: TextAlign.start,
                      "Project Name",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      StringsManager.loginScreenSubTitle,
                      textAlign: TextAlign.start,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Row(
                      children: [
                        Text(
                          "Funded By",
                          textAlign: TextAlign.start,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        SizedBox(
                          width: 32,
                        ),
                        Text(
                          "Ali Haider",
                          textAlign: TextAlign.start,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        Container(),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Text(
                          "Duration",
                          textAlign: TextAlign.start,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Column(
                          children: [
                            Text(
                              "From 22 December, 2022",
                              textAlign: TextAlign.start,
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            Text(
                              "From 22 December, 2023",
                              textAlign: TextAlign.start,
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Completion Status",
                      textAlign: TextAlign.start,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    SizedBox(
                      height: 2,
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
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      textAlign: TextAlign.start,
                      "Project Modules Details",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
              ),
              ListView.builder(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) => InkWell(
                  child: ProjectModuleStyle(),
                  onTap: () {
                    // Navigator.pushNamed(context, RoutesManager.campaignDetailRoute);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
