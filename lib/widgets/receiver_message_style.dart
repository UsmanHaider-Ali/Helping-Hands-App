import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helping_hands_app/resources/colors_manager.dart';

class ReceiverMessageStyle extends StatelessWidget {
  final String message, timeStamp;
  final bool isMessageSeen;
  final String by;

  const ReceiverMessageStyle({
    Key? key,
    required this.message,
    required this.timeStamp,
    required this.isMessageSeen,
    required this.by,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width - 45,
            ),
            child: Card(
              color: ColorsManager.receiverChatBG,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              // color: senderMessageColor,
              margin: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 8,
              ),
              child: Stack(children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 30,
                    top: 5,
                    bottom: 20,
                  ),
                  child: Text(
                    message,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 14,
                      color: ColorsManager.primaryTextColor,
                    ),
                  ),
                ),
                // Positioned(
                //   left: 2,
                //   bottom: 4,
                //   child: Text(
                //     'Answer by: $by',
                //     style: TextStyle(
                //       fontSize: 13,
                //       color: ColorsManager.lightTextColor,
                //     ),
                //   ),
                // ),
                Positioned(
                  bottom: 2,
                  right: 4,
                  child: Row(
                    children: [
                      Text(
                        timeStamp,
                        style: TextStyle(
                          fontSize: 13,
                          color: ColorsManager.lightTextColor,
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Icon(
                        Icons.done_all,
                        size: 20,
                        color: ColorsManager.lightTextColor,
                      )
                    ],
                  ),
                ),
              ]),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Text(
            'Answer by: $by',
            style: TextStyle(
              fontSize: 12,
              color: ColorsManager.lightTextColor,
            ),
          ),
        ),
      ],
    );
  }
}
