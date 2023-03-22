// // Create a class named CounterModel 
// class CounterModel{
//   // Create a variale named counter and initalize it to 0.
//   int counter = 0;
// }

//import 'package:gympers/BO/TodoBO.dart';
// class HomeScreenModel {
//   int counter = 0;
// }

// import the package called mobx 
import 'package:mobx/mobx.dart';
// Using the buil_runner we build this file to store the data that is being changed for the observed variable.
part 'CounterModel.g.dart';

class CounterModel = _CounterModelBase with _$CounterModel;
abstract class _CounterModelBase with Store {
  // Observe the variable named counter for any changes
  @observable
  int counter = 0;
  /* Create an arrow function which has named parameter, which has a required integer value that has to be passed */
  void setcounter({required int counter})=> this.counter = counter;
}