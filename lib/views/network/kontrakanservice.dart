
import 'dart:convert';

import 'package:alp_depd_se_kontrakin/models/kontrakan.dart';
import 'package:alp_depd_se_kontrakin/views/const/const.dart';
import 'package:http/http.dart' as http;

class KontrakanService{
  static Future<List<Kontrakan>> getKontrakan(int userId) async{
    var response = await http.post(
      Uri.https(Const.baseUrl, '/api/index'),
      headers: <String,String> {
        "Content-Type" : "application/json; charset=UTF-8",
      },
      body: jsonEncode(<String, dynamic>{
        'UserID' : userId
      })
    );
    var jsonObject = json.decode(response.body);
    List<Kontrakan> kontrakan = [];

    kontrakan = (jsonObject["data"] as List).map((e) => Kontrakan.fromJson(e)).toList();
    return kontrakan;
  }
}
