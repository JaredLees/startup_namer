import 'package:flutter/material.dart';

/**
 * //主轴方向，Column的竖向、Row我的横向
    mainAxisAlignment: MainAxisAlignment.start,
    //默认是最大充满、还是根据child显示最小大小
    mainAxisSize: MainAxisSize.max,
    //副轴方向，Column的横向、Row我的竖向
    crossAxisAlignment :CrossAxisAlignment.center,
    复制代码


    作者：恋猫de小郭
    链接：https://juejin.im/post/5b631d326fb9a04fce524db2
    来源：掘金
    著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
 */
class DemoColumn extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Column(
      ///主轴居中,即是竖直向居中, Column时主轴居中表示竖直方向，Row时主轴表示水平方向
      mainAxisAlignment: MainAxisAlignment.center,
      ///大小按照最小显示
      mainAxisSize : MainAxisSize.min,
      ///副轴，横向也居中， Column时主轴居中表示水直方向，Row时主轴表示竖直方向
      crossAxisAlignment : CrossAxisAlignment.center,
      children: <Widget>[
        ///flex默认为1
        new Expanded(child: new Text("1111"), flex: 2,),
        new Expanded(child: new Text("2222")),
      ],
    );
    ;
  }
}