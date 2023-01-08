import 'dart:convert';
import 'dart:io';
import 'package:alp_depd_se_kontrakin/models/transaksi.dart';
import 'package:alp_depd_se_kontrakin/models/transaksidetails.dart';
import 'package:path/path.dart';
import 'package:async/async.dart';
import 'package:alp_depd_se_kontrakin/views/const/const.dart';
import 'package:http/http.dart' as http;

class TransaksiService{
  static Future<List<Transaksi>> getLessorPending(int lessorID) async{
    var response = await http.post(
      Uri.https(Const.baseUrl, '/api/transaction/lessorpending'),
      headers: <String,String> {
        "Content-Type" : "application/json; charset=UTF-8",
      },
      body: jsonEncode(<String, dynamic>{
        'lessorID' : lessorID
      })
    );
    var jsonObject = json.decode(response.body);
    List<Transaksi> transaksi = [];

    transaksi = (jsonObject["data"] as List).map((e) => Transaksi.fromJson(e)).toList();
    return transaksi;
  }

  static Future<List<Transaksi>> getLessorOnGoing(int lessorID) async{
    var response = await http.post(
      Uri.https(Const.baseUrl, '/api/transaction/lessorongoing'),
      headers: <String,String> {
        "Content-Type" : "application/json; charset=UTF-8",
      },
      body: jsonEncode(<String, dynamic>{
        'lessorID' : lessorID
      })
    );
    var jsonObject = json.decode(response.body);
    List<Transaksi> transaksi = [];

    transaksi = (jsonObject["data"] as List).map((e) => Transaksi.fromJson(e)).toList();
    return transaksi;
  }

  static Future<List<Transaksi>> getLessorFinished(int lessorID) async{
    var response = await http.post(
      Uri.https(Const.baseUrl, '/api/transaction/lessorfinished'),
      headers: <String,String> {
        "Content-Type" : "application/json; charset=UTF-8",
      },
      body: jsonEncode(<String, dynamic>{
        'lessorID' : lessorID
      })
    );
    var jsonObject = json.decode(response.body);
    List<Transaksi> transaksi = [];

    transaksi = (jsonObject["data"] as List).map((e) => Transaksi.fromJson(e)).toList();
    return transaksi;
  }

  static Future<TransaksiDetails> getDetails(int id) async {
    
    final response = await http.post(
      Uri.https(Const.baseUrl, '/api/transaction/show'),
      headers: <String,String> {
        "Content-Type" : "application/json; charset=UTF-8",
      },
      body: jsonEncode(<String, dynamic>{
        'id' : id
      })
    );
    
    return TransaksiDetails.fromJson(jsonDecode(response.body)["data"]);
  }

  static void setApprove(int id) async {
    final response = await http.post(
      Uri.https(Const.baseUrl, '/api/transaction/setapprove'),
      headers: <String,String> {
        "Content-Type" : "application/json; charset=UTF-8",
      },
      body: jsonEncode(<String, dynamic>{
        'id' : id
      })
    );
    
    return null;
  }

  static void storeTransaksi(int lessorID, int lesseeID, String startDate, int rentDuration, int kontrakanID) async {
    final response = await http.post(
      Uri.https(Const.baseUrl, '/api/transaction/store'),
      headers: <String,String> {
        "Content-Type" : "application/json; charset=UTF-8",
      },
      body: jsonEncode(<String, dynamic>{
        'lessorID' : lessorID,
        'lesseeID' : lesseeID,
        'startDate' : startDate,
        'rentDuration' : rentDuration,
        'kontrakanID' : kontrakanID
      })
    );
    
    return null;
  }

  static Future<List<Transaksi>> getLesseeOnGoing(int lesseeID) async{
    var response = await http.post(
      Uri.https(Const.baseUrl, '/api/transaction/lesseeongoing'),
      headers: <String,String> {
        "Content-Type" : "application/json; charset=UTF-8",
      },
      body: jsonEncode(<String, dynamic>{
        'lesseeID' : lesseeID
      })
    );
    var jsonObject = json.decode(response.body);
    List<Transaksi> transaksi = [];

    transaksi = (jsonObject["data"] as List).map((e) => Transaksi.fromJson(e)).toList();
    return transaksi;
  }

  static Future<List<Transaksi>> getLesseeFinished(int lesseeID) async{
    var response = await http.post(
      Uri.https(Const.baseUrl, '/api/transaction/lesseefinished'),
      headers: <String,String> {
        "Content-Type" : "application/json; charset=UTF-8",
      },
      body: jsonEncode(<String, dynamic>{
        'lesseeID' : lesseeID
      })
    );
    var jsonObject = json.decode(response.body);
    List<Transaksi> transaksi = [];

    transaksi = (jsonObject["data"] as List).map((e) => Transaksi.fromJson(e)).toList();
    return transaksi;
  }
}