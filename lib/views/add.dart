import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Calculate extends StatelessWidget {
  Calculate(this.choice);

  var choice;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(backgroundColor: Colors.white, body: MyBody(choice)),
    );
  }
}

class MyBody extends StatefulWidget {
  MyBody(this.choice);

  var choice;

  @override
  _MyBodyState createState() => _MyBodyState(choice);
}

class _MyBodyState extends State<MyBody> {
  _MyBodyState(this.choice);

  var _x = 0.0, choice;
  TextEditingController n1 = TextEditingController();
  TextEditingController n2 = TextEditingController();

  FindText(ch) {
    if (ch == 1)
      return ("+");
    else if (ch == 2)
      return ("-");
    else if (ch == 3)
      return ("x");
    else
      return ("÷");
  } //To let the user know which calculation is being performed

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextField(
            controller: n1,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              hintText: "Number 1",
              border: OutlineInputBorder(),
            ),
          ),
          Container(
            height: 50.0,
            width: double.infinity,
            child: Center(
              child: Text(
                FindText(choice),
                style: TextStyle(fontSize: 23.0, color: Colors.black),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          TextField(
            controller: n2,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
                hintText: "Number 2", border: OutlineInputBorder()),
          ),
          SizedBox(
            height: 20.0,
          ),
          GestureDetector(
            onTap: () {
              var num1 = double.parse(n1.text);
              var num2 = double.parse(n2.text);
              if (choice == 1){
                setState(() {
                  _x = num1 + num2;
                });
              }
              else if (choice == 2){
                setState(() {
                  _x = num1 - num2;
                });
              }
              else if (choice == 3){
                setState(() {
                  _x = num1 * num2;
                });
              }
              else{
                setState(() {
                  _x = num1 / num2;
                });
              }
            },
            child: InkWell(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff0F2027),
                        Color(0xff203A43),
                        Color(0xff2C5364)
                      ],
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
          ),
          Container(
            height: 50.0,
            width: double.infinity,
            child: Center(
              child: Text(
                _x.toString(),
                style: TextStyle(fontSize: 23.0, color: Colors.black),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
