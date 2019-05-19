import 'package:flutter/material.dart';

void main(){
  runApp(
    new MaterialApp(
      title: "测试本地图片导入",
      home: new Scaffold(
        body: new Image.asset("/images/chenchen.jpeg"),
      ),
    )
  );
}