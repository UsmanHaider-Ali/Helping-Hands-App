import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '/presentation/resources/assets_manager.dart';
import '/presentation/resources/colors_manager.dart';
import '/presentation/resources/routes_manager.dart';
import '/presentation/resources/strings_manager.dart';
import '/presentation/resources/values_manager.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  late final List<SliderObject> _list = _getSliderData();
  PageController _pageController = PageController(
    initialPage: 0,
  );
  int _currentIndex = 0;

  List<SliderObject> _getSliderData() => [
        SliderObject(
            StringsManager.onBoardingTitle1,
            StringsManager.onBoardingSubTitle1,
            ImagesAssetsManager.onBoardingImage1),
        SliderObject(
            StringsManager.onBoardingTitle2,
            StringsManager.onBoardingSubTitle2,
            ImagesAssetsManager.onBoardingImage2),
        SliderObject(
            StringsManager.onBoardingTitle3,
            StringsManager.onBoardingSubTitle3,
            ImagesAssetsManager.onBoardingImage3),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsManager.appBarBackgroundColor,
        elevation: SizesManager.appBarElevationSize,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: ColorsManager.statusBarColor,
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.dark,
        ),
        title: Padding(
          padding: const EdgeInsets.all(
            PaddingsManager.p10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: (() => {
                      Navigator.pushReplacementNamed(
                        context,
                        RoutesManager.loginRoute,
                      ),
                    }),
                child: Text(
                  StringsManager.skip,
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ),
            ],
          ),
        ),
      ),
      body: PageView.builder(
          controller: _pageController,
          itemCount: _list.length,
          onPageChanged: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          itemBuilder: (context, index) {
            return OnBoardingPage(_list[index]);
          }),
      bottomSheet: Container(
        color: ColorsManager.bottomSheetColor,
        height: SizesManager.bottomSheetHeightSize,
        child: _bottomSheetWidget(context),
      ),
    );
  }

  Widget _bottomSheetWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        PaddingsManager.bottomSheetWidgetPadding,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              for (int i = 0; i < _list.length; i++)
                Padding(
                  padding: EdgeInsets.all(
                    PaddingsManager.onBoardingIncPadding,
                  ),
                  child: _getIndicator(i),
                ),
            ],
          ),
          GestureDetector(
            onTap: (() => {
                  _pageController.animateToPage(_getNextPage(),
                      duration: Duration(
                          milliseconds:
                              DurationConstantsManager.onBoardingPageDuration),
                      curve: Curves.bounceInOut),
                }),
            child: Text(
              StringsManager.next,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
        ],
      ),
    );
  }

  int _getNextPage() {
    int nextIndex = _currentIndex++;
    if (nextIndex == _list.length - 1) {
      Navigator.pushReplacementNamed(context, RoutesManager.loginRoute);
    }
    return _currentIndex;
  }

  Widget _getIndicator(index) {
    if (index == _currentIndex) {
      return _makeIndicator(true);
    } else {
      return _makeIndicator(false);
    }
  }

  Widget _makeIndicator(bool isSelected) {
    return Container(
      width: isSelected
          ? SizesManager.onBoardingSelectedIncWight
          : SizesManager.onBoardingUnselectedIncHight,
      height: SizesManager.onBoardingUnselectedIncHight,
      decoration: BoxDecoration(
        color: ColorsManager.primary,
        borderRadius: BorderRadius.circular(
          SizesManager.onBoardingIncRadius,
        ),
      ),
    );
  }
}

class OnBoardingPage extends StatelessWidget {
  SliderObject _sliderObject;

  OnBoardingPage(this._sliderObject, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: SizesManager.s40,
        ),
        Padding(
          padding: const EdgeInsets.all(
            PaddingsManager.p10,
          ),
          child: Text(
            _sliderObject.title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(
            PaddingsManager.p10,
          ),
          child: Text(
            _sliderObject.subTitle,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        SizedBox(
          height: SizesManager.s40,
        ),
        SvgPicture.asset(_sliderObject.image)
      ],
    );
  }
}

class SliderObject {
  String title;
  String subTitle;
  String image;

  SliderObject(this.title, this.subTitle, this.image);
}
