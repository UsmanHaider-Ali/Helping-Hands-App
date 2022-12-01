import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helping_hands_app/widgets/campaign_style.dart';
import 'package:helping_hands_app/widgets/receiver_message_style.dart';
import 'package:helping_hands_app/widgets/sender_message_style.dart';

import '../../dummy_data.dart';
import '../../resources/colors_manager.dart';

class ChatDetailsView extends StatefulWidget {
  ChatDetailsView({Key? key}) : super(key: key);

  @override
  State<ChatDetailsView> createState() => _ChatDetailsViewState();
}

class _ChatDetailsViewState extends State<ChatDetailsView> {
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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CampaignStyle(
              image:
                  "https://blog.fundly.com/wp-content/uploads/2017/08/angies-battle-main-crowdfunding-page-example-1-1.png",
              name: "Crowdfunding Campaigns for Medical Expenses",
              campaignBy: "Angie’s Battle",
              targetAmount: 100.0,
              raisedAmount: 50.0,
              timeLeft: "07 Days",
            ),
            Expanded(
              child: ListView.builder(
                itemCount: messages.length,
                itemBuilder: (
                  buildcontext,
                  index,
                ) =>
                    messages[index]['isMe'].toString() == "false"
                        ? ReceiverMessageStyle(
                            message: messages[index]['text'].toString(),
                            timeStamp: messages[index]['time'].toString(),
                            isMessageSeen: true,
                            by: "_",
                          )
                        : SenderMessageStyle(
                            message: messages[index]['text'].toString(),
                            timeStamp: messages[index]['time'].toString(),
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
