import 'package:flutter/material.dart';
import 'package:startup_namer/learn/charpter1/DemoPage.dart';

class DemoApp extends StatelessWidget{

  DemoApp({Key key}) : super (key : key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(home: new DemoPage(),);
  }
}