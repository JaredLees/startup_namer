import 'package:flutter/material.dart';
import 'package:startup_namer/learn/charpter1/StarDemo.dart';

class DemoPage extends StatefulWidget {
  @override
  _DemoPageState createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  @override
  Widget build(BuildContext context) {
    ///一个页面的开始
    ///如果是新页面，会自带返回按键
    return new Scaffold(
      /// 背景样式
      backgroundColor: Colors.blue,
      /// 标题栏，不仅仅只能做标题栏
      appBar: new AppBar(
        title: new Text("标题"),
      ),
      /// 正式页面的开始
      /// 一个ListView, 20个item
      body: new ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return new StarDemo();
          }),
    );
  }
}