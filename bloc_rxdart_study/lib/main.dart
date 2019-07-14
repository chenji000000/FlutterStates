import 'package:flutter/material.dart';

//single global instance
//import 'package:bloc_rxdart_study/single_global_instance/topScreen.dart';
//rxdart
import 'package:bloc_rxdart_study/rxdart/blocProvider.dart';
import 'package:bloc_rxdart_study/rxdart/topScreen.dart';



void main() => runApp(MyApp());

//class MyApp extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      theme: ThemeData(
//        // This is the theme of your application.
//        //
//        // Try running your application with "flutter run". You'll see the
//        // application has a blue toolbar. Then, without quitting the app, try
//        // changing the primarySwatch below to Colors.green and then invoke
//        // "hot reload" (press "r" in the console where you ran "flutter run",
//        // or simply save your changes to "hot reload" in a Flutter IDE).
//        // Notice that the counter didn't reset back to zero; the application
//        // is not restarted.
//        primarySwatch: Colors.blue,
//      ),
//      home: TopScreen(),
//    );
//  }
//}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocProvider(
      child: MaterialApp(
        theme: ThemeData.dark(),
        home: TopScreen(),
      ),
    );
  }
}