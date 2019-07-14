import 'package:flutter/material.dart';
import 'package:scoped_model_study/countmodel.dart';
import 'package:scoped_model/scoped_model.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ScopedModelDescendant<CountModel>(
      builder: (context, child, model) {
        return Scaffold(
          appBar: AppBar(
            title: Text("second screen"),
          ),
          body: Center(
            child: Text(
              model.count.toString(),
              style: TextStyle(fontSize: 48.0),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => model.increment(),
            tooltip: "Increment",
            child: Icon(Icons.add),
          ),
        );
      },
    );
  }
}