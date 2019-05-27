import 'package:flutter/material.dart';
import 'package:startup_namer/cusi/FindPage.dart';
import 'package:startup_namer/cusi/FirstPage.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() {
    return new _HomePageState();
  }
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin  {
  
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 2, vsync: ScrollableState());
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title : new Text("FCSI"), centerTitle: true,),
      drawer: new UserInfo(),
      bottomNavigationBar:
      Container(
        color: Colors.teal,
        child: new TabBar(tabs: <Widget>[
          new Tab(text: "首页"),
          new Tab(text: "发现"),
        ],
          controller: _tabController,
        ),
      ),
      body: TabBarView(
        children: <Widget>[
          new FirstPage(),
          new FindPage()
        ],
        controller: _tabController,
      ),
    );
  }
}

class UserInfo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: new ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
              accountName: Text("Jonny"),
              accountEmail: Text("553403028@qq.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: new NetworkImage("https://avatars0.githubusercontent.com/u/20130349?s=460&v=4"),
              ),
          ),
          ListTile(
            leading: new Icon(Icons.account_circle),
            title: new Text("个人详情"),
          ),
          ListTile(
            leading: new Icon(Icons.account_box),
            title: new Text("紧急联系人"),
          ),
          ListTile(
            leading: new Icon(Icons.account_balance),
            title: new Text("住址列表"),
          ),
          Divider(),
          ListTile(
            leading: new Icon(Icons.settings),
            title: new Text("设置"),
          ),
          ListTile(
            leading: new Icon(Icons.info),
            title: new Text("关于我们"),
          ),
        ],
      ),
    );
  }
}