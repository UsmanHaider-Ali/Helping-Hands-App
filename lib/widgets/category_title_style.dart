import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryStyle extends StatelessWidget {
  TextStyle textStyle;
  String title;

  CategoryStyle({Key? key, required this.textStyle, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Text(
        title,
        style: textStyle,
      ),
    );
  }
}
