part of '../pages/pages.dart';

class Profilepenyewa extends StatefulWidget {
  Profilepenyewa({ Key? key, required this.userID }) : super(key: key);
  var userID;

  @override
  _ProfilepenyewaState createState() => _ProfilepenyewaState();
}

class _ProfilepenyewaState extends State<Profilepenyewa> {
  String name = '';

  var id;

  @override
  void initState() {
    super.initState();
    id = widget.userID;
    _loadUserData();
  }

  _loadUserData() async {
      SharedPreferences localStorage = await SharedPreferences.getInstance();
      var user = jsonDecode(localStorage.getString('user')!);

      if (user != null) {
        setState(() {
          name = user['name'];
        });
      }
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
            painter: BluePainter5(),
            child: Container(
                width: double.infinity,
                height: double.infinity,
                padding: EdgeInsets.fromLTRB(24, 60, 24, 70),
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                            child: Text(
                              "Profile",
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Container(
                            width: 100,
                          height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.grey.shade300
                            ),
                            child: Icon(
                              Icons.person,
                              size: 60
                            )
                          ),
                          SizedBox(width: 24),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${name}",
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushAndRemoveUntil<dynamic>(
                                      context,
                                      MaterialPageRoute<dynamic>(
                                          builder: (context) => Editprofilepenyewa()),
                                      (route) => false
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      side: const BorderSide(
                                        color: Color(0xff0042C1),
                                      )),
                                  child: Text(
                                    "Edit Profile",
                                    style: TextStyle(color: Color(0xff0042C1)),
                                  )),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 25),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                            child: Text(
                              "Umum",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        elevation: 4,
                        child: InkWell(
                          splashColor: Colors.blue.withAlpha(30),
                          onTap: () {
                            Navigator.pushAndRemoveUntil<dynamic>(
                              context,
                              MaterialPageRoute<dynamic>(
                                builder: (context) => Wishlistkontrakan(userID: widget.userID,)
                              ),
                              (route) => false
                            );
                          },
                          child: SizedBox(
                            width: 400,
                            height: 65,
                            child: Row(
                              children: <Widget>[
                                SizedBox(width: 16),
                                Icon(Icons.favorite_outline, size: 40),
                                SizedBox(width: 16),
                                Text("Wishlist Kontrakan",
                                    style: TextStyle(
                                      fontSize: 18,
                                    ))
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        elevation: 4,
                        child: InkWell(
                          splashColor: Colors.blue.withAlpha(30),
                          onTap: () {
                            Navigator.pushAndRemoveUntil<dynamic>(
                                context,
                                MaterialPageRoute<dynamic>(
                                    builder: (context) => Riwayattransaksi(userID: widget.userID)),
                                (route) => false);
                          },
                          child: SizedBox(
                            width: 400,
                            height: 65,
                            child: Row(
                              children: <Widget>[
                                SizedBox(width: 16),
                                Icon(Icons.history, size: 40),
                                SizedBox(width: 16),
                                Text("Riwayat Transaksi",
                                    style: TextStyle(
                                      fontSize: 18,
                                    ))
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 24),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                            child: Text(
                              "Dukungan & Bantuan",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        elevation: 4,
                        child: InkWell(
                          splashColor: Colors.blue.withAlpha(30),
                          onTap: () {
                            _launchURL();
                          },
                          child: SizedBox(
                            width: 400,
                            height: 65,
                            child: Row(
                              children: <Widget>[
                                SizedBox(width: 16),
                                Icon(Icons.phone, size: 40),
                                SizedBox(width: 16),
                                Text("Customer Service",
                                    style: TextStyle(
                                      fontSize: 18,
                                    ))
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                            child: Text(
                              "Lainnya",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        elevation: 4,
                        child: InkWell(
                          splashColor: Colors.blue.withAlpha(30),
                          onTap: () {
                            logout();
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.red.shade800),
                            child: SizedBox(
                              width: 400,
                              height: 65,
                              child: Row(
                                children: <Widget>[
                                  SizedBox(width: 16),
                                  Icon(Icons.logout_outlined,
                                      size: 40, color: Colors.white),
                                  SizedBox(width: 16),
                                  Text("Sign Out",
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.white))
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )))
    );
  }
  void logout() async {
    var res = await Network().getData('/logout');
    var body = json.decode(res.body);
    if (body['success']) {
      SharedPreferences localStorage = await SharedPreferences.getInstance();
      localStorage.remove('user');
      localStorage.remove('token');
      localStorage.remove('role');
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Login()));
    }
  }
  _launchURL() async {
    var url = 'https://wa.me/6285294295003';
      if (await launch(url)) {
        await canLaunch(url);
      } else {
        throw 'Could not launch $url';
      }
  }
}