import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helping_hands_app/resources/colors_manager.dart';

class ReceiverMessageStyle extends StatelessWidget {
  final String message, timeStamp;
  final bool isMessageSeen;

  const ReceiverMessageStyle({
    Key? key,
    required this.message,
    required this.timeStamp,
    required this.isMessageSeen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 45,
        ),
        child: Card(
          color: ColorsManager.receiverChatBG,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
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
    );
  }
}
