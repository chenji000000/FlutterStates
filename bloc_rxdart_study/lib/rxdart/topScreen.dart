import 'package:flutter/material.dart';
import 'package:bloc_rxdart_study/rxdart/blocProvider.dart';
import 'package:bloc_rxdart_study/rxdart/secondScreen.dart';

class TopScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final bloc = BlocProvider.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("top screen"),
      ),
      body: Center(
        child: StreamBuilder<int>(
            stream: bloc.stream,
            initialData: bloc.value,
            builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
              return Text(
                "you hit me: ${snapshot.data} times",
                style: Theme.of(context).textTheme.display1,
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.navigate_next),
          onPressed: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => SecondScreen()))),
    );
  }
}
