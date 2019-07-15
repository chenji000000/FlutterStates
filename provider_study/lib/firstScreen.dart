import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_study/counterModel.dart';
import 'package:provider_study/secondScreen.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final _counter = Provider.of<CounterModel>(context);
    final textSize = Provider.of<int>(context).toDouble();

    return Scaffold(
      appBar: AppBar(
        title: Text("first screen"),
      ),
      body: Center(
        child: Text(
          "value: ${_counter.value}",
          style: TextStyle(fontSize: textSize),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.navigate_next),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => SecondScreen()));
          }),
    );
  }
}
