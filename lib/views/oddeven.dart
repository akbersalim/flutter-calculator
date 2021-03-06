import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OddEven extends StatefulWidget {
  @override
  _OddEvenState createState() => _OddEvenState();
}

class _OddEvenState extends State<OddEven> {
  var _r = "?";
  TextEditingController n = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  keyboardType: TextInputType.numberWithOptions(),
                  controller: n,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 2.0),
                      ),
                      labelText: "Enter a number",
                      labelStyle:
                          TextStyle(color: Colors.black, fontSize: 20.0),
                      hintText: "Enter a number",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10.0),
                MaterialButton(
                  color: Colors.red,
                  focusColor: Colors.white,
                  child: Center(
                      child: Text(
                    'CHECK',
                    style: TextStyle(fontSize: 25.0),
                  )),
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  highlightColor: Colors.yellowAccent,
                  highlightElevation: 0,
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  colorBrightness: Brightness.light,
                  onPressed: () {
                    var a = int.parse(n.text);
                    a = a % 2;
                    if (a == 0) {
                      setState(() {
                        _r = "Even";
                      });
                    } else {
                      setState(() {
                        _r = "Odd";
                      });
                    }
                  },
                ),
                /*
                  GestureDetector(
                    onTap: () {
                      var a = int.parse(n.text);
                      a=a%2;
                      if(a==0){
                        setState(() {
                          _r="Even";
                        });
                      }
                      else{
                        setState(() {
                          _r="Odd";
                        });
                      }
                    },
                    child: Container(
                      height: 50.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.red,Colors.purple]
                          ),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Center(
                          child: Text(
                            "CHECK",
                            style: TextStyle(color: Colors.white, fontSize: 30.0),
                          )),
                    ),
                  ),*/
                SizedBox(height: 30.0),
                Text(
                  _r.toString(),
                  style: TextStyle(fontSize: 30.0),
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
