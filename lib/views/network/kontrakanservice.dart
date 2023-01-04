
import 'dart:convert';
import 'dart:io';
import 'package:path/path.dart';
import 'package:async/async.dart';
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

  static void addKontrakan(Kontrakan kontrakan, File _image) async {
    
    // open a byteStream
    var stream = new http.ByteStream(DelegatingStream.typed(_image.openRead()));
    // get file length
    var length = await _image.length();

    // string to uri
    var uri = Uri.parse('https://kontrakin.imtstack.com/api/store');

    // create multipart request
    var request = new http.MultipartRequest("POST", uri);

    // if you need more parameters to parse, add those like this. i added "user_id". here this "user_id" is a key of the API request
    request.fields['Address'] = kontrakan.address ?? '';
    request.fields['City'] = kontrakan.city ?? '';
    request.fields['Province'] = kontrakan.province ?? '';
    request.fields['Price_per_year'] = kontrakan.pricePerYear.toString();
    request.fields['Description'] = kontrakan.description ?? '';
    request.fields['UserID'] = kontrakan.userId.toString();

    // multipart that takes file.. here this "image_file" is a key of the API request
    var multipartFile = new http.MultipartFile('Image', stream, length, filename: basename(_image.path));

    // add file to multipart
    request.files.add(multipartFile);

    // send request to upload image
    var value;
    await request.send().then((response) async {
      // listen for response
      response.stream.transform(utf8.decoder).listen((value) {
        print(value);
        value = value;
      });

    }).catchError((e) {
      print(e);
      value = e;
    });

    return value;
  }
  static void editKontrakan(Kontrakan kontrakan, File _image) async {
    
    // open a byteStream
    var stream = new http.ByteStream(DelegatingStream.typed(_image.openRead()));
    // get file length
    var length = await _image.length();

    // string to uri
    var uri = Uri.parse('https://kontrakin.imtstack.com/api/update');

    // create multipart request
    var request = new http.MultipartRequest("POST", uri);

    // if you need more parameters to parse, add those like this. i added "user_id". here this "user_id" is a key of the API request
    request.fields['Address'] = kontrakan.address ?? '';
    request.fields['id'] = kontrakan.id.toString();
    request.fields['City'] = kontrakan.city ?? '';
    request.fields['Province'] = kontrakan.province ?? '';
    request.fields['Price_per_year'] = kontrakan.pricePerYear.toString();
    request.fields['Description'] = kontrakan.description ?? '';

    // multipart that takes file.. here this "image_file" is a key of the API request
    var multipartFile = new http.MultipartFile('Image', stream, length, filename: basename(_image.path));

    // add file to multipart
    request.files.add(multipartFile);

    // send request to upload image
    var value;
    await request.send().then((response) async {
      // listen for response
      response.stream.transform(utf8.decoder).listen((value) {
        print(value);
        value = value;
      });

    }).catchError((e) {
      print(e);
      value = e;
    });

    return value;
  }
  static void deleteKontrakan(int id) async{
    var response = await http.post(
      Uri.https(Const.baseUrl, '/api/delete'),
      headers: <String,String> {
        "Content-Type" : "application/json; charset=UTF-8",
      },
      body: jsonEncode(<String, int>{
        'id' : id
      })
    );
    var jsonObject = json.decode(response.body);

    return jsonObject;
  }
}
