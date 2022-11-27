import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helping_hands_app/resources/colors_manager.dart';
import 'package:helping_hands_app/resources/strings_manager.dart';

class PrivacyPolicyView extends StatelessWidget {
  const PrivacyPolicyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Privacy Policy",
            style: Theme.of(context).textTheme.titleMedium),
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
