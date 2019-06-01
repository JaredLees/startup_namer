import 'package:flutter/material.dart';
import 'package:startup_namer/boss/evy.com/models/company.dart';

class CompanyInfo extends StatelessWidget {
  final Company _company;
  
  CompanyInfo(Company this._company);

  @override
  Widget build(BuildContext context) {
    return new Padding(
        padding: const EdgeInsets.all(10.0),
        child: new SizedBox(
          child: new Card(
            elevation: 0.0,
            child: new Row(
              children: <Widget>[
                new Image.network(_company.logo,
                  width: 50.0, height: 50.0,
                ),

                new Expanded(child: new Column(
                  children: <Widget>[
                    new Padding(
                      padding: const EdgeInsets.only(
                        left: 15.0,
                        top: 5.0,
                        bottom: 5.0,
                      ),
                      child: new Text(_company.name,
                        style: new TextStyle(fontSize: 17.0),
                      ),
                    ),

                    new Padding(
                      padding: const EdgeInsets.only(
                        left: 15.0,
                        top: 5.0,
                        bottom: 5.0,
                      ),
                      child: new Text(_company.location,
                        style: new TextStyle(fontSize: 15.0),
                      ),
                    ),

                    new Padding(
                      padding: const EdgeInsets.only(
                        left: 15.0,
                        top: 5.0,
                        bottom: 5.0,
                      ),
                      child: new Text(_company.size+" | "+_company.employee+" | "+_company.type,
                        style: new TextStyle(fontSize: 15.0),
                      ),
                    ),

                  ],
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}