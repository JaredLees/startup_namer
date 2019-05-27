import 'dart:async';

import 'package:flutter/material.dart';
import 'package:startup_namer/boss/evy.com/home.dart';

class SplashPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new SplashPageState();
  }
}

class SplashPageState extends State<SplashPage>{

  Timer _timer;


  @override
  void initState() {
    super.initState();
    _timer = new Timer(const Duration(milliseconds: 1500), (){
      /// x秒后跳转到主页
      try{
        Navigator.of(context).pushAndRemoveUntil(
            new MaterialPageRoute(builder: (BuildContext context){
              return new Home();
            }),
            (Route route) => route == null
        );
      }catch(e) {

      }
    });
  }


  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Material(
      color: new Color.fromARGB(255, 0, 215, 198),
      child: new Padding(
          padding: const EdgeInsets.only(
            top: 150.0,
            ),
        child: new Column(
          children: <Widget>[
            new Text("BOSS直聘",
              style: new TextStyle(
                  fontSize: 50.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
      ),
    );
  }
}