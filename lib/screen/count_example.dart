import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorial/provider/count_provider.dart';

class CountExample extends StatefulWidget {
  const CountExample({super.key});

  @override
  State<CountExample> createState() => _CountExampleState();
}

class _CountExampleState extends State<CountExample> {
  @override
  Widget build(BuildContext context) {
    //consumer bna do jaha value update krni aur baki jgh ke liye listwen false krdo taki pura widget build na ho firse !!
    final counProvider = Provider.of<CountProvider>(context, listen: false);
    print("build whole widget");
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider Tutorial"),
      ),
      body: Center(
        child: Consumer<CountProvider>(
          builder: (context, value, child) {
            return Text(value.count.toString());
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counProvider.setCount();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
