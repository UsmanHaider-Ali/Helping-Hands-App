import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helping_hands_app/resources/colors_manager.dart';

class ChatStyle extends StatelessWidget {
  final String userName, lastMessage, time, image;
  final int unReadMessage;
  final Color color;

  const ChatStyle(
      {Key? key,
      required this.userName,
      required this.lastMessage,
      required this.time,
      required this.unReadMessage,
      required this.image,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 32,
                    backgroundColor: Colors.transparent,
                    backgroundImage: NetworkImage(
                      image,
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          userName,
                          style: Theme.of(context).textTheme.titleMedium,
                          maxLines: 1,
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          lastMessage,
                          style: Theme.of(context).textTheme.bodySmall,
                          maxLines: 2,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 10,
                  backgroundColor: color,
                  child: Text(
                    unReadMessage.toString(),
                    style: TextStyle(
                      color: ColorsManager.whiteColor,
                      fontSize: 10,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  time,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
