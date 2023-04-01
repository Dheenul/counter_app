// ignore_for_file: constant_identifier_names, unused_import

import 'package:counter_app/CounterView/CounterView.dart';
import 'package:counter_app/SecondPage/SecondPageView.dart';

import 'NavigationHelper.dart';

enum Routes {
  CounterView,
  SecondPageView
}

class Pages {
  Object? data;
   static final PageConfig homeScreenConfig =
      PageConfig(
        route: Routes.CounterView, 
        build: (_) =>  CounterView()
      );
  static final PageConfig secondPageViewConfig =
      PageConfig(
        route: Routes.SecondPageView, 
        build: (_) =>  SecondPageView(data: secondPageViewConfig.data)
      );

}
