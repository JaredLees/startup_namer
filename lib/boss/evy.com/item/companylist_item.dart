import 'package:flutter/material.dart';
import 'package:startup_namer/boss/evy.com/models/company.dart';
import 'package:startup_namer/boss/evy.com/page/company/company_hot_job.dart';

class CompanyListItem extends StatelessWidget {

  final Company company;

  CompanyListItem(this.company);

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Card(
        elevation: 0.0, /// 让card之间的衔接不会那么突兀。
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Container(
              padding : const EdgeInsets.only(
                left: 20.0,
                right: 15.0,
                top: 6.0,
                bottom: 5.0,
              ),
              child: new Row(
                children: <Widget>[
                  new Container(
                    child: new Image(
                      image: NetworkImage(company.logo),
                      width: 70.0,
                      height: 70.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  new Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Padding(
                        padding: const EdgeInsets.only(
                          left: 15.0,
                          top: 5.0,
                          bottom: 5.0,
                        ),
                        child: new Text(company.name,
                          style: new TextStyle(fontSize: 17.0),
                        ),
                      ),
                      new Padding(
                        padding: const EdgeInsets.only(
                          left: 15.0,
                          top: 5.0,
                          bottom: 5.0,
                        ),
                        child: new Text(company.location,
                          style: new TextStyle(fontSize: 15.0),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),

            new Container(
              padding : const EdgeInsets.only(
                left: 20.0,
                right: 15.0,
                top: 5.0,
                bottom: 5.0,
              ),
              child: new Row(
                children: <Widget>[
                  new Container(
                    padding: const EdgeInsets.only(
                      left: 5.0,
                      top: 2.0,
                      right: 5.0,
                      bottom: 2.0,
                    ),
                    color: Colors.black12,
                    child: new Text(company.size,
                      style: new TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                  new Container(
                    padding: const EdgeInsets.only(
                      left: 5.0,
                      top: 2.0,
                      right: 5.0,
                      bottom: 2.0,
                    ),
                    margin: const EdgeInsets.only(
                        left: 15.0
                    ),
                    color: Colors.black12,
                    child: new Text(company.employee,
                      style: new TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                  new Container(
                    padding: const EdgeInsets.only(
                      left: 5.0,
                      top: 2.0,
                      right: 5.0,
                      bottom: 2.0,
                    ),
                    margin: const EdgeInsets.only(
                        left: 15.0
                    ),
                    color: Colors.black12,
                    child: new Text(company.type,
                      style: new TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                ],
              ),

            ),

            new Divider(),

            new Container(
              padding : const EdgeInsets.only(
                left: 20.0,
                right: 15.0,
                top: 10.0,
                bottom: 10.0,
              ),
              child: new Row(
                children: <Widget>[
                  new Container(
                    child : new Row(
                      children: <Widget>[
                        new Text("热招：", style: new TextStyle(fontSize: 15.0, color: Colors.grey),),
                        new Text(company.hot, style: new TextStyle(fontSize: 15.0,color: Colors.greenAccent),),
                        new Text("等"+company.count+"个职位", style: new TextStyle(fontSize: 15.0, color: Colors.grey),),
                      ],
                    ),
                  ),
                  new Expanded(
                    child: new GestureDetector(
                      onTap: (){
                        Navigator.push(context,
                            new MaterialPageRoute(builder: (BuildContext context){
                                return new CompanyHotJob(company);
                            }));
                      },
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          new Padding(padding: const EdgeInsets.only(
                            right: 0.0,
                          ),
                            child: new Icon(Icons.keyboard_arrow_right, color: Colors.grey,),
                          )
                        ],
                      ),
                    )
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}