import 'package:flutter/material.dart';

class MainPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: new AppBar(
        leading: new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new TextField(
              decoration: new InputDecoration(
                fillColor: Colors.white,
                hintText: "搜索",
                icon: new Icon(Icons.search)
              ),
              maxLines: 1,
            ),
            new IconButton(icon: new Icon(Icons.search), onPressed: (){return "搜索";})
          ],
        ),
      ),


      body: new Container(
        color: Colors.white,
      ),
      backgroundColor: Colors.blue,
      bottomNavigationBar: new BottomNavigationBar(
        items: [
          new BottomNavigationBarItem(icon: new Icon(Icons.list, color: Colors.grey), title: new Text("列表")),
          new BottomNavigationBarItem(icon: new Icon(Icons.find_in_page, color: Colors.grey), title: new Text("搜索")),
          new BottomNavigationBarItem(icon: new Icon(Icons.favorite, color: Colors.grey), title: new Text("喜爱")),
          new BottomNavigationBarItem(icon: new Icon(Icons.message, color: Colors.grey), title: new Text("消息")),
          new BottomNavigationBarItem(icon: new Icon(Icons.info, color: Colors.grey), title: new Text("我的")),
        ],
      ),
    );
  }
}