import 'package:flutter/material.dart';
import 'package:fluttercalc/views/add.dart';
import 'package:fluttercalc/views/tab.dart';

void main() => runApp(TabView());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: Scaffold(
        body: MyBody()));
  }
}
