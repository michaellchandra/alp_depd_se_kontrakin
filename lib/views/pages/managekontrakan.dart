part of 'pages.dart';

class Managekontrakan extends StatefulWidget {
  const Managekontrakan({ Key? key }) : super(key: key);

  @override
  _ManagekontrakanState createState() => _ManagekontrakanState();
}

class _ManagekontrakanState extends State<Managekontrakan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
        painter: BluePainter4(),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.fromLTRB(24, 80, 24, 120),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    new GestureDetector(
                      onTap: () {
                        Navigator.pushAndRemoveUntil<dynamic>(
                          context, 
                          MaterialPageRoute<dynamic>(
                            builder: (context) => Botnav(index: 2)
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
                      "Manage Kontrakan",
                      style: TextStyle(
                        fontSize: 28, 
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  children: <Widget>[
                    Text(
                      "Active",
                      style: TextStyle(
                        fontSize: 20, 
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  elevation: 8,
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      Navigator.pushAndRemoveUntil<dynamic>(
                        context, 
                        MaterialPageRoute<dynamic>(
                          builder: (context) => Detailkontrakan()
                        ), 
                        (route) => false
                      );
                    },
                    child: SizedBox(
                      width: 400,
                      height: 100,
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(6),
                                bottomLeft: Radius.circular(6)
                              ),
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://cf.bstatic.com/xdata/images/hotel/max1280x900/314234927.jpg?k=21291418450e2c1802e02864677b7cf811321797b1d36aaa55e1019133f82698&o=&hp=1"
                                ),
                                fit: BoxFit.cover
                              )
                            ),
                          ),
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
                                    text: "Citraland South Blok 12A\n",
                                    style: TextStyle(height: 1.3)
                                  ),
                                  new TextSpan(
                                    text: "Kota ",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal
                                    )
                                  ),
                                  new TextSpan(
                                    text: "Surabaya",
                                    style: TextStyle(
                                      color: Color(0xff0042C1),
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold
                                    )
                                  )
                                ]
                              )
                            )
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(6),
                              bottomRight: Radius.circular(6),
                            ),
                            child: SizedBox(
                              width: 6, 
                              height: 100,
                              child: DecoratedBox(
                                decoration: const BoxDecoration(
                                  color: Color(0xff0042C1)
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    )
                  )
                ),
                SizedBox(height: 30),
                Row(
                  children: <Widget>[
                    Text(
                      "Not Active",
                      style: TextStyle(
                        fontSize: 20, 
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  elevation: 8,
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      Navigator.pushAndRemoveUntil<dynamic>(
                        context, 
                        MaterialPageRoute<dynamic>(
                          builder: (context) => Detailkontrakan()
                        ), 
                        (route) => false
                      );
                    },
                    child: SizedBox(
                      width: 400,
                      height: 100,
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(6),
                                bottomLeft: Radius.circular(6)
                              ),
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://cf.bstatic.com/xdata/images/hotel/max1280x900/314234927.jpg?k=21291418450e2c1802e02864677b7cf811321797b1d36aaa55e1019133f82698&o=&hp=1"
                                ),
                                fit: BoxFit.cover
                              )
                            ),
                          ),
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
                                    text: "Citraland South Blok 12A\n",
                                    style: TextStyle(height: 1.3)
                                  ),
                                  new TextSpan(
                                    text: "Kota ",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal
                                    )
                                  ),
                                  new TextSpan(
                                    text: "Surabaya",
                                    style: TextStyle(
                                      color: Color(0xff0042C1),
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold
                                    )
                                  )
                                ]
                              )
                            )
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(6),
                              bottomRight: Radius.circular(6),
                            ),
                            child: SizedBox(
                              width: 6, 
                              height: 100,
                              child: DecoratedBox(
                                decoration: const BoxDecoration(
                                  color: Colors.grey
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    )
                  )
                ),
                SizedBox(height: 16),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  elevation: 8,
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      Navigator.pushAndRemoveUntil<dynamic>(
                        context, 
                        MaterialPageRoute<dynamic>(
                          builder: (context) => Detailkontrakan()
                        ), 
                        (route) => false
                      );
                    },
                    child: SizedBox(
                      width: 400,
                      height: 100,
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(6),
                                bottomLeft: Radius.circular(6)
                              ),
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://cf.bstatic.com/xdata/images/hotel/max1280x900/314234927.jpg?k=21291418450e2c1802e02864677b7cf811321797b1d36aaa55e1019133f82698&o=&hp=1"
                                ),
                                fit: BoxFit.cover
                              )
                            ),
                          ),
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
                                    text: "Citraland South Blok 12A\n",
                                    style: TextStyle(height: 1.3)
                                  ),
                                  new TextSpan(
                                    text: "Kota ",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal
                                    )
                                  ),
                                  new TextSpan(
                                    text: "Surabaya",
                                    style: TextStyle(
                                      color: Color(0xff0042C1),
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold
                                    )
                                  )
                                ]
                              )
                            )
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(6),
                              bottomRight: Radius.circular(6),
                            ),
                            child: SizedBox(
                              width: 6, 
                              height: 100,
                              child: DecoratedBox(
                                decoration: const BoxDecoration(
                                  color: Colors.grey
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    )
                  )
                ),
                SizedBox(height: 50),
                SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil<dynamic>(
                        context, 
                        MaterialPageRoute<dynamic>(
                          builder: (context) => Tambahkontrakan()
                        ), 
                        (route) => false
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff0042C1),
                      elevation: 0,
                      textStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold
                      ),
                      padding: EdgeInsets.fromLTRB(24, 10, 24, 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)
                      )
                    ),
                    child: Text("TAMBAH KONTRAKAN")
                  ),
                ),
              ]
            ),
          )
        )
      )
    );
  }
}