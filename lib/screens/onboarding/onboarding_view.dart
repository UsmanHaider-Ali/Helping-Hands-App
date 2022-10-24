import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '/resources/dimens_manager.dart';

import '../../resources/assets_manager.dart';
import '../../resources/colors_manager.dart';
import '../../resources/routes_manager.dart';
import '../../resources/strings_manager.dart';

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
  String _ForwardButtonText = StringsManager.next;

  List<SliderObject> _getSliderData() => [
        SliderObject(
          StringsManager.onBoardingTitle1,
          StringsManager.onBoardingSubTitle1,
          ImageAssetsManager.onBoardingImage1,
        ),
        SliderObject(
          StringsManager.onBoardingTitle2,
          StringsManager.onBoardingSubTitle2,
          ImageAssetsManager.onBoardingImage2,
        ),
        SliderObject(
          StringsManager.onBoardingTitle3,
          StringsManager.onBoardingSubTitle3,
          ImageAssetsManager.onBoardingImage3,
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: (() => {
                    Navigator.pushReplacementNamed(
                      context,
                      RoutesManager.loginRoute,
                    ),
                  }),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: PaddingsManager.screenHorizontalPadding,
                ),
                child: Text(
                  StringsManager.skip,
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ),
            ),
          ],
        ),
      ),
      body: PageView.builder(
          controller: _pageController,
          itemCount: _list.length,
          onPageChanged: (index) {
            setState(() {
              if (index == _list.length - 1) {
                _ForwardButtonText = StringsManager.finish;
              } else {
                _ForwardButtonText = StringsManager.next;
              }
              _currentIndex = index;
            });
          },
          itemBuilder: (context, index) {
            return OnBoardingPage(
              _list[index],
            );
          }),
      bottomSheet: Container(
        color: ColorsManager.bottomSheetColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: PaddingsManager.screenHorizontalPadding,
            vertical: PaddingsManager.screenVerticalPadding,
          ),
          child: _bottomSheetWidget(context),
        ),
      ),
    );
  }

  Widget _bottomSheetWidget(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            for (int i = 0; i < _list.length; i++) _getIndicator(i),
          ],
        ),
        GestureDetector(
          onTap: (() => {
                _pageController.animateToPage(
                  _getNextPage(),
                  duration: const Duration(
                    milliseconds:
                        DurationConstantsManager.onBoardingPageDuration,
                  ),
                  curve: Curves.bounceInOut,
                ),
              }),
          child: Text(
            _ForwardButtonText,
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ),
      ],
    );
  }

  int _getNextPage() {
    int nextIndex = _currentIndex++;

    if (nextIndex == _list.length - 2) {
      setState(() {
        _ForwardButtonText = StringsManager.finish;
      });
    } else {
      setState(() {
        _ForwardButtonText = StringsManager.next;
      });
    }
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
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: PaddingsManager.indicatorHorizontalPadding,
      ),
      child: Container(
        width: isSelected
            ? ValuesManager.onBoardingSelectedIndicatorWidth
            : ValuesManager.onBoardingIndicatorHight,
        height: ValuesManager.onBoardingIndicatorHight,
        decoration: BoxDecoration(
          color: ColorsManager.primaryColor,
          borderRadius: BorderRadius.circular(
            ValuesManager.defaultRadious,
          ),
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
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: PaddingsManager.screenHorizontalPadding,
        vertical: PaddingsManager.screenVerticalPadding,
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: MarginsManager.topMarginWithAppBar,
            ),
            SvgPicture.asset(
              _sliderObject.image,
            ),
            const SizedBox(
              height: MarginsManager.marginBetweenSections,
            ),
            Text(
              _sliderObject.title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(
              height: MarginsManager.marginBetweenSectionsViews,
            ),
            Text(
              _sliderObject.subTitle,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}

class SliderObject {
  String title;
  String subTitle;
  String image;

  SliderObject(this.title, this.subTitle, this.image);
}
