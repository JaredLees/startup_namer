import 'package:meta/meta.dart';
import 'dart:convert';

class Company{
  final String logo;
  final String name;
  final String location;

  final String type;//公司性质
  final String size; // 公司大小
  final String employee; // 公司人数

  final String hot;  //热招职位
  final String count;// 职位总数
  final String inc; //公司详情

  Company({
    @required this.logo,
    @required this.name,
    @required this.location,
    @required this.type,
    @required this.size,
    @required this.employee,
    @required this.hot,
    @required this.count,
    @required this.inc
  });

  static List<Company> fromJson(String json) {
      List<Company> _companies = [];

      JsonDecoder jsonDecoder = new JsonDecoder();

      var mapData = jsonDecoder.convert(json)['list'];

      mapData.forEach((obj) {
        Company _company = new Company(
            logo: obj['logo'],
            name: obj['name'],
            location: obj['location'],
            type: obj['type'],
            size: obj['size'],
            employee: obj['employee'],
            hot: obj['hot'],
            count: obj['count'],
            inc: obj['inc']
        );
        _companies.add(_company);
      });

      return _companies;
  }
}