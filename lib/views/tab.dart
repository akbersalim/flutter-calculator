import 'package:flutter/material.dart';
import 'package:fluttercalc/views/add.dart';
import 'package:fluttercalc/views/oddeven.dart';

class TabView extends StatefulWidget {
  @override
  TabViewState createState() => TabViewState();
}

class TabViewState extends State<TabView> with SingleTickerProviderStateMixin {
  @override
  TabController t;

  void initState() {
    super.initState();
    t = TabController(length: 2, vsync: this);
  }

  void dispose() {
    t.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Calculator App"),
        ),
        body: Container(
          child: TabBarView(
            children: <Widget>[Calculate(), OddEven()],
            controller: t,
          ),
        ),
        bottomNavigationBar: Material(
          color: Colors.blue,
          child: TabBar(
            tabs: <Widget>[
              Tab(
                child: Text("Calc"),
              ),
              Tab(
                child: Text("Odd/Even"),
              ),
            ],
            controller: t,
          ),
        ),
      ),
    );
  }
}
