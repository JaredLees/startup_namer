import 'package:flutter/material.dart';
import 'package:startup_namer/boss/evy.com/page/company/company_view.dart';
import 'package:startup_namer/boss/evy.com/page/jobs_view.dart';
import 'package:startup_namer/boss/evy.com/page/messages_view.dart';
import 'package:startup_namer/boss/evy.com/widget/IconTab.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new HomeState();
  }
}

const double _ktabTextSize = 11.0;
const Color _kPrimaryColor = Color.fromARGB(255, 0, 215, 198);
const int INDEX_JOB = 0;
const int INDEX_COMPANY = 1;
const int INDEX_MESSAGE = 2;
const int INDEX_MINE = 3;


class HomeState extends State<Home> with SingleTickerProviderStateMixin{

  int _currentIndex = 0;
  TabController _controller;
  VoidCallback onChanged;


  @override
  void initState() {
      super.initState();

      _controller = new TabController(initialIndex: _currentIndex,length: 4, vsync: this);
      onChanged = (){
        setState(() {
          _currentIndex = this._controller.index;
        });
      };
      _controller.addListener(onChanged);
  }


  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new TabBarView(
          children: <Widget>[ /// 和tabbar对应
            new JobsTab(),new CompanyTab(),new MessageTab(),new JobsTab(),
          ],
        controller: _controller, /// 绑定controller
      ),
      bottomNavigationBar: new Material(
        color: Colors.white,
        child: new TabBar(
            controller: _controller, /// 绑定controller
            indicatorSize: TabBarIndicatorSize.label,
            labelStyle: new TextStyle(
              fontSize: _ktabTextSize,

            ),
            tabs: [
              new IconTab(
                icon: _currentIndex == INDEX_JOB ?
                "assets/images/ic_main_tab_find_pre.png" :
                "assets/images/ic_main_tab_find_nor.png",
                text: "职位",
                color: _currentIndex == INDEX_JOB ? _kPrimaryColor : Colors.grey[900],
              ),
              new IconTab(
              icon: _currentIndex == INDEX_COMPANY ?
              "assets/images/ic_main_tab_company_pre.png" :
              "assets/images/ic_main_tab_company_nor.png",
              text: "公司",
              color: _currentIndex == INDEX_COMPANY ? _kPrimaryColor : Colors.grey[900],
              ),
              new IconTab(
              icon: _currentIndex == INDEX_MESSAGE ?
              "assets/images/ic_main_tab_contacts_pre.png" :
              "assets/images/ic_main_tab_contacts_nor.png",
              text: "消息",
              color: _currentIndex == INDEX_MESSAGE ? _kPrimaryColor : Colors.grey[900],
              ),
              new IconTab(
              icon: _currentIndex == INDEX_MINE ?
              "assets/images/ic_main_tab_my_pre.png" :
              "assets/images/ic_main_tab_my_nor.png",
              text: "我的",
              color: _currentIndex == INDEX_MINE ? _kPrimaryColor : Colors.grey[900],
              ),
            ],
        ),
      ),
    );
  }
}