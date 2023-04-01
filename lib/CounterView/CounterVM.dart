import 'package:counter_app/CounterView/CounterModel.dart';
import 'package:counter_app/Helpers/NavigationHelper/Mixin/NavigationMixin.dart';
import 'package:counter_app/Helpers/NavigationHelper/Routes.dart';

// Create a class named CounterVM by extending the class CounterModel
class CounterVM extends CounterModel {
  /* create a method named counterAddFunction to add the counter by 1*/
  counterAddFunction() {
    // Call the function named setcounter and pass the named parameter value as counter + 1
    setcounter(counter: counter + 1);
    // Print the counter variable.
    print(counter);
  }

  /* create a method named counterAddFunction to add the counter by 1*/
  counterSubFunction() {
    // Call the function named setcounter and pass the named parameter value as counter - 1
    setcounter(counter: counter - 1);
    // Print the counter variable.
    print(counter);
  }

  navigateToNextPage() {
    navigationStream.add(
        NavigatorPush(pageConfig: Pages.secondPageViewConfig, data: counter));
  }
}
