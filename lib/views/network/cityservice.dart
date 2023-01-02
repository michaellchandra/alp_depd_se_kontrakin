import 'dart:convert';
import 'package:alp_depd_se_kontrakin/models/city.dart';
import 'package:http/http.dart' as http;
import 'package:alp_depd_se_kontrakin/models/province.dart';
import 'package:alp_depd_se_kontrakin/views/const/const.dart';

class CityService{
  static Future<List<Province>> getProvince() async{
    print('testcityservice');
    var response = await http.get(
      Uri.https(Const.baseUrl, "/api/province"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    var job = json.decode(response.body);
    List<Province> result = [];

    result = (job['data'] as List).map((e) => Province.fromJson(e)).toList();
    
    print("CityService:");
    print(result);
    return result;
  }

  static Future<List<City>> getCity(int provinceID) async{
    var response = await http.post(
      Uri.https(Const.baseUrl, '/api/city'),
      headers: <String,String> {
        "Content-Type" : "application/json; charset=UTF-8",
      },
      body: jsonEncode(<String, dynamic>{
        'provinceID' : provinceID
      })
    );
    var jsonObject = json.decode(response.body);
    List<City> city = [];

    city = (jsonObject["data"] as List).map((e) => City.fromJson(e)).toList();
    print("CityService:");
    print(city);
    return city;
  }
}