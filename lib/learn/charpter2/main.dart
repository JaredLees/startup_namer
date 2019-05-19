import 'package:flutter/material.dart';
import 'package:startup_namer/learn/charpter2/TabBarBottomPageWidget.dart';
import 'package:startup_namer/learn/charpter2/TabBarPageWidget.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Flutter Demo',
        theme: new ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: new MainPage());
  }
}

class MainPage extends StatelessWidget { // 主页
  @override
  Widget build(BuildContext context) {
    /// Scaffold 是 Material Design布局结构的基本实现。此类提供了用于显示drawer、snackbar和底部sheet的API。
    return new Scaffold(
    appBar: new AppBar(
        title: new Text("Title"),
      ),

      /// 两个纵向button
      body: new Column(
        children: <Widget>[
          /// Create a simple text button.
          new FlatButton(
              color: Colors.blue,
              onPressed: () {
                /// 管理多个页面时有两个核心概念和类：Route和 Navigator。
                /// 一个route是一个屏幕或页面的抽象，Navigator是管理route的Widget。
                /// Navigator可以通过route入栈和出栈来实现页面之间的跳转。
                Navigator.push(context, new MaterialPageRoute(builder: (context) => new TabBarPageWidget()));
              },
              child: new Text("Top Tab")),
          new FlatButton(
              color: Colors.blue,
              onPressed: () {
                Navigator.push(context, new MaterialPageRoute(builder: (context) => new TabBarBottomPageWidget()));
              },
              child: new Text("Bottom Tab")),
        ],
      ),
    );
  }
}
