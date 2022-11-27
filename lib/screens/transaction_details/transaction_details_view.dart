import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../resources/colors_manager.dart';

class TransactionDetailsView extends StatelessWidget {
  const TransactionDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Transactions History",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        iconTheme: IconThemeData(
          color: ColorsManager.primaryTextColor,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Amount",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                "50.88 ETH",
                style: TextStyle(
                  color: ColorsManager.primaryTextColor,
                  fontSize: 48,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Text(
                "22:19, 22 August, 2022",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Transfer To",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                "3J98*****************************WNLy",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Purpose",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                "Lorem ipsum dolor sit amet consectetur adipisicing elit.",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
