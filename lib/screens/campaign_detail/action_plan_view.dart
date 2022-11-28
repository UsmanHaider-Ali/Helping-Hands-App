import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ActionPlanView extends StatelessWidget {
  const ActionPlanView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Action Plan",
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
