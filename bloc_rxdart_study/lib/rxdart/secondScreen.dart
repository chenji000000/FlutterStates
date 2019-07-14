import 'package:flutter/material.dart';
import 'package:bloc_rxdart_study/rxdart/blocProvider.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of(context);
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("second Screen"),
      ),
      body: Center(
        child: StreamBuilder(
            stream: bloc.stream,
            initialData: bloc.value,
            builder: (context, snapshot) {
              return Text(
                "you hit me: ${snapshot.data} times",
                style: Theme.of(context).textTheme.display1,
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
          onPressed: () => bloc.increment()
      ),
    );
  }
}
