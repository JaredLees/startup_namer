import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        appBar: new AppBar(
          title: new Text("test gridView"),
        ),
        body:new GridView(
          // 网格样式
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // 交叉轴数，3列
            mainAxisSpacing: 2.0, // 横轴间距
            crossAxisSpacing: 2.0, // 交叉轴间距
            childAspectRatio: 0.68 // 宽高比
          ),
          children: <Widget>[
            Image.network("http://img5.mtime.cn/mt/2019/04/29/094706.94069108_100X140X4.jpg", fit: BoxFit.cover,),
            Image.network("http://img5.mtime.cn/mt/2019/04/28/095934.13276518_100X140X4.jpg", fit: BoxFit.cover,),
            Image.network("http://img5.mtime.cn/mt/2019/04/25/110447.37092576_100X140X4.jpg", fit: BoxFit.cover,),
            Image.network("http://img5.mtime.cn/mt/2019/04/01/170855.21159487_100X140X4.jpg", fit: BoxFit.cover,),
            Image.network("http://img5.mtime.cn/mt/2019/04/15/114601.95980940_100X140X4.jpg", fit: BoxFit.cover,),
            Image.network("http://img5.mtime.cn/mt/2019/04/10/102843.62702803_100X140X4.jpg", fit: BoxFit.cover,),
            Image.network("http://img5.mtime.cn/mt/2019/04/17/100430.88763624_100X140X4.jpg", fit: BoxFit.cover,),
            Image.network("http://img5.mtime.cn/mt/2019/04/03/180222.18155502_100X140X4.jpg", fit: BoxFit.cover,),
            Image.network("http://img5.mtime.cn/mt/2019/03/29/162238.48898713_100X140X4.jpg", fit: BoxFit.cover,),
          ],
        )
      ),
    );
  }
}