import 'package:flutter/material.dart';


class MyStock{
  String symbol;
  String name;
  double lastSale;
  String marketCap;
  double percentChange;

  // 构造函数
  MyStock(this.name, this.symbol, this.lastSale, this.marketCap, this.percentChange);
}

class MyStockData{
  final Map<String, MyStock> _stocks = <String, MyStock>{};
}