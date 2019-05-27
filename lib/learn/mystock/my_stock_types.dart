import 'package:flutter/material.dart';

enum MyStockMode { optimistic, pessimistic }

class MyStockConfiguration{
  MyStockConfiguration(
      @required this.stockMode,
      @required this.fontSize) :
        assert(stockMode!=null),
        assert(fontSize!=null);
  MyStockMode stockMode;
  int fontSize;
}