import 'package:flutter/material.dart';
import 'package:helping_hands_app/resources/routes_manager.dart';
import 'package:helping_hands_app/widgets/question_style.dart';

import '../../dummy_data.dart';
import '../../resources/colors_manager.dart';

class DiscussionView extends StatefulWidget {
  DiscussionView({super.key});

  @override
  State<DiscussionView> createState() => _DiscussionViewState();
}

class _DiscussionViewState extends State<DiscussionView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: questions.length,
        itemBuilder: (
          buildcontext,
          index,
        ) {
          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, RoutesManager.discussionChatRoute);
            },
            child: QuestionStyle(
              question: questions[index]['question'].toString(),
              lastAnswer: questions[index]['answer'].toString(),
              time: questions[index]['time'].toString(),
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
          Navigator.pushNamed(context, RoutesManager.postQuestionRoute);
        },
      ),
    );
  }
}
