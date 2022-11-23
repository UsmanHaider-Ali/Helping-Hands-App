import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helping_hands_app/widgets/campaign_style.dart';
import 'package:helping_hands_app/widgets/receiver_message_style.dart';

import '../../resources/colors_manager.dart';

class ChatDetailView extends StatelessWidget {
  const ChatDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Ali Haider",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CampaignStyle(),
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (
                  buildcontext,
                  index,
                ) =>
                    ReceiverMessageStyle(
                  message:
                      "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat.",
                  timeStamp: "12:22 AM",
                  isMessageSeen: true,
                ),
              ),
            ),
            Expanded(
              flex: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.add,
                    color: ColorsManager.lightTextColor,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Answer now",
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Icon(
                    Icons.send,
                    color: ColorsManager.lightTextColor,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
