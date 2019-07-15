import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_study/counterModel.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("second screen"),
      ),
      body: Consumer2<CounterModel, int>(
          builder: (context, CounterModel counter, int textSize, _) => Center(
                child: Text(
                  "value: ${counter.value}",
                  style: TextStyle(fontSize: textSize.toDouble()),
                ),
              )),
      floatingActionButton: Consumer<CounterModel>(
        builder: (context, CounterModel counter, child) => FloatingActionButton(
          onPressed: counter.increment,
          child: child,
        ),
        child: Icon(Icons.add),
      ),
    );
  }
}
