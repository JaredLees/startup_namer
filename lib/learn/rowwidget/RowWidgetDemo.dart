import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return new MaterialApp(
        title: "row widget demo",
        home: new Scaffold(
          appBar: new AppBar(title:new Text("水平方向布局")),
          body: new Row(
            children: <Widget>[
              Expanded(child: // 灵活布局 Expanded 会使水平布局，均匀填充空白。若整行的3个元素都使用Expanded，3个元素会平均分配空间
                new RaisedButton(onPressed: (){},
                  color: Colors.redAccent,
                  child: new Text("red button"),
                ),
              ),
              Expanded(child:
                new RaisedButton(onPressed: (){},
                  color: Colors.blueAccent,
                  child: new Text("blue button"),
                )
              ),
              new RaisedButton(onPressed: (){},
                color: Colors.orangeAccent,
                child: new Text("orange button"),
              )
            ],
          ),
        ),
      );
  }
}