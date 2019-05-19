import 'package:flutter/material.dart';

/**
 * Container ：最常用的默认布局！只能包含一个child:，
 * 支持配置 padding,margin,color,宽高,decoration（一般配置边框和阴影）等配置，
 * 在 Flutter 中，不是所有的控件都有 宽高、padding、margin、color 等属性，
 * 所以才会有 Padding、Center 等 Widget 的存在。
 */
class DemoContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      ///四周10大小的maring
      margin: EdgeInsets.all(10.0),
      height: 120.0,
      width: 500.0,

      /// 透明白色遮罩
      decoration: new BoxDecoration(
        ///弧度为4.0
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
          ///设置了decoration的color，就不能设置Container的color。
          color: Colors.white,
          ///边框
          border: new Border.all(color: Colors.black, width: 0.3)
      ),
      child: new Text("66666"),
    );
  }
}