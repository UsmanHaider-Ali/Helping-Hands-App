import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:helping_hands_app/screens/projects/as_donor_view.dart';
import 'package:helping_hands_app/screens/projects/as_receiver.dart';

import '../../resources/colors_manager.dart';
import '../../widgets/category_title_style.dart';

class ProjectsView extends StatefulWidget {
  const ProjectsView({super.key});

  @override
  State<ProjectsView> createState() => _ProjectsViewState();
}

class _ProjectsViewState extends State<ProjectsView> {
  int _selectedIndex = 0;

  void _onCategoryClick(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<String> menuList = ["As Donor", "As Receiver"];
  final List<Widget> menuScreen = [
    AsDonorView(),
    AsReceiverView(),
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
            Expanded(
              child: menuScreen[_selectedIndex],
            ),
          ],
        ),
      ),
    );
  }
}
