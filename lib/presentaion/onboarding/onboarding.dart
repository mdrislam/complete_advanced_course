// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:complete_advanced_course/domain/model.dart';
import 'package:complete_advanced_course/presentaion/onboarding/onboardingviewmodel.dart';
import 'package:complete_advanced_course/presentaion/resources/assets_manager.dart';
import 'package:complete_advanced_course/presentaion/resources/string_manager.dart';
import 'package:complete_advanced_course/presentaion/resources/values_manager.dart';
import 'package:flutter/material.dart';

import 'package:complete_advanced_course/presentaion/resources/color_manager.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final PageController _pageController = PageController(initialPage: 0);
  final OnboardingViewModel _viewModel = OnboardingViewModel();
  _bind() {
    _viewModel.start();
  }

  @override
  void initState() {
    _bind();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _getContentWidget();
  }

  Widget _getContentWidget() {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colormanager.white,
        elevation: AppSize.s0,
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colormanager.white,
            statusBarBrightness: Brightness.dark,
            statusBarIconBrightness: Brightness.dark),
      ),
      backgroundColor: Colormanager.white,
      body: PageView.builder(
          controller: _pageController,
          itemCount: _list.length,
          onPageChanged: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          itemBuilder: (context, index) {
            return OnboardingPage(
              sliderObject: _list[index],
            );
          }),
      bottomSheet: Container(
        color: Colormanager.white,
        height: AppSize.s100,
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    AppStrings.skip,
                    textAlign: TextAlign.end,
                    style: Theme.of(context).textTheme.subtitle2,
                  )),
            ),
            _getBottomSheetWidgets()
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }

  Widget _getBottomSheetWidgets() {
    return Container(
      color: Colormanager.primary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //Left Arrow
          Padding(
            padding: const EdgeInsets.all(AppPadding.p14),
            child: InkWell(
              onTap: () {
                //Go To Previous Slider
                _pageController.animateToPage(_getPrviousIndex(),
                    duration: const Duration(milliseconds: DurationConst.d300),
                    curve: Curves.bounceIn);
              },
              child: SizedBox(
                height: AppSize.s20,
                width: AppSize.s20,
                child: SvgPicture.asset(ImageAssets.leftArrow),
              ),
            ),
          ),
          //Middle Cicular Indicator
          Row(
            children: [
              for (int index = 0; index < _list.length; index++)
                Padding(
                    padding: const EdgeInsets.all(AppPadding.p8),
                    child: _dotIndicator(index))
            ],
          ),
          //Right Arrow
          Padding(
            padding: const EdgeInsets.all(AppPadding.p14),
            child: InkWell(
              onTap: () {
                //Go To Next Slider

                _pageController.animateToPage(_getNextIndex(),
                    duration: const Duration(milliseconds: DurationConst.d300),
                    curve: Curves.bounceIn);
              },
              child: SizedBox(
                height: AppSize.s20,
                width: AppSize.s20,
                child: SvgPicture.asset(ImageAssets.rightArrow),
              ),
            ),
          ),
        ],
      ),
    );
  }

//
  Widget _dotIndicator(int index) {
    if (index == _currentIndex) {
      return SvgPicture.asset(ImageAssets.hollowCircle);
    } else {
      return SvgPicture.asset(ImageAssets.solidCircle);
    }
  }
}

class OnboardingPage extends StatelessWidget {
  final SliderObject sliderObject;
  const OnboardingPage({super.key, required this.sliderObject});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          height: AppSize.s40,
        ),
        Padding(
          padding: const EdgeInsets.all(AppPadding.p8),
          child: Text(
            sliderObject.title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(AppPadding.p8),
          child: Text(
            sliderObject.subTitle,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
        const SizedBox(
          height: AppSize.s60,
        ),
        SvgPicture.asset(sliderObject.image)
      ],
    );
  }
}
