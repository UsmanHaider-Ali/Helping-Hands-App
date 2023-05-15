import 'dart:convert';
import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';

import '../../network/APIs.dart';
import '/resources/dimens_manager.dart';
import '../../resources/assets_manager.dart';
import '../../resources/colors_manager.dart';
import '../../resources/routes_manager.dart';
import '../../resources/strings_manager.dart';
import 'package:http/http.dart' as http;

class RegistrationView extends StatefulWidget {
  const RegistrationView({super.key});

  @override
  State<RegistrationView> createState() => _RegistrationFirstViewState();
}

class _RegistrationFirstViewState extends State<RegistrationView> {
  File? _selectedImage;

  final walletKeyController = TextEditingController();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final addressController = TextEditingController();
  final dateOfBirthController = TextEditingController();
  final passwordController = TextEditingController();

  bool isLoading = false;

  Future<void> registerUser(
      {String? walletKey,
      String? name,
      String? email,
      String? phone,
      String? address,
      String? dateOfBirth,
      String? password,
      String? imagePath}) async {
    setState(() {
      isLoading = true;
    });
    var request = http.MultipartRequest('POST', Uri.parse(APIs.registerUser));

    request.fields['wallet_key'] = walletKey!;
    request.fields['name'] = name!;
    request.fields['email'] = email!;
    request.fields['phone'] = phone!;
    request.fields['address'] = address!;
    request.fields['date_of_birth'] = dateOfBirth!;
    request.fields['password'] = password!;

    if (imagePath != null) {
      var file = await http.MultipartFile.fromPath('image', imagePath);
      request.files.add(file);
    }

    var streamedResponse = await request.send();
    var response = await http.Response.fromStream(streamedResponse);
    var jsonResponse = json.decode(response.body);
    Fluttertoast.showToast(
        msg: jsonResponse['message'],
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.grey,
        textColor: Colors.white,
        fontSize: 16.0);
    setState(() {
      isLoading = false;
    });
    if (jsonResponse['message'] == "User registered successfully.") {
      await Future.microtask(() {
        Navigator.pushReplacementNamed(context, RoutesManager.loginRoute);
      });
    }
  }

  Future<void> _selectImage() async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      setState(() {
        _selectedImage = File(pickedImage.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: PaddingsManager.screenHorizontalPadding,
            vertical: PaddingsManager.screenVerticalPadding,
          ),
          child: Column(
            children: [
              const SizedBox(
                height: MarginsManager.topMarginWithoutAppBar,
              ),
              Text(
                textAlign: TextAlign.center,
                StringsManager.registerScreenTitle,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(
                height: MarginsManager.marginBetweenSectionsViews,
              ),
              Text(
                StringsManager.registerScreenSubTitle,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(
                height: MarginsManager.marginBetweenSections,
              ),
              GestureDetector(
                onTap: _selectImage,
                child: CircleAvatar(
                  backgroundImage: _selectedImage != null
                      ? FileImage(
                          _selectedImage!,
                        )
                      : const AssetImage(
                          ImageAssetsManager.defaultUser,
                        ) as ImageProvider<Object>,
                  backgroundColor: ColorsManager.screenColor,
                  radius: ValuesManager.imagePicker,
                ),
              ),
              const SizedBox(
                height: MarginsManager.marginBetweenSectionsViews,
              ),
              TextField(
                controller: nameController,
                style: Theme.of(context).textTheme.bodyLarge,
                decoration: const InputDecoration(
                  hintText: StringsManager.enterName,
                  label: Text(
                    StringsManager.name,
                  ),
                ),
              ),
              const SizedBox(
                height: MarginsManager.marginBetweenSectionsViews,
              ),
              TextField(
                controller: walletKeyController,
                style: Theme.of(context).textTheme.bodyLarge,
                decoration: const InputDecoration(
                  hintText: StringsManager.walletAddress,
                  label: Text(
                    StringsManager.walletAddress,
                  ),
                ),
              ),
              const SizedBox(
                height: MarginsManager.marginBetweenSectionsViews,
              ),
              TextField(
                controller: emailController,
                style: Theme.of(context).textTheme.bodyLarge,
                decoration: const InputDecoration(
                  hintText: StringsManager.enterEmail,
                  label: Text(
                    StringsManager.email,
                  ),
                ),
              ),
              const SizedBox(
                height: MarginsManager.marginBetweenSectionsViews,
              ),
              TextField(
                controller: phoneController,
                style: Theme.of(context).textTheme.bodyLarge,
                decoration: const InputDecoration(
                  hintText: StringsManager.enterPhone,
                  label: Text(
                    StringsManager.phone,
                  ),
                ),
              ),
              const SizedBox(
                height: MarginsManager.marginBetweenSectionsViews,
              ),
              TextField(
                controller: dateOfBirthController,
                style: Theme.of(context).textTheme.bodyLarge,
                decoration: const InputDecoration(
                  hintText: StringsManager.selectDateOfBirth,
                  label: Text(
                    StringsManager.dateOfBirth,
                  ),
                ),
              ),
              const SizedBox(
                height: MarginsManager.marginBetweenSectionsViews,
              ),
              TextField(
                controller: addressController,
                style: Theme.of(context).textTheme.bodyLarge,
                decoration: const InputDecoration(
                  hintText: StringsManager.enterAddress,
                  label: Text(
                    StringsManager.address,
                  ),
                ),
              ),
              const SizedBox(
                height: MarginsManager.marginBetweenSectionsViews,
              ),
              TextField(
                obscureText: true,
                controller: passwordController,
                style: Theme.of(context).textTheme.bodyLarge,
                decoration: const InputDecoration(
                  hintText: StringsManager.enterPassword,
                  label: Text(
                    StringsManager.password,
                  ),
                ),
              ),
              const SizedBox(
                height: MarginsManager.marginBetweenSectionsViews,
              ),
              ElevatedButton(
                onPressed: isLoading
                    ? null
                    : () {
                        registerUser(
                          walletKey: walletKeyController.text,
                          name: nameController.text,
                          email: emailController.text,
                          phone: phoneController.text,
                          address: addressController.text,
                          dateOfBirth: dateOfBirthController.text,
                          password: passwordController.text,
                          imagePath: _selectedImage?.path,
                        );
                      },
                child: isLoading
                    ? const Padding(
                        padding: EdgeInsets.all(4.0),
                        child: CircularProgressIndicator(
                          color: Colors.white,
                        ),
                      )
                    : const Text(
                        StringsManager.registerNow,
                      ),
              ),
              const SizedBox(
                height: MarginsManager.marginBetweenSections,
              ),
              Text(
                StringsManager.orContinueWith,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(
                height: MarginsManager.marginBetweenSectionsViews,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    ImageAssetsManager.facebookIcon,
                  ),
                  const SizedBox(
                    width: MarginsManager.marginBetweenSectionsViews,
                  ),
                  SvgPicture.asset(
                    ImageAssetsManager.googleIcon,
                  ),
                ],
              ),
              const SizedBox(
                height: MarginsManager.marginBetweenSections,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    StringsManager.alreadyHaveAccount,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(
                    width: MarginsManager.marginBetweenSectionsViews,
                  ),
                  GestureDetector(
                    child: Text(
                      StringsManager.loginNow,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    onTap: () => {
                      Navigator.pop(context),
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
