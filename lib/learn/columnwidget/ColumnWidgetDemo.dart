import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

/**
 * mainAxis : 主轴
 * crossAxis :  副轴
 */
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "垂直方向布局demo",
      home: Scaffold(
        appBar: AppBar(title: Text("Column Widget Demo"),),
        body:
        Center(child:Column(// Column默认宽度为内部最大widget宽度，最大高度为所有widget的叠加高度，内部元素的对齐方式为居中
           mainAxisAlignment: MainAxisAlignment.center, // 竖直方向对齐方式
           crossAxisAlignment: CrossAxisAlignment.center,
           children: <Widget>[
             Text("I am Jonny"),
             Expanded(child:Text("My name is Lijun"),),// 灵活垂直布局，填充满整个空白
             Text("I love coding")
           ],
         )
        )
      ),
    );
  }
}