part of 'pages.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({ Key? key }) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  int _currentIndex = 0;

  final screens = [
    Dashboard(),
    Login(),
    Register()
  ];

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
              padding: EdgeInsets.all(24),
              child: Align(
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 60),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                            "Selamat Datang",
                            style: TextStyle(
                              fontSize: 15, 
                            ),
                            textAlign: TextAlign.left,
                          ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Selyandaru!",
                          style: TextStyle(
                            fontSize: 28, 
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        elevation: 8,
                        color: Color(0xff0042C1),
                        child: InkWell(
                          splashColor: Colors.white.withAlpha(30),
                          onTap: () {
                            Navigator.pushAndRemoveUntil<dynamic>(
                              context, 
                              MaterialPageRoute<dynamic>(
                                builder: (context) => Listtransaksi()
                              ), 
                              (route) => false
                            );
                          },
                          child: SizedBox(
                            width: 400,
                            height: 85,
                            child: Row(
                              children: <Widget>[
                                SizedBox(width: 10),
                                Icon(Icons.list, size: 50, color: Colors.white),
                                SizedBox(width: 10),
                                Expanded(
                                  child: RichText(
                                    text: new TextSpan(
                                      style: new TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold
                                      ),
                                      children: <TextSpan>[
                                        new TextSpan(
                                          text: "List Transaksi\n", 
                                          style: TextStyle(height: 1.3)
                                        ),
                                        new TextSpan(
                                          text: "Yuk cek calon penyewa kontrakanmu!", 
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal
                                          )
                                        ),
                                      ]
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Informasi Terkini",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            )
                          ),
                        ],
                      ),
                      SizedBox(height: 12),
                      SizedBox(
                        width: 400,
                        height: 140,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          children: <Widget>[
                            Card(
                              elevation: 8,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16)
                              ),
                              child: SizedBox(
                                width: 200,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      height: 85,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(16),
                                        image: DecorationImage(
                                          image: NetworkImage(
                                            "https://www.pngplay.com/wp-content/uploads/6/50-Off-Discount-Vector-Transparent-PNG.png"
                                          ),
                                          fit: BoxFit.fitHeight
                                        )
                                      ),
                                    ),
                                    SizedBox(height: 6),
                                    Row(
                                      children: [
                                        SizedBox(width: 10),
                                        Column(
                                          children: <Widget>[
                                            Text(
                                              "Diskon Pengguna Baru!", 
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(width: 10),
                                        Column(
                                          children: <Widget>[
                                            Text(
                                              "Promo hingga 50% loh!", 
                                              style: TextStyle(
                                                fontWeight: FontWeight.normal,
                                                fontSize: 12
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ),
                            ),
                            SizedBox(width: 8),
                            Card(
                              elevation: 8,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16)
                              ),
                              child: SizedBox(
                                width: 200,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      height: 85,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(16),
                                        image: DecorationImage(
                                          image: NetworkImage(
                                            "https://cdn-icons-png.flaticon.com/512/4458/4458537.png"
                                          ),
                                          fit: BoxFit.fitHeight
                                        )
                                      ),
                                    ),
                                    SizedBox(height: 2),
                                    Row(
                                      children: [
                                        SizedBox(width: 8),
                                        Text(
                                          "Undang Teman Dapat Bonus!", 
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(width: 8),
                                        Expanded(
                                          flex: 3,
                                          child: Text(
                                            "Dapatkan voucher diskon ketika mengundang teman", 
                                            style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 12
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ),
                            ),
                            SizedBox(width: 8),
                            Card(
                              elevation: 8,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16)
                              ),
                              child: SizedBox(
                                width: 200,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      height: 85,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(16),
                                        image: DecorationImage(
                                          image: NetworkImage(
                                            "https://opensource.com/sites/default/files/lead-images/bug_software_issue_tracking_computer_screen.jpg"
                                          ),
                                          fit: BoxFit.fitHeight
                                        )
                                      ),
                                    ),
                                    SizedBox(height: 2),
                                    Row(
                                      children: [
                                        SizedBox(width: 8),
                                        Text(
                                          "Laporkan Bug!", 
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(width: 8),
                                        Expanded(
                                          flex: 3,
                                          child: Text(
                                            "Bantu melaporkan bug agar aplikasi kami dapat terus berkembang", 
                                            style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 12
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ),
                            ),
                            SizedBox(width: 8),
                          ],
                        )
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
                            Navigator.pushAndRemoveUntil<dynamic>(
                              context, 
                              MaterialPageRoute<dynamic>(
                                builder: (context) => Login()
                              ), 
                              (route) => false
                            );
                          },
                          child: SizedBox(
                            width: 400,
                            height: 110,
                            child: Row(
                              children: <Widget>[
                                SizedBox(width: 16),
                                Icon(Icons.call, size: 50),
                                SizedBox(width: 12),
                                Expanded(
                                  child: RichText(
                                    text: new TextSpan(
                                      style: new TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold
                                      ),
                                      children: <TextSpan>[
                                        new TextSpan(
                                          text: "Bingung? Yuk Hubungi Kami!\n", 
                                          style: TextStyle(height: 1.3)
                                        ),
                                        new TextSpan(
                                          text: "Dapatkan bantuan dari Customer Service kami yang siap membantu anda!\n", 
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal
                                          )
                                        ),
                                      ]
                                    ),
                                  ),
                                ),
                              ],
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
                            Navigator.pushAndRemoveUntil<dynamic>(
                              context, 
                              MaterialPageRoute<dynamic>(
                                builder: (context) => Login()
                              ), 
                              (route) => false
                            );
                          },
                          child: SizedBox(
                            width: 400,
                            height: 100,
                            child: Row(
                              children: <Widget>[
                                SizedBox(width: 16),
                                Icon(Icons.share, size: 50),
                                SizedBox(width: 12),
                                Expanded(
                                  child: RichText(
                                    text: new TextSpan(
                                      style: new TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold
                                      ),
                                      children: <TextSpan>[
                                        new TextSpan(
                                          text: "Undang Teman\n", 
                                          style: TextStyle(height: 1.3)
                                        ),
                                        new TextSpan(
                                          text: "Dapatkan voucher diskon biaya sewa kontrakan dengan mengundang teman menggunakan KONTRAKIN\n", 
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal
                                          )
                                        ),
                                      ]
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      
                  ],
                )
              )
            )
          ],
        )
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xff0042C1),
        unselectedItemColor: Colors.grey.withOpacity(0.8),
        currentIndex: _currentIndex,
        backgroundColor: Colors.grey[100],
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Browse"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile"
          )
        ],
        onTap: (index) {
          setState((){
            _currentIndex = index;
          });
        },
      ),
    );
  }
}