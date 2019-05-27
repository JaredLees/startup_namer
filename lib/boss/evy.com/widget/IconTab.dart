import 'package:flutter/material.dart';

const double _kTextAndIconTabWeight = 53.0;
const double _KMarginBottom = 3.0;

class IconTab extends StatefulWidget{

  final Color color;
  final String text;
  final String icon;


  IconTab({Key key, @required this.color, @required this.text, @required this.icon})
      : super(key : key);

  @override
  State<StatefulWidget> createState() {
    return new IconTabState();
  }
}

class IconTabState extends State<IconTab>{
  @override
  Widget build(BuildContext context) {
    assert(debugCheckHasMaterial(context));

    double height = _kTextAndIconTabWeight;
    Widget lable = new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        new Container(
          child: new Image(
              image: new AssetImage(widget.icon),
              height: 30.0,
              width: 30.0,
          ),
          margin: const EdgeInsets.only(bottom: _KMarginBottom),
        ),
       _buildLabelText()
      ],
    );
    return SizedBox(
      height: height,
      child: new Center(
        child: lable,
        widthFactor: 1.0,
      ),
    );
  }

  Widget _buildLabelText() {
    return new Text(
      widget.text,
      softWrap: false,
      overflow: TextOverflow.fade,
      style: new TextStyle(color: widget.color),
    );
  }
}