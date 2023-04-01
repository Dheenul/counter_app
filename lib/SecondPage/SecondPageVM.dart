import 'package:counter_app/Helpers/NavigationHelper/Mixin/NavigationMixin.dart';
import 'package:counter_app/SecondPage/SecondPageView.dart';
import 'package:flutter/cupertino.dart';
import 'SecondPageModel.dart';

class SecondPageVM extends SecondPageModel {
  SecondPageVM({required int integer}) {
    setcounter(counter: integer);
  }
  navigateToPreviousPage() {
    navigationStream.add(NavigatorPop());
  }
}
