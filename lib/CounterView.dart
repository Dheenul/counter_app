import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'CounterVM.dart';
import 'CounterModel.dart';

class CounterView extends StatelessWidget {
  CounterView({super.key});
  final CounterVM _CounterModel = CounterVM();
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text("Counter app in MVVM architecture"),
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Observer(builder: (context) {
              return Text(_CounterModel.counter.toString());
            }),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: _CounterModel.counterSubFunction,
                    icon: Icon(Icons.horizontal_rule)),
                    SizedBox(width: 20,),
                IconButton(
                    onPressed: _CounterModel.counterAddFunction,
                    icon: Icon(Icons.add)),
              ],
            )
          ],
        ),
      )),
      //floatingActionButton: FloatingActionButton(onPressed: _CounterModel.counterAddFunction, child: Text("+"),),
    ));
  }
}
