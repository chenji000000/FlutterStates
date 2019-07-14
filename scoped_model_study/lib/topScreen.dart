import 'package:flutter/material.dart';
import 'package:scoped_model_study/countmodel.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:scoped_model_study/second.dart';

class TopScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ScopedModelDescendant<CountModel>(
      builder: (context, child, model) {
        return Scaffold(
          appBar: AppBar(
            title: Text("top screen"),
          ),
          body: Center(
            child: Text(
              model.count.toString(),
              style: TextStyle(fontSize: 48.0),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecondScreen())),
            tooltip: "push",
            child: Icon(Icons.arrow_forward_ios),
          ),
        );
      },
    );
  }
}
