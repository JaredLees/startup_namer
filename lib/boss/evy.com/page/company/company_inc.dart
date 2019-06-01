import 'package:flutter/material.dart';
import 'package:startup_namer/boss/evy.com/models/company.dart';

class CompanyInc extends StatelessWidget {

  final Company _company;

  CompanyInc(Company this._company);

  @override
  Widget build(BuildContext context) {
    return new Padding(
        padding: const EdgeInsets.only(
          left: 10.0,
          right: 10.0,
          top: 10.0,
          bottom: 10.0,
        ),
        child: new Container(
          color: Colors.white,
          child: new Column(
            children: <Widget>[
              new Row(
                children: <Widget>[
                  new Container(
                    margin: const EdgeInsets.only(
                      bottom: 10.0,
                    ),
                    child: new Text(
                      "公司介绍", style: new TextStyle(fontSize: 15.0),
                    ),
                  )
                ],
              ),

              new RichText(
                  text: new TextSpan(
                    text: _company.inc,
                    style: new TextStyle(
                      fontSize: 13.0,
                      color: Colors.black
                    )
                  )
              ),
            ],
          ),
        ),
    );
  }
}