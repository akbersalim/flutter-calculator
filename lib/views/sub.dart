import 'package:flutter/material.dart';
import 'package:fluttercalc/main.dart';

class Sub extends StatelessWidget {
  var x=0;
  TextEditingController n1=TextEditingController();
  TextEditingController n2=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.greenAccent,
          body: Container(
            margin: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  controller: n1,
                  decoration: InputDecoration(
                      hintText: "Number 1",
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextField(
                  controller: n2,
                  decoration: InputDecoration(
                      hintText: "Number 2",
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 10.0,
                ),
                GestureDetector(
                  onTap: () {
                    print("sub");
                    var num1=int.parse(n1.text);
                    var num2=int.parse(n2.text);
                    x=num1-num2;
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Center(child: Text(x.toString()))),
                    );
                  },
                  child: InkWell(
                    child: Container(
                      color: Colors.orangeAccent,
                      height: 50.0,
                      width: double.infinity,
                      child: Center(
                        child: Text(
                          "SUBTRACT",
                          style: TextStyle(fontSize: 23.0, color: Colors.greenAccent),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}