import 'package:flutter/material.dart';
import 'package:bloc_rxdart_study/single_global_instance/countBloc.dart';
import 'package:bloc_rxdart_study/single_global_instance/secondScreen.dart';

class TopScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("top screen"),
      ),
      body: Center(
        child: StreamBuilder<int>(
            stream: bLoC.stream,
            initialData: bLoC.value,
            builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
              return Text("you hit me: ${snapshot.data} times",
                  style: Theme.of(context).textTheme.display1);
            }),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.forward),
          onPressed: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => SecondScreen()))),
    );
  }
}
