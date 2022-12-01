import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helping_hands_app/resources/colors_manager.dart';

class ProjectStartingView extends StatelessWidget {
  const ProjectStartingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Start Project",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        iconTheme: IconThemeData(color: ColorsManager.primaryTextColor),
      ),
    );
  }
}
