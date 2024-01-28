import 'package:flutter/material.dart';

class NotifyListenersScreen extends StatelessWidget {
  NotifyListenersScreen({super.key});
  ValueNotifier<int> _counter = ValueNotifier<int>(0);
  //valuenotifier extend krta hai changenotifuer ko
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateless s Stateful"),
      ),
      body: Center(
          child: ValueListenableBuilder(
        valueListenable: _counter,
        builder: (context, value, child) {
          return Text(_counter.value.toString());
        },
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          _counter.value++;
          print(_counter.value.toString());
        },
      ),
    );
  }
}
