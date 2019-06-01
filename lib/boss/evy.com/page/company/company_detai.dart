import 'package:flutter/material.dart';
import 'package:startup_namer/boss/evy.com/models/company.dart';


const double _kAppBarHeight = 256.0;

class CompanyDetail extends StatefulWidget {

  final Company _company;

  CompanyDetail(this._company);

  @override
  State<StatefulWidget> createState() {
    return new CompanyDetailState();
  }
}

class CompanyDetailState extends State<CompanyDetail> with TickerProviderStateMixin{

  List<Widget> _imagePages;
  List<String> _urls = [
    'https://img.bosszhipin.com/beijin/mcs/chatphoto/20170725/861159df793857d6cb984b52db4d4c9c.jpg',
    'https://img2.bosszhipin.com/mcs/chatphoto/20151215/a79ac724c2da2a66575dab35384d2d75532b24d64bc38c29402b4a6629fcefd6_s.jpg',
    'https://img.bosszhipin.com/beijin/mcs/chatphoto/20180207/c15c2fc01c7407b98faf4002e682676b.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return null;
  }

  @override
  void initState() {
    super.initState();

    if(!_urls.isEmpty) {
      _imagePages = <Widget>[];
      for (var url in _urls) {
        _imagePages.add(
          new Container(
            color: Colors.black.withAlpha(900),
            child: new ConstrainedBox(
                constraints: const BoxConstraints.expand(),
                child: new Image.network(
                  url,
                  fit: BoxFit.cover,
                  height: _kAppBarHeight,
                ),
            ),
          )
        );
      }
    }

  }
}