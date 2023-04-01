import 'package:counter_app/Helpers/NavigationHelper/NavigationHelper.dart';
import 'package:counter_app/Helpers/NavigationHelper/Routes.dart';
import 'package:flutter/material.dart';
class MyApp extends StatelessWidget {
  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return (
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.light,
          colorSchemeSeed: Color(0xff05D1ED)
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          colorSchemeSeed: Color(0xff0D031B)
        ),
        themeMode: ThemeMode.system,
        onGenerateRoute: AppRoute(initialPage: Pages.homeScreenConfig, initialPageData: null).onGenerateRoute,
        // home:CounterView(),
      )
    );
  }
}
