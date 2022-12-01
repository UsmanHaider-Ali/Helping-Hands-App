import 'package:flutter/material.dart';
import 'package:helping_hands_app/resources/routes_manager.dart';
import 'package:helping_hands_app/widgets/chat_style.dart';

import '../../dummy_data.dart';
import '../../resources/colors_manager.dart';

class ChatView extends StatelessWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (
            buildcontext,
            index,
          ) {
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, RoutesManager.chatDetailRoute);
              },
              child: ChatStyle(
                userName: users[index]['name'].toString(),
                lastMessage: users[index]['message'].toString(),
                time: users[index]['time'].toString(),
                image: users[index]['profilePic'].toString(),
                unReadMessage: index / 2 == 0 ? index+1 : index + 2,
                color: index / 2 == 0 ? ColorsManager.primaryColor : ColorsManager.primaryColor,
              ),
            );
          }),
    );
  }
}
