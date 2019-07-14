import 'package:flutter/material.dart';
import 'package:bloc_rxdart_study/single_global_instance/countBloc.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("second screen"),
      ),
      body: Center(
        child: StreamBuilder(
            stream: bLoC.stream,
            initialData: bLoC.value,
            builder: (context, snapshot) {
              return Text(
                "you hit me: ${snapshot.data} times",
                style: Theme.of(context).textTheme.display1,
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add), onPressed: () => bLoC.increment()),
    );
  }
}
