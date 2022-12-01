import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helping_hands_app/dummy_data.dart';

import '../../resources/routes_manager.dart';
import '../../widgets/project_style.dart';

class AsDonorView extends StatelessWidget {
  AsDonorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: ClampingScrollPhysics(),
      shrinkWrap: true,
      itemCount: projectsList.length,
      itemBuilder: (BuildContext context, int index) => InkWell(
        child: ProjectStyle(
          projectModel: projectsList[index],
        ),
        onTap: () {
          Navigator.pushNamed(context, RoutesManager.projectDetailsRoute);
        },
      ),
    );
  }
}
