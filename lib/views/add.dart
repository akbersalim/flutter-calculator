import 'package:flutter/material.dart';
import 'package:fluttercalc/main.dart';
import 'package:fluttercalc/views/disp.dart';

class Calculate extends StatelessWidget {
  Calculate(this.choice);

  var x = 0.0, choice;
  TextEditingController n1 = TextEditingController();
  TextEditingController n2 = TextEditingController();

  FindText(ch) {
    if (ch == 1)
      return ("ADD");
    else if (ch == 2)
      return ("SUBTRACT");
    else if (ch == 3)
      return ("MULTIPLY");
    else
      return ("DIVIDE");
  } //To let the user know which calculation is being performed

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.white,
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
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextField(
                  controller: n2,
                  decoration: InputDecoration(
                      hintText: "Number 2", border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 10.0,
                ),
                GestureDetector(
                  onTap: () {
                    var num1 = double.parse(n1.text);
                    var num2 = double.parse(n2.text);
                    if (choice == 1)
                      x = num1 + num2;
                    else if (choice == 2)
                      x = num1 - num2;
                    else if (choice == 3)
                      x = num1 * num2;
                    else
                      x = num1 / num2;
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Disp(x)),
                    );
                  },
                  child: InkWell(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        gradient: LinearGradient(
                          colors: [Color(0xff0F2027),Color(0xff203A43),Color(0xff2C5364)],
                        )
                      ),
                      height: 50.0,
                      width: double.infinity,
                      child: Center(
                        child: Text(
                          FindText(choice),
                          style: TextStyle(fontSize: 23.0, color: Colors.white),
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
