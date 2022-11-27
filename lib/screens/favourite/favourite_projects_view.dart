import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helping_hands_app/widgets/project_style.dart';

import '../../resources/routes_manager.dart';

class FavouriteProjectsView extends StatelessWidget {
  const FavouriteProjectsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: ClampingScrollPhysics(),
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) => InkWell(
        child: ProjectStyle(),
        onTap: () {
          Navigator.pushNamed(context, RoutesManager.projectDetailsRoute);
        },
      ),
    );
  }
}
