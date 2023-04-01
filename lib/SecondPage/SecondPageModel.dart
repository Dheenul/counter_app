import 'package:counter_app/Helpers/NavigationHelper/Mixin/NavigationMixin.dart';
import 'package:mobx/mobx.dart';
// Using the buil_runner we build this file to store the data that is being changed for the observed variable.
part 'SecondPageModel.g.dart';

class SecondPageModel = _SecondPageModelBase with _$SecondPageModel;
abstract class _SecondPageModelBase with Store, NavigationMixin {
  // Observe the variable named counter for any changes
  @observable
  int counter = 0;
  /* Create an arrow function which has named parameter, which has a required integer value that has to be passed */
  void setcounter({required int counter})=> this.counter = counter;
}