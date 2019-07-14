import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux_study/countState.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() {
    // TODO: implement createState
    return _SecondScreenState();
  }
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("Second Screen"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("you have pushed the button many times: "),
              StoreConnector<CountState, int>(
                converter: (store) => store.state.count,
                builder: (context, count) {
                  return Text(
                    count.toString(),
                    style: Theme.of(context).textTheme.display1,
                  );
                },
              )
            ],
          ),
        ),
        floatingActionButton: StoreConnector<CountState, VoidCallback>(
          converter: (store) {
            return () => store.dispatch(countAction.increment);
          },
          builder: (context, callback) {
            return FloatingActionButton(
                onPressed: callback, child: Icon(Icons.add));
          },
        ));
  }
}
