import 'package:flutter/material.dart';
import 'package:helping_hands_app/screens/chat/chat_view.dart';
import 'package:helping_hands_app/screens/discussion/discussion_view.dart';
import 'package:helping_hands_app/widgets/category_title_style.dart';

import '../../resources/colors_manager.dart';

class Conservations extends StatefulWidget {
  const Conservations({super.key});

  @override
  State<Conservations> createState() => _ConservationsState();
}

class _ConservationsState extends State<Conservations> {
  int _selectedIndex = 0;

  void _onCategoryClick(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<String> menuList = ["Chat", "Blog"];
  final List<Widget> menuScreen = [
    ChatView(),
    DiscussionView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Search",
                prefixIcon: Icon(
                  Icons.search,
                  color: ColorsManager.lightTextColor,
                ),
              ),
            ),
            SizedBox(
              height: 36.0,
              child: ListView.builder(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 2,
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
                    title: menuList[index],
                  ),
                  onTap: () {
                    _onCategoryClick(index);
                  },
                ),
              ),
            ),
            SizedBox(
              height: 500,
              child: menuScreen[_selectedIndex],
            ),
          ],
        ),
      ),
    );
  }
}
