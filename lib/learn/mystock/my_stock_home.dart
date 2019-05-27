import 'package:flutter/material.dart';
import 'package:startup_namer/learn/mystock/my_stock_data.dart';
import 'package:startup_namer/learn/mystock/my_stock_types.dart';

class MyStockHome extends StatefulWidget{

  final MyStockData myStockData;

  final ValueChanged<MyStockConfiguration> updater;

  const MyStockHome(this.myStockData, this.updater);

  @override
  State<StatefulWidget> createState() {
    return new MyStockHomeState();
  }
}

class MyStockHomeState extends State<MyStockHome>{

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: _buildAppBar(),
      drawer: _buildDrawer(context),
    );
  }


  AppBar _buildAppBar() {
    return new AppBar(
      title: Text("Stocks"),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.search),
          tooltip: "Search",
          onPressed: (){
            print("Search");
          },
        ),
      ],
      bottom: TabBar(tabs: <Widget>[
        Tab(text: "MARKET",),
        Tab(text: "PORTFOLIO",)
      ]),
    );
  }

  Drawer _buildDrawer(BuildContext context) {
    return new Drawer(
      child: ListView(
        children: <Widget>[
          const DrawerHeader(child: Center(child: Text("Stocks"))),
          new ListTile(
            leading: Icon(Icons.assessment),
            title: Text("Stock List"),
            selected: true,
          ),
        ],
      ),
    );
  }
}