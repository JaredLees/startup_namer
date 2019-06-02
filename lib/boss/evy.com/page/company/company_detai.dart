import 'package:flutter/material.dart';
import 'package:startup_namer/boss/evy.com/item/DotsIndicator.dart';
import 'package:startup_namer/boss/evy.com/models/company.dart';
import 'package:startup_namer/boss/evy.com/page/company/company_hot_job.dart';
import 'package:startup_namer/boss/evy.com/page/company/company_inc.dart';
import 'package:startup_namer/boss/evy.com/page/company/company_info.dart';


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

  List<Tab> _tabs;
  TabController _controller;
  List<Widget> _imagePages;
  List<String> _urls = [
    'https://img.bosszhipin.com/beijin/mcs/chatphoto/20170725/861159df793857d6cb984b52db4d4c9c.jpg',
    'https://img2.bosszhipin.com/mcs/chatphoto/20151215/a79ac724c2da2a66575dab35384d2d75532b24d64bc38c29402b4a6629fcefd6_s.jpg',
    'https://img.bosszhipin.com/beijin/mcs/chatphoto/20180207/c15c2fc01c7407b98faf4002e682676b.jpg'
  ];
  Widget _companyTabContent;
  VoidCallback onChanged;
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: new Color.fromARGB(255, 242, 242, 245),
      body: new Stack(
        children: <Widget>[
          new SingleChildScrollView(
            child: new Column(
              children: <Widget>[
                new SizedBox.fromSize(
                  size: const Size.fromHeight(_kAppBarHeight),
                  child: new IndicatorViewPager(pages: _imagePages),
                ),

                new Container(
                  color: Colors.white,
                  child: new Column(
                    children: <Widget>[
                      new CompanyInfo(widget._company),
                      new Divider(),
                      new TabBar(
                          indicatorWeight: 3.0,
                        indicatorSize: TabBarIndicatorSize.tab,
                        labelStyle: new TextStyle(fontSize: 16.0),
                        labelColor: Colors.black,
                        controller: _controller,
                        tabs: _tabs,
                        indicatorColor: Theme.of(context).primaryColor,
                      ),
                    ],
                  ),
                ),

                _companyTabContent,

              ],
            ),
          ),

          new Positioned(
            top: 10.0,
            left: -10.0,
            child: new Container(
              padding: const EdgeInsets.all(15.0),
              child: new BackButton(color: Colors.white,),
            )
          ),

        ],
      ),
    );
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

    _tabs = [
      new Tab(text: "公司概况"),
      new Tab(text: "热招职位"),
    ];

    _companyTabContent = new CompanyInc(widget._company);
    _controller = new TabController(length: _tabs.length, vsync: this);
    onChanged=(){
      setState(() {

        if(_currentIndex == 0) {
          _companyTabContent = new CompanyInc(widget._company);
        } else {
          _companyTabContent = new CompanyHotJob(widget._company);
        }

        _currentIndex = this._controller.index;

      });
    };

    _controller.addListener(onChanged);
  }

  @override
  void dispose() {
    _controller.removeListener(onChanged);
    _controller.dispose();

    super.dispose();
  }


}