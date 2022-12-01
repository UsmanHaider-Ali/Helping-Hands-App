import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helping_hands_app/resources/routes_manager.dart';
import 'package:helping_hands_app/widgets/transaction_list_style.dart';

import '../../resources/colors_manager.dart';
import '../../widgets/category_title_style.dart';

class TransactionsHistoryView extends StatefulWidget {
  const TransactionsHistoryView({Key? key}) : super(key: key);

  @override
  State<TransactionsHistoryView> createState() =>
      _TransactionsHistoryViewState();
}

class _TransactionsHistoryViewState extends State<TransactionsHistoryView> {
  List<String> catList = [
    'All',
    '1W',
    '1M',
    '3M',
    '6M',
  ];
  int _selectedIndex = 0;

  void _onCategoryClick(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
                "Current Balance",
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
              SizedBox(
                height: 8,
              ),
              Text(
                "Transactions",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: SizedBox(
                  height: 36.0,
                  child: ListView.builder(
                    physics: ClampingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: catList.length,
                    itemBuilder: (BuildContext context, int index) => InkWell(
                      child: CategoryStyle(
                        textStyle: _selectedIndex == index
                            ? TextStyle(
                                color: ColorsManager.primaryColor,
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.underline,
                              )
                            : TextStyle(
                                color: ColorsManager.lightTextColor,
                              ),
                        title: catList[index],
                      ),
                      onTap: () {
                        _onCategoryClick(index);
                      },
                    ),
                  ),
                ),
              ),
              ListView.builder(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) => InkWell(
                  child: TransactionListStyle(
                    title: "Mobile App Design",
                    timeStamp: "12 August 2000",
                    amount: 5.0,
                    isReceived: index % 2 == 0,
                  ),
                  onTap: () {
                    Navigator.pushNamed(
                        context, RoutesManager.transactionDetailsRoute);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
