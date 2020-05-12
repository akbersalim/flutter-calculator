import 'package:flutter/material.dart';

class OddEven extends StatefulWidget {
  @override
  _OddEvenState createState() => _OddEvenState();
}

class _OddEvenState extends State<OddEven> {
  var _r="Even";
  TextEditingController n = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          margin: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: n,
                decoration: InputDecoration(
                    hintText: "Enter a number", border: OutlineInputBorder()),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20.0),
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
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Center(
                      child: Text(
                    "CHECK",
                    style: TextStyle(color: Colors.white, fontSize: 30.0),
                  )),
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                _r.toString(),
                style: TextStyle(fontSize: 30.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}
