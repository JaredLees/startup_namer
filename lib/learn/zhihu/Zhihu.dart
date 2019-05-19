import 'package:flutter/material.dart';
import 'package:startup_namer/learn/zhihu/MainPage.dart';

class Zhihu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "知乎",
      theme: new ThemeData(
        primaryColor: Colors.blue
      ),
      home: new MainPage(),
    );
  }
}