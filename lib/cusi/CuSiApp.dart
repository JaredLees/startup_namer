import 'package:flutter/material.dart';
import 'package:startup_namer/cusi/FindPage.dart';
import 'package:startup_namer/cusi/FirstPage.dart';
import 'package:startup_namer/cusi/home.dart';

class CuSiApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "fcsi",
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.teal
      ),
      home: new HomePage(),
      routes: {
        "/find" : (context) => new FindPage(),
        "/first" : (context) => new FirstPage(),
      },
    );
  }
}