import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux_study/countState.dart';
import 'package:redux_study/secondScreen.dart';

class TopScreen extends StatefulWidget {
  @override
  _TopScreenState createState() {
    // TODO: implement createState
    return _TopScreenState();
  }
}

class _TopScreenState extends State<TopScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Top Screen"),
      ),
      body: Center(
        child: StoreConnector<CountState, int>(
            builder: (context, count) {
              return Text(
                count.toString(),
                style: Theme.of(context).textTheme.display1,
              );
            },
            converter: (store) => store.state.count
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => SecondScreen()
            ));
          },
        child: Icon(Icons.forward),
      ),
    );
  }
}