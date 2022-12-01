import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helping_hands_app/resources/colors_manager.dart';

import '../../resources/strings_manager.dart';
import '../../widgets/selected_image_style.dart';

class PostQuestionView extends StatelessWidget {
  const PostQuestionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Question",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        iconTheme: IconThemeData(color: ColorsManager.primaryTextColor),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                StringsManager.loginScreenTitle,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                StringsManager.loginScreenSubTitle,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(
                height: 100,
                child: Row(children: [
                  Icon(
                    Icons.add_photo_alternate,
                    color: ColorsManager.lightTextColor,
                    size: 64,
                  ),
                  Expanded(
                    child: ListView.builder(
                      physics: ClampingScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) => InkWell(
                        child: SelectedImageView(),
                        onTap: () {
                          // _onCategoryClick(index);
                        },
                      ),
                    ),
                  ),
                ]),
              ),
              SizedBox(
                height: 12,
              ),
              TextField(
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  hintText: "Enter Name",
                  label: Text(
                    "Name",
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              TextField(
                keyboardType: TextInputType.multiline,
                maxLines: 5,
                decoration: InputDecoration(
                  hintText: "Enter Description",
                  label: Text(
                    "Description",
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              TextField(
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  hintText: "Select Category",
                  label: Text(
                    "Category",
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  "Add Question",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
