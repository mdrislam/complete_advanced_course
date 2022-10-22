// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:async';

import 'package:complete_advanced_course/domain/model.dart';
import 'package:complete_advanced_course/presentaion/base/baseviewmodel.dart';

class OnboardingViewModel extends BaseViewModel
    with OnboardingViewModelInputs, OnboardingViewModelOutputs {
// Streams Controllers Builder
  final StreamController _streamController =
      StreamController<SliderObject>();

  @override
  void dispose() {
    // TODO: implement dispose
  }

  @override
  void start() {
    // TODO: implement start
  }

  @override
  void goNext() {
    // TODO: implement goNext
  }

  @override
  void goPrevious() {
    // TODO: implement goPrevious
  }

  @override
  void onPageChange(int index) {
    // TODO: implement onPageChange
  }

  @override
  // TODO: implement inputSliderViewObject
  Sink get inputSliderViewObject => throw UnimplementedError();

  @override
  // TODO: implement outputSliderViewObject
  Stream<SliderViewObject> get outputSliderViewObject =>
      throw UnimplementedError();
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
