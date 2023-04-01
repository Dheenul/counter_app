import 'package:counter_app/Helpers/NavigationHelper/Mixin/NavigationMixin.dart';
import 'package:counter_app/Helpers/NavigationHelper/NavigationHelper.dart';
import 'package:counter_app/Helpers/NavigationHelper/Routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'CounterVM.dart';
import 'CounterModel.dart';

class CounterView extends StatefulWidget {
  CounterView({super.key});

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  final CounterVM _CounterModel = CounterVM();
  @override
  void initState() {
    super.initState();
    _CounterModel.navigationStream.stream.listen((event) {
      if (event is NavigatorPush) {
        context.push(
            pageConfig: Pages.secondPageViewConfig,
            data: _CounterModel.counter);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        appBar: AppBar(
          title: const Text("Counter app in MVVM architecture"),
        ),
        body: SafeArea(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Observer(builder: (context) {
                return Text(_CounterModel.counter.toString());
              }),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: _CounterModel.counterSubFunction,
                      icon: const Icon(Icons.horizontal_rule)),
                  const SizedBox(
                    width: 20,
                  ),
                  IconButton(
                      onPressed: _CounterModel.counterAddFunction,
                      icon: const Icon(Icons.add)),
                ],
              ),
            ],
          ),
        )),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            _CounterModel.navigateToNextPage();
          },
          label: const Text('Next page'),
          icon: const Icon(Icons.arrow_forward_ios),
        )
        //floatingActionButton: FloatingActionButton(onPressed: _CounterModel.counterAddFunction, child: Text("+"),),
        ));
  }
}
