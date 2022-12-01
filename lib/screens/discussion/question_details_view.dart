import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helping_hands_app/resources/colors_manager.dart';
import 'package:helping_hands_app/widgets/sender_message_style.dart';

import '../../dummy_data.dart';
import '../../widgets/receiver_message_style.dart';

class QuestionDetailsView extends StatelessWidget {
  const QuestionDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          'Question Detail',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  child: Row(
                    children: [],
                  ),
                ),
                Expanded(
                  child: Text(
                    'Lorem ipsum dolor sit Lorem ipsum dolor sit Lorem ipsum',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.delete,
                        color: ColorsManager.lightTextColor,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Icon(
                        Icons.edit,
                        color: ColorsManager.lightTextColor,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Text(
              'Asked by Ali Haider',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            Expanded(
              flex: 1,
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
                            by: messages[index]['by'].toString(),
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
