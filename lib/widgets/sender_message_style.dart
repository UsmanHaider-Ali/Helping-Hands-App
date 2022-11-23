import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helping_hands_app/resources/colors_manager.dart';

class SenderMessageStyle extends StatelessWidget {
  final String message, timeStamp;
  final bool isMessageSeen;

  const SenderMessageStyle({
    Key? key,
    required this.message,
    required this.timeStamp,
    required this.isMessageSeen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 45,
        ),
        child: Card(
          color: ColorsManager.primaryColor,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          // color: messageColor,
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
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.white,
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
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.white60,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  const Icon(
                    Icons.done_all,
                    size: 20,
                    color: Colors.white60,
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
