abstract class BaseViewModel {
  //Shared variables and functions that will be used through any view model
}

abstract class BaseViewModelInputs {
  void start(); //will be callsed while init of view model
  void dispose();//will be called when viewmodel dies.
}

abstract class BaseViewModelOutputs {
  //
}