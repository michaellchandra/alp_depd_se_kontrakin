import 'dart:convert';

import 'package:alp_depd_se_kontrakin/models/wishlist.dart';
import 'package:alp_depd_se_kontrakin/views/const/const.dart';
import 'package:http/http.dart' as http;

class WishlistService{
  static void setWishlist(int kontrakanID, int userID) async {
    final response = await http.post(
      Uri.https(Const.baseUrl, '/api/setwishlist'),
      headers: <String,String> {
        "Content-Type" : "application/json; charset=UTF-8",
      },
      body: jsonEncode(<String, dynamic>{
        'kontrakanID' : kontrakanID,
        'userID' : userID,
      })
    );
    
    return null;
  }

  static Future<List<Wishlist>> getWishlist(int userID) async{
    var response = await http.post(
      Uri.https(Const.baseUrl, '/api/getwishlist'),
      headers: <String,String> {
        "Content-Type" : "application/json; charset=UTF-8",
      },
      body: jsonEncode(<String, dynamic>{
        'userID': userID,
      })
    );
    var jsonObject = json.decode(response.body);
    List<Wishlist> wishlist = [];

    wishlist = (jsonObject["data"] as List).map((e) => Wishlist.fromJson(e)).toList();
    return wishlist;
  }

  static void delete(int id) async{
    var response = await http.post(
      Uri.https(Const.baseUrl, '/api/deletewishlist'),
      headers: <String,String> {
        "Content-Type" : "application/json; charset=UTF-8",
      },
      body: jsonEncode(<String, int>{
        'id' : id
      })
    );

    return null;
  }

  static void deletefromkontrakan(int userID, int kontrakanID) async{
    var response = await http.post(
      Uri.https(Const.baseUrl, '/api/deletewishlistfromkontrakan'),
      headers: <String,String> {
        "Content-Type" : "application/json; charset=UTF-8",
      },
      body: jsonEncode(<String, int>{
        'userID' : userID,
        'kontrakanID' : kontrakanID,
      })
    );

    return null;
  }

  static Future<dynamic> isWishlist(int userID, int kontrakanID) async{
    var response = await http.post(
      Uri.https(Const.baseUrl, '/api/iswishlist'),
      headers: <String,String> {
        "Content-Type" : "application/json; charset=UTF-8",
      },
      body: jsonEncode(<String, int>{
        'userID' : userID,
        'kontrakanID' : kontrakanID,
      })
    );
    var jsonreturn = response.body;
    
    print("wishlistservice"+jsonreturn.toString());
    return jsonreturn;
  }
}