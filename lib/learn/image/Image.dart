import 'package:flutter/material.dart';

void main(){
  runApp(new MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        body: Center(
          child: new Container(
            width: 300.0,
            height: 200.0,
            padding: const EdgeInsets.all(10.0),
            margin: const EdgeInsets.all(20.0),
            child: Image.network(
            "http://blogimages.jspang.com/blogtouxiang1.jpg",
            fit: BoxFit.fitHeight,
            ),
            color: Colors.lightBlue,
          ),
        ),
      ),
    );
  }
}