
import 'package:flutter/material.dart';
import 'package:startup_namer/boss/evy.com/models/message.dart';

class MessageListItem extends StatelessWidget{

  final Message message;

  MessageListItem(@required this.message);

  @override
  Widget build(BuildContext context) {
    return new Container(
        child: new Card(
          elevation: 0.0,
          child: new Row( /// 水平方向排列widget
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new Padding(
                padding: const EdgeInsets.only(
                  top: 15.0,
                  left: 15.0,
                  bottom: 5.0,
                  right: 15.0,
                ),
                child: new CircleAvatar(
                  backgroundImage: new NetworkImage(message.avatar),
                ),
              ),

              new Expanded(child: new Column( /// 竖直方向排列widget
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  new Container(
                    child:new Text(
                      message.name,
                      textAlign: TextAlign.left,
                      style: new TextStyle(fontSize: 15.0),
                    ),
                    margin: const EdgeInsets.only(
                      top: 10.0,
                      bottom: 5.0,
                    ),
                  ),
                  new Padding(padding: const EdgeInsets.only(
                      top: 5.0,
                      left: 0.0,
                      right: 0.0,
                      bottom: 5.0,
                    ),
                    child:new Text(message.company + " | "+message.position,
                      style: new TextStyle(
                          fontSize: 13.0,
                          color: Colors.grey,
                      ),
                    )
                  ),
                  new Padding(padding: const EdgeInsets.only(
                      top: 5.0,
                      left: 0.0,
                      right: 0.0,
                      bottom: 5.0,
                      ),
                    child:new Text(message.msg, style: new TextStyle(
                      fontSize: 13.0,
                      color: Colors.grey,
                    ),)
                  ),
                ],
              ),)
            ],
          ),
        ),
    );
  }
}