// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:async';

import 'package:complete_advanced_course/domain/model.dart';
import 'package:complete_advanced_course/presentaion/base/baseviewmodel.dart';
import 'package:complete_advanced_course/presentaion/resources/assets_manager.dart';
import 'package:complete_advanced_course/presentaion/resources/string_manager.dart';

class OnboardingViewModel extends BaseViewModel
    with OnboardingViewModelInputs, OnboardingViewModelOutputs {
// Streams Controllers Builder
  final StreamController _streamController =
      StreamController<SliderViewObject>();

  late final List<SliderObject> _list;
  int _currentIndex = 0;

  @override
  void dispose() {
    _streamController.close();
  }

  @override
  void start() {
    _list = _getSliderData();
    //send To slider data to our view
    _postDataToView();
  }

  @override
  int goNext() {
    int previousIndex = _currentIndex--; //-1
    if (previousIndex == -1) {
      _currentIndex =
          _list.length - 1; //infinit loop to go to the length of slider list
    }
    return _currentIndex;
  }

  @override
  int goPrevious() {
    int previousIndex = _currentIndex++; // +1
    if (previousIndex >= _list.length) {
      _currentIndex = 0; //infinit loop to go to the item of slider list
    }
    return _currentIndex;
  }

  @override
  void onPageChange(int index) {
    // TODO: implement onPageChange
    _currentIndex = index;
    _postDataToView();
  }

  @override
  // TODO: implement inputSliderViewObject
  Sink get inputSliderViewObject => _streamController.sink;

  @override
  // TODO: implement outputSliderViewObject
  Stream<SliderViewObject> get outputSliderViewObject =>
      _streamController.stream.map((sliderViewObject) => sliderViewObject);

  List<SliderObject> _getSliderData() => [
        SliderObject(
            title: AppStrings.onboardingTitle1,
            subTitle: AppStrings.onBoardingSubTitle1,
            image: ImageAssets.onBoardingLogo1),
        SliderObject(
            title: AppStrings.onboardingTitle2,
            subTitle: AppStrings.onBoardingSubTitle2,
            image: ImageAssets.onBoardingLogo2),
        SliderObject(
            title: AppStrings.onboardingTitle3,
            subTitle: AppStrings.onBoardingSubTitle3,
            image: ImageAssets.onBoardingLogo3),
        SliderObject(
            title: AppStrings.onboardingTitle4,
            subTitle: AppStrings.onBoardingSubTitle4,
            image: ImageAssets.onBoardingLogo4),
      ];
  //
  _postDataToView() {
    inputSliderViewObject.add(SliderViewObject(
        sliderObject: _list[_currentIndex],
        numberOfSlider: _list.length,
        currentIndex: _currentIndex));
  }
}

//inputes mean the orders that our view model will receive from our view
abstract class OnboardingViewModelInputs {
  void goNext(); //when user clicks on right arrow or swipe
  void goPrevious(); //when user clicks on left arrow or swipe
  void onPageChange(int index);
  Sink
      get inputSliderViewObject; //this is the way to the stream  .. stream input
}

//outputs mean data or results that will be sent from our view model  to our view
abstract class OnboardingViewModelOutputs {
  Stream<SliderViewObject> get outputSliderViewObject;
}

class SliderViewObject {
  SliderObject sliderObject;
  int numberOfSlider;
  int currentIndex;
  SliderViewObject({
    required this.sliderObject,
    required this.numberOfSlider,
    required this.currentIndex,
  });
}
