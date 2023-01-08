part of '../pages/pages.dart';

class Dashboardpenyewa extends StatefulWidget {
  Dashboardpenyewa({ Key? key, required this.userID }) : super(key: key);
  var userID;

  @override
  _DashboardpenyewaState createState() => _DashboardpenyewaState();
}

class _DashboardpenyewaState extends State<Dashboardpenyewa> {
  String name = '';
  var userID;

  @override
  void initState() {
    super.initState();
    _loadUserData();
    userID = widget.userID;
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
          painter: BluePainter4(),
          child: Stack(
            children: [
              Container(
                  width: double.infinity,
                  height: double.infinity,
                  padding: EdgeInsets.fromLTRB(24, 80, 24, 120),
                  child: Align(
                      child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                              padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                              child: Text(
                                "Selamat Datang",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                              child: Text(
                                '${name}',
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 12, 0, 0),
                              padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                              child: Text("Informasi Terkini",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ],
                        ),
                        SizedBox(height: 16),
                        SizedBox(
                            width: 450,
                            height: 160,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              children: <Widget>[
                                Card(
                                  elevation: 8,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16)),
                                  child: SizedBox(
                                      width: 230,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Container(
                                            height: 85,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                                image: DecorationImage(
                                                    image: NetworkImage(
                                                        "https://www.pngplay.com/wp-content/uploads/6/50-Off-Discount-Vector-Transparent-PNG.png"),
                                                    fit: BoxFit.fitHeight)),
                                          ),
                                          SizedBox(height: 6),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                8, 8, 0, 2),
                                            child: Row(
                                              children: [
                                                SizedBox(width: 10),
                                                Column(
                                                  children: <Widget>[
                                                    Text(
                                                      "Diskon Pengguna Baru!",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 14),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                8, 0, 0, 0),
                                            child: Row(
                                              children: [
                                                SizedBox(width: 10),
                                                Column(
                                                  children: <Widget>[
                                                    Text(
                                                      "Promo hingga 50% loh!",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          fontSize: 12),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      )),
                                ),
                                SizedBox(width: 8),
                                Card(
                                  elevation: 8,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16)),
                                  child: SizedBox(
                                      width: 230,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Container(
                                            height: 85,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                                image: DecorationImage(
                                                    image: NetworkImage(
                                                        "https://cdn-icons-png.flaticon.com/512/4458/4458537.png"),
                                                    fit: BoxFit.fitHeight)),
                                          ),
                                          SizedBox(height: 2),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                8, 8, 0, 2),
                                            child: Row(
                                              children: [
                                                SizedBox(width: 8),
                                                Text(
                                                  "Undang Teman Dapat Bonus!",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14),
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                8, 0, 0, 0),
                                            child: Row(
                                              children: [
                                                SizedBox(width: 8),
                                                Expanded(
                                                  flex: 3,
                                                  child: Text(
                                                    "Dapatkan voucher diskon ketika mengundang teman",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 12),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      )),
                                ),
                                SizedBox(width: 8),
                                Card(
                                  elevation: 8,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16)),
                                  child: SizedBox(
                                      width: 230,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Container(
                                            height: 85,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                                image: DecorationImage(
                                                    image: NetworkImage(
                                                        "https://opensource.com/sites/default/files/lead-images/bug_software_issue_tracking_computer_screen.jpg"),
                                                    fit: BoxFit.fitHeight)),
                                          ),
                                          SizedBox(height: 2),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                8, 8, 0, 2),
                                            child: Row(
                                              children: [
                                                SizedBox(width: 8),
                                                Text(
                                                  "Laporkan Bug!",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14),
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                8, 0, 0, 0),
                                            child: Row(
                                              children: [
                                                SizedBox(width: 8),
                                                Expanded(
                                                  flex: 3,
                                                  child: Text(
                                                    "Bantu melaporkan bug agar aplikasi kami dapat terus berkembang",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 12),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      )),
                                ),
                                SizedBox(width: 8),
                              ],
                            )),
                        SizedBox(height: 10),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          elevation: 8,
                          child: InkWell(
                            splashColor: Colors.blue.withAlpha(30),
                            onTap: () {
                              _launchURL();
                            },
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                              child: SizedBox(
                                width: 400,
                                height: 100,
                                child: Row(
                                  children: <Widget>[
                                    SizedBox(width: 16),
                                    Icon(Icons.phone_outlined, size: 50),
                                    SizedBox(width: 12),
                                    Expanded(
                                      child: RichText(
                                        text: new TextSpan(
                                            style: new TextStyle(
                                                fontSize: 18,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                            children: <TextSpan>[
                                              new TextSpan(
                                                  text:
                                                      "Bingung? Yuk Hubungi Kami!\n",
                                                  style:
                                                      TextStyle(height: 1.3)),
                                              new TextSpan(
                                                  text:
                                                      "Dapatkan bantuan dari Customer Service kami yang siap membantu anda!\n",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.normal)),
                                            ]),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          elevation: 8,
                          child: InkWell(
                            splashColor: Colors.blue.withAlpha(30),
                            onTap: () {
                              _launchURL();
                            },
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                              child: SizedBox(
                                width: 400,
                                height: 100,
                                child: Row(
                                  children: <Widget>[
                                    SizedBox(width: 16),
                                    Icon(Icons.attach_money, size: 50),
                                    SizedBox(width: 12),
                                    Expanded(
                                      child: RichText(
                                        text: new TextSpan(
                                            style: new TextStyle(
                                                fontSize: 20,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                            children: <TextSpan>[
                                              new TextSpan(
                                                  text: "Mau Pasang Iklan?\n",
                                                  style:
                                                      TextStyle(height: 1.3)),
                                              new TextSpan(
                                                  text:
                                                      "Ingin kontrakan Anda lebih diliat orang? Yuk pasang iklan sekarang!",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.normal)),
                                            ]),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),

                        //SAMPAI SINI
                      ],
                    ),
                  )))
            ],
          )),
    );
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