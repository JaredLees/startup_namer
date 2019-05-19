import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    title: "导航演示",
    home: FirstScreen(),
  ));
}

class FirstScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("导航页面1"),),
      body: Center(
        child: RaisedButton(onPressed: (){
          // 操作事件
          Navigator.push(context, MaterialPageRoute(builder: (contxt)=>new SecondScreen()));
        },
          child: Text("查看商品详情页"),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("商品详情页"),),
      body: Center(
        child: RaisedButton(onPressed: (){
          // 页面返回
          Navigator.pop(context);
        },
        child: Text("返回"),
        ),
      ),
    );
  }
}