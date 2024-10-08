import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuestionStyle extends StatelessWidget {
  final String question, lastAnswer, time;

  const QuestionStyle({
    Key? key,
    required this.question,
    required this.lastAnswer,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                question,
                style: Theme.of(context).textTheme.titleMedium,
                maxLines: 2,
              ),
              Text(
                lastAnswer,
                style: Theme.of(context).textTheme.bodySmall,
                maxLines: 4,
              ),
              SizedBox(
                height: 4,
              ),
              Container(
                alignment: Alignment.bottomRight,
                child: Text(
                  time,
                  style: Theme.of(context).textTheme.bodySmall,
                  textAlign: TextAlign.right,
                ),
              ),
            ],
          )),
    );
  }
}
