import 'package:flutter/material.dart';


void main()=>runApp(MyApp());

// 层叠, 3个或3个以上的元素布局时需要使用
// 在Flutter中，Card具有略微圆角和阴影，给予3D效果
class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    var card = new Card(
      child: Column(
        children: <Widget>[
          ListTile(
            title: new Text("江西省宁都县北门", style: TextStyle(fontWeight: FontWeight.w500)),
            subtitle: Text("Jonny:134324325325"),
            leading: new Icon(Icons.contact_phone, color: Colors.lightBlue,),
          ),
          new Divider(), //分割线
          ListTile(
            title: new Text("江西省于都县北门", style: TextStyle(fontWeight: FontWeight.w500)),
            subtitle: Text("Jonny:134324325325"),
            leading: new Icon(Icons.contact_phone, color: Colors.lightBlue,),
          ),
          new Divider(),
          ListTile(
            title: new Text("江西省南康区北门", style: TextStyle(fontWeight: FontWeight.w500)),
            subtitle: Text("Jonny:134324325325"),
            leading: new Icon(Icons.contact_phone, color: Colors.lightBlue,),
          ),
        ],
      ),
    );

    return MaterialApp(
      title: "stack widget demo",
      home: new Scaffold(
        appBar: new AppBar(title: new Text("层叠布局"),),
        body: Center(
          child: card,
        ),
      ),
    );
  }
}