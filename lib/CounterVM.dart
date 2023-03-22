import 'package:counter_app/CounterModel.dart';
import 'CounterModel.dart';
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
}
