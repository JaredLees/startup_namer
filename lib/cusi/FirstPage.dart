import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FirstPageState();
  }
}

class FirstPageState extends State<FirstPage>{
  @override
  Widget build(BuildContext context) {
      return new Scaffold(
        body: new Text("first page"),
      );
  }
}