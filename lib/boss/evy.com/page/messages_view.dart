
import 'package:flutter/material.dart';
import 'package:startup_namer/boss/evy.com/item/messgelist_item.dart';
import 'package:startup_namer/boss/evy.com/models/message.dart';

class MessageTab extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new MessageList();
  }
}

class MessageList extends State<MessageTab>{

  List<Message> _messageList = [];


  @override
  void initState() {
    super.initState();

    getMessageList();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: new Color.fromARGB(255, 242, 242, 245),
      appBar: new AppBar(
        elevation: 0.0,
        title: new Text("消息", style: new TextStyle(
          fontSize: 20.0,
          color: Colors.white
        ),),
      ),
      body: new ListView.builder(
        itemCount: _messageList.length,
        itemBuilder: buildMessageItem,
      ),
    );
  }

  void getMessageList() {
    setState(() {
      _messageList = Message.formJson("""
          {
            "list": [
              {
                "avatar": "https://img.bosszhipin.com/beijin/mcs/useravatar/20180301/17aefca1b3d0dd6c5f94409e4c1e42a2cfcd208495d565ef66e7dff9f98764da_s.jpg",
                "name": "小可爱",
                "company": "百度",
                "position": "HR",
                "msg": "你好"
              },
              {
                "avatar": "https://img.bosszhipin.com/beijin/mcs/useravatar/20180301/17aefca1b3d0dd6c5f94409e4c1e42a2cfcd208495d565ef66e7dff9f98764da_s.jpg",
                "name": "小可爱",
                "company": "百度",
                "position": "HR",
                "msg": "你好"
              },
              {
                "avatar": "https://img.bosszhipin.com/beijin/mcs/useravatar/20180301/17aefca1b3d0dd6c5f94409e4c1e42a2cfcd208495d565ef66e7dff9f98764da_s.jpg",
                "name": "小可爱",
                "company": "百度",
                "position": "HR",
                "msg": "你好"
              },
              {
                "avatar": "https://img.bosszhipin.com/beijin/mcs/useravatar/20180301/17aefca1b3d0dd6c5f94409e4c1e42a2cfcd208495d565ef66e7dff9f98764da_s.jpg",
                "name": "小可爱",
                "company": "百度",
                "position": "HR",
                "msg": "你好"
              },
              {
                "avatar": "https://img.bosszhipin.com/beijin/mcs/useravatar/20180301/17aefca1b3d0dd6c5f94409e4c1e42a2cfcd208495d565ef66e7dff9f98764da_s.jpg",
                "name": "小可爱",
                "company": "百度",
                "position": "HR",
                "msg": "你好"
              },
              {
                "avatar": "https://img.bosszhipin.com/beijin/mcs/useravatar/20180301/17aefca1b3d0dd6c5f94409e4c1e42a2cfcd208495d565ef66e7dff9f98764da_s.jpg",
                "name": "小可爱",
                "company": "百度",
                "position": "HR",
                "msg": "你好"
              },
              {
                "avatar": "https://img.bosszhipin.com/beijin/mcs/useravatar/20180301/17aefca1b3d0dd6c5f94409e4c1e42a2cfcd208495d565ef66e7dff9f98764da_s.jpg",
                "name": "小可爱",
                "company": "百度",
                "position": "HR",
                "msg": "你好"
              },
              {
                "avatar": "https://img.bosszhipin.com/beijin/mcs/useravatar/20180301/17aefca1b3d0dd6c5f94409e4c1e42a2cfcd208495d565ef66e7dff9f98764da_s.jpg",
                "name": "小可爱",
                "company": "百度",
                "position": "HR",
                "msg": "你好"
              }
            ]
          }
      """);
    });
  }

  Widget buildMessageItem(BuildContext context, int index) {
      Message message = _messageList[index];

      var messageItem = new GestureDetector( /// 手势探测器
        onTap: (){
          showDialog(context: context, child: new AlertDialog(
            content: new Text("敬请期待", style: new TextStyle(fontSize: 20.0),),
          ));
        },
        child: new MessageListItem(message),
      );

      return messageItem;
  }
}