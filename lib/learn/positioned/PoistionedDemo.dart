import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

// 层叠, 3个或3个以上的元素布局时需要使用
class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    var stack = new Stack(
      // x，y轴，距离左上角的距离( 两个元素事才能使用)
      //alignment: const FractionalOffset(0.5, 0.8),// 最小是0，最大是1，对齐方式。
      children: <Widget>[
        new CircleAvatar( // 圆形头型
          backgroundImage: new NetworkImage("http://blogimages.jspang.com/blogtouxiang1.jpg"),
          radius: 100.0,//圆形弧度
        ),
        new Positioned(
          child: new Text("JSPang.com"),
          top:10.0,
          left: 10.0,
        ),
        new Positioned(
          child: new Text("技术胖"),
          top: 150.0,
          left: 100.0,
        )
      ],
    );

    return MaterialApp(
      title: "stack widget demo",
      home: new Scaffold(
        appBar: new AppBar(title: new Text("层叠布局"),),
        body: Center(
          child: stack,
        ),
      ),
    );
  }
}