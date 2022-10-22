import 'package:complete_advanced_course/presentaion/base/baseviewmodel.dart';

class OnboardingViewModel extends BaseViewModel with OnboardingViewModelInputs,OnboardingViewModelOutputs {
// Streams Controllers Builder 

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
}

//inputes mean the orders that our view model will receive from our view
abstract class OnboardingViewModelInputs {
  void goNext(); //when user clicks on right arrow or swipe
  void goPrevious(); //when user clicks on left arrow or swipe
  void onPageChange(int index);

}

//outputs mean data or results that will be sent from our view model  to our view
abstract class OnboardingViewModelOutputs {
  //will be implement it later
}
