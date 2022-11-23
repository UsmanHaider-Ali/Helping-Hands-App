import 'package:flutter/material.dart';
import 'package:helping_hands_app/resources/routes_manager.dart';
import 'package:helping_hands_app/widgets/chat_style.dart';

class ChatView extends StatelessWidget {
  const ChatView({Key? key}) : super(key: key);

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
                Navigator.pushNamed(context, RoutesManager.chatDetailRoute);
              },
              child: ChatStyle(
                userName: "User $index",
                lastMessage: "Forward inter aphson nd regule eeee eea.",
                time: "$index:$index$index AM",
                unReadMessage: 5,
              ),
            );
          }),
    );
  }
}
