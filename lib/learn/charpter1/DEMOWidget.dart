import 'package:flutter/material.dart';

/**
 * dart中的类不用写getter/setter方法，默认生成
 *
 * dart中的私有方法采用 _方法名 来指定，没有保留字 private
 *
 */
class DEMOWidget extends StatelessWidget {

  final String text;

  // 数据可以通过构造函数传递进来
  DEMOWidget(this.text);

  // 这里返回你需要的控件
  //这里末尾有没有的逗号，对于格式化代码而已是不一样的。
  Widget build(BuildContext context) {
    return new Container(
      // 白色背景
      color: Colors.white,

      // Dart语法中，?? 表示如果text为空，就返回尾号后的内容
      child: new Text(text ?? "这个是默认值，text为空时返回的"),

    );
  }
}