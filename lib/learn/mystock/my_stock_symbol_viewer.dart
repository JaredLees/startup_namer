import 'package:flutter/material.dart';
import 'package:startup_namer/learn/mystock/my_stock_data.dart';

class MyStockSymbolViewer extends StatefulWidget{

  const MyStockSymbolViewer({ this.symbol, this.stocks });

  final String symbol;
  final MyStockData stocks;

  @override
  State<StatefulWidget> createState() {
    return new MyStockSymbolViewerState();
  }
}

class MyStockSymbolViewerState extends State<MyStockSymbolViewer>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Text("MyStockSymbolViewer"),
    );
  }
}