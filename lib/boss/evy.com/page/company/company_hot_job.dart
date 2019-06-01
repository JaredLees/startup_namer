import 'package:flutter/material.dart';
import 'package:startup_namer/boss/evy.com/models/company.dart';

class CompanyHotJob extends StatelessWidget {

  final Company _company;

  CompanyHotJob(Company this._company);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Padding(
          padding: const EdgeInsets.only(
            left: 10.0,
            top: 10.0,
            right: 10.0,
            bottom: 10.0,
          ),
          child: new Row(
            children: <Widget>[
              new RichText(
                text: new TextSpan(
                    text: _company.name+"热招职位，敬请期待",
                    style: new TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                    )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}