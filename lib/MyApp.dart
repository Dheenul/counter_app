
import 'package:flutter/material.dart';
import 'CounterView.dart';
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
        home:CounterView(),
      )
    );
  }
}
