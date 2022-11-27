import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../resources/routes_manager.dart';
import '../../widgets/project_style.dart';

class AsReceiverView extends StatelessWidget {
  const AsReceiverView({Key? key}) : super(key: key);

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
