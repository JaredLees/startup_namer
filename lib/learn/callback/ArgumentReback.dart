import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: "参数传递回写",
    home: new ArgumentPassReback(),
  ));
}

class ArgumentPassReback extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("找小姐姐"),),
      body: new RouteButton(),
    );
  }
}

class RouteButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new RaisedButton(onPressed: (){_navigateToXiaoJieJie(context);},
      child: Text("去找小姐姐"),
    );
  }
}

_navigateToXiaoJieJie(BuildContext context) async {
  // async关键字声明该函数内部有代码需要延迟执行
  final result  = await Navigator.push(context, // 有await标记的运算，其结果值都是一个Future对象，await关键字声明运算为延迟执行，然后return运算结果
      new MaterialPageRoute(builder: (context)=>new XiaoJieJie()));

  // 获取当前上下文的 Scaffold
  Scaffold.of(context).showSnackBar(SnackBar(content: Text("${result}")));
}

class XiaoJieJie extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
      return new Scaffold(
        appBar: AppBar(title : Text("我是小姐姐")),
        body: Center(
          child: new Column(
            children: <Widget>[
              RaisedButton(child: Text("大长腿小姐姐"),
                onPressed: () {
                  Navigator.pop(context, "大长腿小姐姐：1312321313"); // 弹出的结果将会被父页面的导航 push作为结果获取到
                },
              ),
              RaisedButton(child: Text("小蛮腰小姐姐"),
                onPressed: () {
                  Navigator.pop(context, "小蛮腰小姐姐：1312321313");
                },
              )
            ],
          ),
        ),
      );
  }
}
