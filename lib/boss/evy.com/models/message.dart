import 'dart:convert';

import 'package:meta/meta.dart';

class Message {
  final String name;
  final String avatar;
  final String company;
  final String position;
  final String msg;

  Message({
    @required this.name,
    @required this.avatar,
    @required this.company,
    @required this.position,
    @required this.msg
  });

  static List<Message> formJson(String json) {
      List<Message> _messages = [];

      JsonDecoder jsonDecoder = new JsonDecoder();

      var mapData = jsonDecoder.convert(json)['list'];
      mapData.forEach((obj) {
        Message message = new Message(
            name:obj['name'],
            avatar : obj['avatar'],
            company : obj['company'],
            position : obj['position'],
            msg : obj['msg']);

        _messages.add(message);

      });

      return _messages;
  }

}