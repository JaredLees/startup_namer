import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(title: new Text("list view"),),
        body: Center(
          child: new Container(
            height: 500.0,
            color: Colors.lightBlue,
            child: MyList(items : new List<String>.generate(1000, (i)=> "item $i")),
          ),
        ),
      ),
    );
  }
}

class MyList extends StatelessWidget{
  final List<String> items;

  MyList({Key key, @required this.items}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemBuilder: (context, index){
        return new ListTile(
          title: new Text('${items[index]}'),

        );
      },
      itemCount: items.length,
    );
  }
}