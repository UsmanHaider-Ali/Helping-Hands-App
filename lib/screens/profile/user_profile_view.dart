import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helping_hands_app/resources/colors_manager.dart';

import '../../resources/assets_manager.dart';
import '../../resources/dimens_manager.dart';
import '../../resources/routes_manager.dart';

class UserProfileView extends StatelessWidget {
  const UserProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: ColorsManager.primaryTextColor,
        ),
        title: Text(
          "Profile",
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(),
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(
                              ImageAssetsManager.appLogo,
                            ),
                            backgroundColor: ColorsManager.screenColor,
                            radius: ValuesManager.imagePicker,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Ali Haider",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                      InkWell(child: Icon(Icons.edit),onTap:(){
                        Navigator.pushNamed(context, RoutesManager.updateUserProfileRoute);
                      },),
                    ],
                  )),
              SizedBox(
                height: 16,
              ),
              Text(
                "Wallet Details",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Icon(
                    Icons.key,
                    color: ColorsManager.lightTextColor,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "3J98*****************************WNLy",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_downward,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "50.00 ETH",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_upward,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "30.00 ETH",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Contact Information",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Icon(
                    Icons.email,
                    color: ColorsManager.lightTextColor,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "AliHaider@gmai.com",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Icon(
                    Icons.contact_page_rounded,
                    color: ColorsManager.lightTextColor,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "+ 92 348 7236030",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Personal Information",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Icon(
                    Icons.date_range,
                    color: ColorsManager.lightTextColor,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "12 August 2000",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_pin,
                    color: ColorsManager.lightTextColor,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "G9/2, AGPR Colony, Islamabad, Pakistan",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(
                    context,
                    RoutesManager.updatePasswordRoute,
                  );
                },
                child: Text(
                  "Change Password",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
