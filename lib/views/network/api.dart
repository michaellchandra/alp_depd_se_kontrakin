part of '../pages/pages.dart';

class Network {
  final String _url = 'https://kontrakin.imtstack.com/api/v1';
  // 192.168.1.2 is my IP, change with your IP address
  var token;

  _getToken() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    token = jsonDecode(localStorage.getString('token')!)['token'];
  }

  auth(data, apiURL) async {
    var fullUrl = _url + apiURL;
    return await http.post(Uri.parse(fullUrl),
        body: jsonEncode(data), headers: _setHeaders());
  }

  getData(apiURL) async {
    var fullUrl = _url + apiURL;
    await _getToken();
    return await http.get(
      Uri.parse(fullUrl),
      headers: _setHeaders(),
    );
  }

  _setHeaders() => {
        'Content-type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
      };

  static void editProfile(int id, String name, String email, int phone) async {
    final response = await http.post(
      Uri.https(Const.baseUrl, '/api/v1/update'),
      headers: <String,String> {
        "Content-Type" : "application/json; charset=UTF-8",
      },
      body: jsonEncode(<String, dynamic>{
        'userID' : id,
        'name' : name,
        'email' : email,
        'phone' : phone
      })
    );

    var jsonObject = json.decode(response.body);

    SharedPreferences localStorage = await SharedPreferences.getInstance();
    localStorage.remove('user');
    localStorage.setString('user', json.encode(jsonObject['data']));

    print(jsonObject);
    
    return null;
  }
}
