import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helping_hands_app/resources/colors_manager.dart';

class TransactionListStyle extends StatelessWidget {
  String title;
  String timeStamp;
  double amount;
  bool isReceived;

  TransactionListStyle({
    Key? key,
    required this.title,
    required this.timeStamp,
    required this.amount,
    required this.isReceived,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  Icon(
                    isReceived ? Icons.arrow_downward : Icons.arrow_upward,
                    color: ColorsManager.lightTextColor,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        timeStamp,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerRight,
              child: Row(
                children: [
                  Icon(
                    Icons.add,
                    color: isReceived ? Colors.green : Colors.red,
                  ),
                  Text(
                    '$amount ETH',
                    style: TextStyle(
                      color: isReceived ? Colors.green : Colors.red,
                    ),
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
