import 'dart:async';

import 'package:flutter/material.dart';

const timeout = const Duration(seconds:3);
const ms= const Duration(milliseconds:1);

class TimerWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new TimerWidgetState();
  }
}

class TimerWidgetState extends State<TimerWidget>{

  @override
  void initState() {
    super.initState();
    startTimeOut(3000);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Text("测试"),
    );
  }

  startTimeOut([int milliseconds]){
    var duration = milliseconds==null?timeout : new Duration(microseconds: milliseconds);
    return new Timer(duration ,handleTimeout);
  }

  void handleTimeout(){   //callback
    ///...
    print("run timeout");
  }
}