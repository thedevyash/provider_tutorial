import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorial/provider/exampleone_provider.dart';

class exampleOne extends StatefulWidget {
  const exampleOne({super.key});

  @override
  State<exampleOne> createState() => _exampleOneState();
}

class _exampleOneState extends State<exampleOne> {
  @override
  Widget build(BuildContext context) {
    print("hello");
    return Scaffold(
      appBar: AppBar(title: Text("ExampleOne")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(DateTime.now().toString()),
          Consumer<exampleOneProvider>(
            builder: (context, value, child) {
              return Slider(
                value: value.value,
                max: 1,
                min: 0,
                onChanged: (val) {
                  value.setValue(val);
                },
              );
            },
          ),
          Consumer<exampleOneProvider>(
            builder: (context, value, child) {
              return Row(
                children: [
                  Expanded(
                      child: Container(
                    child: Center(child: Text("Container 1")),
                    height: 80,
                    decoration: BoxDecoration(
                        color: Colors.green.withOpacity(value.value)),
                  )),
                  Expanded(
                      child: Container(
                    child: Center(child: Text("Container 2")),
                    height: 80,
                    decoration: BoxDecoration(
                        color: Colors.red.withOpacity(value.value)),
                  ))
                ],
              );
            },
          )
        ],
      ),
    );
  }
}
