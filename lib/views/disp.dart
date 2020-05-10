import 'package:flutter/material.dart';
import 'package:fluttercalc/views/add.dart';

class Disp extends StatelessWidget {
  Disp(this.num);
  var num;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Center(child: Text((num).toString(),style: TextStyle(fontSize: 60.0,color: Colors.white),)),
              )
            ],
          ),
        )

      ),
    );
  }
}
