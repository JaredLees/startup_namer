import 'package:flutter/material.dart';
import 'package:startup_namer/cusi/home.dart';

class CuSiApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "fcsi",
      theme: ThemeData(
        primaryColor: Colors.teal
      ),
      home: new HomePage(),
    );
  }
}