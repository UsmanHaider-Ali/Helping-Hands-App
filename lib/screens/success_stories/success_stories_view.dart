import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helping_hands_app/resources/colors_manager.dart';

class SuccessStoriesView extends StatelessWidget {
  const SuccessStoriesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Success Stories",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        iconTheme: IconThemeData(
          color: ColorsManager.primaryTextColor,
        ),
      ),
      body: Center(
        child: Text("Coming Soon..."),
      ),
    );
  }
}
