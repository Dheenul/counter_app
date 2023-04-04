import 'package:counter_app/Helpers/NavigationHelper/Mixin/NavigationMixin.dart';
import 'package:counter_app/Helpers/NavigationHelper/NavigationHelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'SecondPageVM.dart';
import 'SecondPageModel.dart';

class SecondPageView extends StatefulWidget {
  final int data;
  const SecondPageView({super.key, required this.data});

  @override
  State<SecondPageView> createState() => _SecondPageViewState();
}

class _SecondPageViewState extends State<SecondPageView> {
  late final SecondPageVM _secondPageVM = SecondPageVM(integer: widget.data);

  @override
  void initState() {
    super.initState();
    _secondPageVM.navigationStream.stream.listen((event) {
      if (event is NavigatorPop) {
        context.pop();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        appBar: AppBar(
          title: const Text("Second Page of counter app..."),
        ),
        body: SafeArea(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Observer(builder: (context) {
                // return Text('The counter value is ${widget.data}');
                return Text('The counter value is ${_secondPageVM.counter.toString()}');
              }),
              // SizedBox(height: 30,),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     IconButton(
              //         onPressed: (){},
              //         icon: Icon(Icons.horizontal_rule)),
              //         SizedBox(width: 20,),
              //     IconButton(
              //         onPressed: _CounterModel.counterAddFunction,
              //         icon: Icon(Icons.add)),
              //   ],
              // )
            ],
          ),
        )),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            _secondPageVM.navigateToPreviousPage();
          },
          label: const Text('Go Back'),
          icon: const Icon(Icons.arrow_back_rounded),
        )
        //floatingActionButton: FloatingActionButton(onPressed: _CounterModel.counterAddFunction, child: Text("+"),),
        ));
  }
}
