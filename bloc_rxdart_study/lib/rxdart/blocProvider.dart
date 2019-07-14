import 'package:flutter/material.dart';
import 'package:bloc_rxdart_study/rxdart/countBloc.dart';

class BlocProvider extends InheritedWidget {
  final CountBloc bloc = CountBloc();
  BlocProvider({Key key, Widget child}) : super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    // TODO: implement updateShouldNotify
    return true;
  }

  static CountBloc of(BuildContext context) => (context.inheritFromWidgetOfExactType(BlocProvider) as BlocProvider).bloc;
}