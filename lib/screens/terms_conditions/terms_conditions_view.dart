import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../resources/colors_manager.dart';
import '../../resources/strings_manager.dart';

class TermsConditionsView extends StatelessWidget {
  const TermsConditionsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Terms and Conditions", style: Theme.of(context).textTheme.titleMedium,),
        iconTheme: IconThemeData(color: ColorsManager.primaryTextColor),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                StringsManager.loremIpsumText,
                textAlign: TextAlign.justify,
              )
            ],
          ),
        ),
      ),
    );
  }
}
