import 'package:flutter/material.dart';
import 'package:helping_hands_app/resources/routes_manager.dart';
import 'package:helping_hands_app/widgets/question_style.dart';

import '../../resources/colors_manager.dart';

class DiscussionView extends StatefulWidget {
  const DiscussionView({super.key});

  @override
  State<DiscussionView> createState() => _DiscussionViewState();
}

class _DiscussionViewState extends State<DiscussionView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (
          buildcontext,
          index,
        ) {
          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, RoutesManager.discussionChatRoute);
            },
            child: QuestionStyle(
              question: "Question $index",
              lastAnswer:
                  "Forward interpolation but ab center b included ha so central b a skta ha or umm newton raphson nd regula.",
              time: "$index:$index$index AM",
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorsManager.primaryColor,
        child: Icon(
          Icons.add,
        ),
        onPressed: () {
          // Navigator.pushNamed(context, RoutesManager.startCampaignRoute);
        },
      ),
    );
  }
}
