import 'package:flutter/material.dart';
import 'package:startup_namer/learn/mystock/my_stock_types.dart';

class MyStockSetting extends StatefulWidget{

  final MyStockConfiguration myStockConfiguration;

  final ValueChanged<MyStockConfiguration> updater;

  const MyStockSetting(this.myStockConfiguration, this.updater);

  @override
  State createState() {
    return new MyStockSettingState();
  }
}

class MyStockSettingState extends State<MyStockSetting>{
  @override
  Widget build(BuildContext context) {
    return null;
  }
}