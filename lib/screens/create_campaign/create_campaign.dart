import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helping_hands_app/resources/colors_manager.dart';

import '../../resources/strings_manager.dart';
import '../../widgets/selected_image_style.dart';

class CreateCampaign extends StatefulWidget {
  const CreateCampaign({Key? key}) : super(key: key);

  @override
  State<CreateCampaign> createState() => _CreateCampaignState();
}

class _CreateCampaignState extends State<CreateCampaign> {
  int _selectedIndex = 0;
  bool isChecked = false;

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
          "Start Campaign",
        ),
        iconTheme: IconThemeData(
          color: ColorsManager.primaryTextColor,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
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
                child: ListView.builder(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) => InkWell(
                    child: SelectedImageView(),
                    onTap: () {
                      _onCategoryClick(index);
                    },
                  ),
                ),
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
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Select Start Date",
                        label: Text(
                          "Start Date",
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Select End Date",
                        label: Text(
                          "End Date",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              TextField(
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  hintText: "Enter Required Amount",
                  label: Text(
                    "Required Amount",
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              TextField(
                maxLines: 5,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  hintText: "Enter Story",
                  label: Text(
                    "Story",
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              TextField(
                maxLines: 5,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  hintText: "Enter Action Plan",
                  label: Text(
                    "Action Plan",
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
                  hintText: "Enter Risk and Challenges",
                  label: Text(
                    "Risk and Challenges",
                  ),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Checkbox(
                    value: isChecked,
                    activeColor: ColorsManager.primaryColor,
                    onChanged: (value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  Text(
                    "Is Long Term Project?",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  "Create Campaign",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
