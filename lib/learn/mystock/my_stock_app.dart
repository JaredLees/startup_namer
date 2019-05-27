import 'package:flutter/material.dart';
import 'package:startup_namer/learn/mystock/my_stock_data.dart';
import 'package:startup_namer/learn/mystock/my_stock_home.dart';
import 'package:startup_namer/learn/mystock/my_stock_setting.dart';
import 'package:startup_namer/learn/mystock/my_stock_symbol_viewer.dart';
import 'package:startup_namer/learn/mystock/my_stock_types.dart';

class MyStocksApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MyStocksAppState();
  }
}

class MyStocksAppState extends State<MyStocksApp>{

  MyStockData myStocks;
  MyStockConfiguration _myStockConfiguration;


  @override
  void initState() {
    super.initState();
    myStocks = new MyStockData();
  }

  void myStockConfigurationUpdater(MyStockConfiguration stockConfiguration) {
    setState(() {
      _myStockConfiguration = stockConfiguration;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "My Stocks",
      theme: theme,
      routes: <String, WidgetBuilder>{
        '/' : (BuildContext context) => MyStockHome(myStocks, myStockConfigurationUpdater),
        '/setting' : (BuildContext context) => MyStockSetting(_myStockConfiguration, myStockConfigurationUpdater),
      },
      onGenerateRoute: _getRoute,
    );
  }

  Route<dynamic> _getRoute(RouteSettings settings) {
    if (settings.name == '/stock') {
      final String symbol = settings.arguments;
      return MaterialPageRoute<void>(
        settings: settings,
        builder: (BuildContext context) => MyStockSymbolViewer(symbol: symbol, stocks: myStocks),
      );
    }
    // The other paths we support are in the routes table.
    return null;
  }
}

ThemeData get theme{
  return new ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.purple,
  );
}