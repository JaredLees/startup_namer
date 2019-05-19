import 'package:flutter/material.dart';

// 布局内主要是现实一个居中的Icon图标和文本，中间间隔5.0的 padding
class StarDemo extends StatelessWidget{

  /// 返回一个居中带图标和文本的Item
  _getBottomItem(IconData icon, String text) {
    ///充满 Row 横向的布局
    return new Expanded(
        flex: 1,
        child: new Center(
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new Icon(
                icon,
                size: 16,
                color: Colors.grey,
              ),
              new Padding(padding: new EdgeInsets.only(left: 5.0)),
              new Text(text,
                style: new TextStyle(color: Colors.grey, fontSize: 14.0),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              )
            ],
          ),
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      /// 卡片包装
      child: new Card(
        //// 增加点击效果
        child: new FlatButton(
            onPressed: (){print("点击了");},
            child: new Padding( ///Padding可以给其子节点添加补白（填充）
              padding: new EdgeInsets.only(left: 0.0, top: 10.0, right: 10.0, bottom: 10.0),
              child: new Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  /// 文本描述
                  new Container(
                    child: new Text(
                      "这是一点描述",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.0
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    margin: new EdgeInsets.only(top: 6.0, bottom: 2.0),
                    alignment: Alignment.topLeft,
                  ),
                  new Padding(padding: EdgeInsets.all(10.0)),
                  
                  new Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      _getBottomItem(Icons.star, "1000"),
                      _getBottomItem(Icons.link, "1000"),
                      _getBottomItem(Icons.subject, "1000")
                    ],
                  )
                ],
              ),
            )),
      ),
    );
  }
}