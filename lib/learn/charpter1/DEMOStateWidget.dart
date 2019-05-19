import 'package:flutter/material.dart';

/**
 * 你需要创建管理的是主要是 State ， 通过 State 的 build 方法去构建控件。
 * 在 State 中，你可以动态改变数据，这类似 MVVM 实现，在 setState 之后，
 * 改变的数据会触发 Widget 重新构建刷新。而下方代码中，是通过延两秒之后，让文本显示为 "这就变了数值"。

    创建你的 StatelessWidget 或者 StatefulWidget 而已。你需要的就是在 build 中堆积你的布局，然后把数据添加到 Widget 中，
    最后通过 setState 改变数据，从而实现画面变化

    作者：恋猫de小郭
    链接：https://juejin.im/post/5b631d326fb9a04fce524db2
    来源：掘金
    著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
 */
class DEMOStateWidget extends StatefulWidget {

  final String text;

  DEMOStateWidget(this.text);

  @override
  State<StatefulWidget> createState() {
    return new _DEMOStateWidgetState(text);
  }
}

class _DEMOStateWidgetState extends State<DEMOStateWidget> {

  String text;


  _DEMOStateWidgetState(this.text);

  @override
  //初始化，理论上这个函数在生命周期中只调用一次
  void initState() {

    super.initState();

    // 定时2秒
    new Future.delayed(const Duration(seconds: 1), (){
      setState(() {
        text = "这就变了个数值";
      });
    });

  }


  //在 initState 之后调用，此时可以获取其他 State
  @override
  void didUpdateWidget(DEMOStateWidget oldWidget) {
    ///在initState之后调 Called when a dependency of this [State] object changes.
    super.didChangeDependencies();
  }


  // 销毁，只会调用一次
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Text(text ?? "这是有状态的DEMO，text缺省"),
    );
  }
}