part of 'pages.dart';

class Listtransaksi extends StatefulWidget {
  const Listtransaksi({ Key? key }) : super(key: key);

  @override
  _ListtransaksiState createState() => _ListtransaksiState();
}

class _ListtransaksiState extends State<Listtransaksi> {
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
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        new GestureDetector(
                          onTap: () {
                            Navigator.pushAndRemoveUntil<dynamic>(
                              context, 
                              MaterialPageRoute<dynamic>(
                                builder: (context) => Dashboard()
                              ), 
                              (route) => false
                            );
                          },
                          child: SizedBox(
                            height: 50,
                            child: Icon(Icons.arrow_back_ios_new, size: 20)
                          ),
                        ),
                        SizedBox(width: 16),
                        Text(
                          "List Transaksi",
                          style: TextStyle(
                            fontSize: 28, 
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                          child: Text(
                            "Pending",
                            style: TextStyle(
                              fontSize: 18, 
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)
                          ),
                          elevation: 8,
                            child: SizedBox(
                              width: 400,
                              height: 80,
                              child: Row(
                                children: <Widget>[
                                  SizedBox(width: 16),
                                  Icon(Icons.person_outline, size: 50),
                                  SizedBox(width: 16),
                                  Expanded(
                                    child: RichText(
                                      text: new TextSpan(
                                        style: new TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold
                                        ),
                                        children: <TextSpan>[
                                          new TextSpan(
                                            text: "Jeffrey V.\n", 
                                            style: TextStyle(height: 1.3)
                                          ),
                                          new TextSpan(
                                            text: "Sewa 2 Tahun ", 
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal
                                            )
                                          ),
                                          new TextSpan(
                                            text: "LUNAS", 
                                            style: TextStyle(
                                              color: Color(0xff0042C1),
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold
                                            )
                                          ),
                                        ]
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 16),
                                  new GestureDetector(
                                    onTap: () {
                                      print("HUBUNGI TAPPED");
                                    },
                                    child: SizedBox(
                                      width: 80, 
                                      height: 80,
                                      child: DecoratedBox(
                                        decoration: const BoxDecoration(
                                          color: Colors.grey
                                        ),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            "HUBUNGI",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold
                                            )
                                          ),
                                        )
                                      ),
                                    ),
                                  ),
                                  new GestureDetector(
                                    onTap: () {
                                      print("APPROVED TAPPED");
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(8),
                                        bottomRight: Radius.circular(8),
                                      ),
                                      child: SizedBox(
                                        width: 80, 
                                        height: 80,
                                        child: DecoratedBox(
                                          decoration: const BoxDecoration(
                                            color: Color(0xff0042C1)
                                          ),
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "APPROVE",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white
                                              )
                                            ),
                                          )
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                        ),
                        SizedBox(height: 5),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)
                          ),
                          elevation: 8,
                            child: SizedBox(
                              width: 400,
                              height: 80,
                              child: Row(
                                children: <Widget>[
                                  SizedBox(width: 16),
                                  Icon(Icons.person_outline, size: 50),
                                  SizedBox(width: 16),
                                  Expanded(
                                    child: RichText(
                                      text: new TextSpan(
                                        style: new TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold
                                        ),
                                        children: <TextSpan>[
                                          new TextSpan(
                                            text: "Mahadi R.\n", 
                                            style: TextStyle(height: 1.3)
                                          ),
                                          new TextSpan(
                                            text: "Sewa 1 Tahun ", 
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal
                                            )
                                          ),
                                          new TextSpan(
                                            text: "LUNAS", 
                                            style: TextStyle(
                                              color: Color(0xff0042C1),
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold
                                            )
                                          ),
                                        ]
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 16),
                                  new GestureDetector(
                                    onTap: () {
                                      print("HUBUNGI TAPPED");
                                    },
                                    child: SizedBox(
                                      width: 80, 
                                      height: 80,
                                      child: DecoratedBox(
                                        decoration: const BoxDecoration(
                                          color: Colors.grey
                                        ),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            "HUBUNGI",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold
                                            )
                                          ),
                                        )
                                      ),
                                    ),
                                  ),
                                  new GestureDetector(
                                    onTap: () {
                                      print("APPROVED TAPPED");
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(8),
                                        bottomRight: Radius.circular(8),
                                      ),
                                      child: SizedBox(
                                        width: 80, 
                                        height: 80,
                                        child: DecoratedBox(
                                          decoration: const BoxDecoration(
                                            color: Color(0xff0042C1)
                                          ),
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "APPROVE",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white
                                              )
                                            ),
                                          )
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                        ),
                        SizedBox(height: 24),
                        Container(
                          padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                          child: Text(
                            "On Going",
                            style: TextStyle(
                              fontSize: 18, 
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)
                          ),
                          elevation: 8,
                            child: SizedBox(
                              width: 400,
                              height: 80,
                              child: Row(
                                children: <Widget>[
                                  SizedBox(width: 16),
                                  Icon(Icons.person_outline, size: 50),
                                  SizedBox(width: 16),
                                  Expanded(
                                    child: RichText(
                                      text: new TextSpan(
                                        style: new TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold
                                        ),
                                        children: <TextSpan>[
                                          new TextSpan(
                                            text: "Selyandaru\n", 
                                            style: TextStyle(height: 1.3)
                                          ),
                                          new TextSpan(
                                            text: "Tersisa ", 
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal
                                            )
                                          ),
                                          new TextSpan(
                                            text: "8 Bulan 15 Hari", 
                                            style: TextStyle(
                                              color: Color(0xff0042C1),
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold
                                            )
                                          ),
                                        ]
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 16),
                                  new GestureDetector(
                                    onTap: () {
                                      print("DETAILS TAPPED");
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(8),
                                        bottomRight: Radius.circular(8),
                                      ),
                                      child: SizedBox(
                                        width: 80, 
                                        height: 80,
                                        child: DecoratedBox(
                                          decoration: const BoxDecoration(
                                            color: Color(0xff0042C1)
                                          ),
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "DETAILS",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white
                                              )
                                            ),
                                          )
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                        ),
                        SizedBox(height: 24),
                        Container(
                          padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                          child: Text(
                            "Finished",
                            style: TextStyle(
                              fontSize: 18, 
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)
                          ),
                          elevation: 8,
                            child: SizedBox(
                              width: 400,
                              height: 80,
                              child: Row(
                                children: <Widget>[
                                  SizedBox(width: 16),
                                  Icon(Icons.person_outline, size: 50),
                                  SizedBox(width: 16),
                                  Expanded(
                                    child: RichText(
                                      text: new TextSpan(
                                        style: new TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold
                                        ),
                                        children: <TextSpan>[
                                          new TextSpan(
                                            text: "Nathanael Suryanto\n", 
                                            style: TextStyle(height: 1.3)
                                          ),
                                          new TextSpan(
                                            text: "Terakhir Sewa ", 
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal
                                            )
                                          ),
                                          new TextSpan(
                                            text: "13 Mei 2022", 
                                            style: TextStyle(
                                              color: Color(0xff0042C1),
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold
                                            )
                                          ),
                                        ]
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 16),
                                  new GestureDetector(
                                    onTap: () {
                                      print("HUBUNGI TAPPED");
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(8),
                                        bottomRight: Radius.circular(8),
                                      ),
                                      child: SizedBox(
                                        width: 80, 
                                        height: 80,
                                        child: DecoratedBox(
                                          decoration: const BoxDecoration(
                                            color: Colors.grey
                                          ),
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "HUBUNGI",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black
                                              )
                                            ),
                                          )
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)
                          ),
                          elevation: 8,
                            child: SizedBox(
                              width: 400,
                              height: 80,
                              child: Row(
                                children: <Widget>[
                                  SizedBox(width: 16),
                                  Icon(Icons.person_outline, size: 50),
                                  SizedBox(width: 16),
                                  Expanded(
                                    child: RichText(
                                      text: new TextSpan(
                                        style: new TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold
                                        ),
                                        children: <TextSpan>[
                                          new TextSpan(
                                            text: "Michael Chandra\n", 
                                            style: TextStyle(height: 1.3)
                                          ),
                                          new TextSpan(
                                            text: "Terakhir Sewa ", 
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal
                                            )
                                          ),
                                          new TextSpan(
                                            text: "1 April 2022", 
                                            style: TextStyle(
                                              color: Color(0xff0042C1),
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold
                                            )
                                          ),
                                        ]
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 16),
                                  new GestureDetector(
                                    onTap: () {
                                      print("HUBUNGI TAPPED");
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(8),
                                        bottomRight: Radius.circular(8),
                                      ),
                                      child: SizedBox(
                                        width: 80, 
                                        height: 80,
                                        child: DecoratedBox(
                                          decoration: const BoxDecoration(
                                            color: Colors.grey
                                          ),
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "HUBUNGI",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black
                                              )
                                            ),
                                          )
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ),
                      ],
                    )
                  ],
                ),
              )
            )
          ],
        )
      )
    );
  }
}