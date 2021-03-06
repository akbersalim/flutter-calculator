import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttercalc/views/oddeven.dart';

class Calculate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Container(
                        height: MediaQuery.of(context).size.height - 637,
                        color: Colors.white,
                        margin: EdgeInsets.all(5.0),
                        child: SingleChildScrollView(child: MyBody())),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

class MyBody extends StatefulWidget {
  @override
  _MyBodyState createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {
  var _x = 0.0, choice;
  TextEditingController n1 = TextEditingController();
  TextEditingController n2 = TextEditingController();
  var col1 = 0xff373B44, col2 = 0xff4286f4;
  var bck = 0xfffffffff;

  Container res() {
    return Container(
      height: 50.0,
      width: double.infinity,
      child: Center(
        child: Text(
          _x.toString(),
          style: TextStyle(fontSize: 23.0, color: Colors.black),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  _Compute() {
    var num1 = double.parse(n1.text);
    var num2 = double.parse(n2.text);
    if (choice == 1) {
      setState(() {
        _x = num1 + num2;
      });
    } else if (choice == 2) {
      setState(() {
        _x = num1 - num2;
      });
    } else if (choice == 3) {
      setState(() {
        _x = num1 * num2;
      });
    } else {
      setState(() {
        _x = num1 / num2;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          color: Color(bck),
          margin: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Scroll down",
                style: TextStyle(color: Colors.blue),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                keyboardType: TextInputType.number,
                controller: n1,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide:
                        BorderSide(color: Colors.greenAccent, width: 2.0),
                  ),
                  hintText: "Number 1",
                  labelText: "Enter a number",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                  height: 50.0,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      MaterialButton(
                        onPressed: () {
                          choice = 1;
                          setState(() {
                            _Compute();
                            col1 = 0xff8A2387;
                            col2 = 0xffE94057;
                            col2 = 0xffF27121;
                          });
                        },
                        minWidth: 75,
                        focusColor: Colors.white,
                        splashColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        padding: EdgeInsets.all(2.0),
                        elevation: 10.0,
                        highlightElevation: 2.0,
                        color: Colors.black,
                        child: Center(
                            child: Text("+",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30.0))),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      MaterialButton(
                        onPressed: () {
                          choice = 2;
                          setState(() {
                            _Compute();
                            col1 = 0xff1f4037;
                            col2 = 0xff99f2c8;
                          });
                        },
                        minWidth: 75,
                        focusColor: Colors.white,
                        splashColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        padding: EdgeInsets.all(2.0),
                        elevation: 10.0,
                        highlightElevation: 2.0,
                        color: Colors.black,
                        child: Center(
                            child: Text("-",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30.0))),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      MaterialButton(
                        onPressed: () {
                          choice = 3;
                          setState(() {
                            _Compute();
                            col1 = 0xffe1eec3;
                            col2 = 0xfff05053;
                          });
                        },
                        minWidth: 75,
                        focusColor: Colors.white,
                        splashColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        padding: EdgeInsets.all(2.0),
                        elevation: 10.0,
                        highlightElevation: 2.0,
                        color: Colors.black,
                        child: Center(
                            child: Text("x",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30.0))),
                      ),
                      SizedBox(width: 10.0),
                      MaterialButton(
                        onPressed: () {
                          choice = 4;
                          setState(() {
                            _Compute();
                            col1 = 0xffFF0099;
                            col2 = 0xff493240;
                          });
                        },
                        minWidth: 75,
                        focusColor: Colors.white,
                        splashColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        padding: EdgeInsets.all(2.0),
                        elevation: 10.0,
                        highlightElevation: 2.0,
                        color: Colors.black,
                        child: Center(
                            child: Text("÷",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30.0))),
                      ),
                    ],
                  )),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                keyboardType: TextInputType.number,
                controller: n2,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide:
                          BorderSide(color: Colors.greenAccent, width: 2.0),
                    ),
                    labelText: "Enter a number",
                    hintText: "Number 2",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
              ),
              SizedBox(
                height: 20.0,
              ),
              InkWell(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: LinearGradient(
                        colors: [Color(col1), Color(col2)],
                      )),
                  height: 50.0,
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      "=",
                      style: TextStyle(fontSize: 23.0, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Text(
          _x.toString(),
          style: TextStyle(fontSize: 30.0),
        )
      ],
    );
  }
}

/*

 */
