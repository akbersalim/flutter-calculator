import 'package:flutter/material.dart';
import 'package:fluttercalc/views/add.dart';
import 'package:fluttercalc/views/div.dart';
import 'package:fluttercalc/views/mul.dart';
import 'package:fluttercalc/views/sub.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: Scaffold(body: MyBody()));
  }
}

class MyBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var x;
    return Container(
      color: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          InkWell(
            onTap: () {
              x = 1;
              print("Add");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Add()),
              );
            },
            child: Container(
              child: Center(
                  child: Text(
                "ADD",
                style: TextStyle(fontSize: 30.0),
              )),
              margin: EdgeInsets.all(10.0),
              color: Colors.white,
              height: 50.0,
              width: double.infinity,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          InkWell(
            onTap: () {
              x = 2;
              print("Subtract");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Sub()),
              );
            },
            child: Container(
              child: Center(
                  child: Text(
                "SUBTRACT",
                style: TextStyle(fontSize: 30.0),
              )),
              margin: EdgeInsets.all(10.0),
              color: Colors.white,
              height: 50.0,
            ),
          ),
          SizedBox(height: 10.0),
          InkWell(
            onTap: () {
              x = 3;
              print("Multiply");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Mul()),
              );
            },
            child: Container(
              child: Center(
                  child: Text(
                "MULTIPLY",
                style: TextStyle(fontSize: 30.0),
              )),
              margin: EdgeInsets.all(10.0),
              color: Colors.white,
              height: 50.0,
              width: double.infinity,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          InkWell(
            onTap: () {
              x = 4;
              print("Divide");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Div()),
              );
            },
            child: Container(
              child: Center(
                  child: Text(
                "DIVIDE",
                style: TextStyle(fontSize: 30.0),
              )),
              margin: EdgeInsets.all(10.0),
              color: Colors.white,
              height: 50.0,
            ),
          )
        ],
      ),
    );
  }
}
