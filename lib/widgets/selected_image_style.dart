import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helping_hands_app/resources/assets_manager.dart';

class SelectedImageView extends StatelessWidget {
  const SelectedImageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Stack(children: [
        Container(
          height: 80,
          width: 80,
          alignment: Alignment.topRight,
          child: Icon(
            Icons.cancel,
          ),
        ),
        Image.asset(
          ImageAssetsManager.appLogo,
        ),
      ]),
    );
  }
}
