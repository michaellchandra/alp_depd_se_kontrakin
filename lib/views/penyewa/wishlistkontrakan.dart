part of '../pages/pages.dart';

class Wishlistkontrakan extends StatefulWidget {
  const Wishlistkontrakan({ Key? key }) : super(key: key);

  @override
  _WishlistkontrakanState createState() => _WishlistkontrakanState();
}

class _WishlistkontrakanState extends State<Wishlistkontrakan> {
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
                            builder: (context) => Profilepenyewa()
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
                      "Wishlist Kontrakan",
                      style: TextStyle(
                        fontSize: 28, 
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
                SizedBox(height: 30),
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
                          builder: (context) => Detailwishlistkontrakan()
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
                                    text: "Provinsi: Jawa Timur\n",
                                    style: TextStyle(height: 1.3)
                                  ),
                                  new TextSpan(
                                    text: "Kota Surabaya\n\n",
                                    style: TextStyle(height: 1.3)
                                  ),
                                  new TextSpan(
                                    text: "Status: ",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal
                                    )
                                  ),
                                  new TextSpan(
                                    text: "Tersedia",
                                    style: TextStyle(
                                      color: Color(0xff0042C1),
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold
                                    )
                                  )
                                ]
                              )
                            )
                          ),
                          new GestureDetector(
                            onTap: () {
                              print("HAPUS TAPPED");
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(6),
                                bottomRight: Radius.circular(6),
                              ),
                              child: SizedBox(
                                width: 50, 
                                height: 100,
                                child: DecoratedBox(
                                  decoration: const BoxDecoration(
                                    color: Color(0xffBE0202)
                                  ),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "HAPUS",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold
                                      )
                                    )
                                  )
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
                          builder: (context) => Detailwishlistkontrakan()
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
                                    text: "Provinsi: Jawa Timur\n",
                                    style: TextStyle(height: 1.3)
                                  ),
                                  new TextSpan(
                                    text: "Kota Surabaya\n\n",
                                    style: TextStyle(height: 1.3)
                                  ),
                                  new TextSpan(
                                    text: "Status: ",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal
                                    )
                                  ),
                                  new TextSpan(
                                    text: "Tersedia",
                                    style: TextStyle(
                                      color: Color(0xff0042C1),
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold
                                    )
                                  )
                                ]
                              )
                            )
                          ),
                          new GestureDetector(
                            onTap: () {
                              print("HAPUS TAPPED");
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(6),
                                bottomRight: Radius.circular(6),
                              ),
                              child: SizedBox(
                                width: 50, 
                                height: 100,
                                child: DecoratedBox(
                                  decoration: const BoxDecoration(
                                    color: Color(0xffBE0202)
                                  ),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "HAPUS",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold
                                      )
                                    )
                                  )
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
                          builder: (context) => Detailwishlistkontrakan()
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
                                    text: "Provinsi: Jawa Timur\n",
                                    style: TextStyle(height: 1.3)
                                  ),
                                  new TextSpan(
                                    text: "Kota Surabaya\n\n",
                                    style: TextStyle(height: 1.3)
                                  ),
                                  new TextSpan(
                                    text: "Status: ",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal
                                    )
                                  ),
                                  new TextSpan(
                                    text: "Tersedia",
                                    style: TextStyle(
                                      color: Color(0xff0042C1),
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold
                                    )
                                  )
                                ]
                              )
                            )
                          ),
                          new GestureDetector(
                            onTap: () {
                              print("HAPUS TAPPED");
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(6),
                                bottomRight: Radius.circular(6),
                              ),
                              child: SizedBox(
                                width: 50, 
                                height: 100,
                                child: DecoratedBox(
                                  decoration: const BoxDecoration(
                                    color: Color(0xffBE0202)
                                  ),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "HAPUS",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold
                                      )
                                    )
                                  )
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    )
                  )
                ),
              ]
            ),
          )
        )
      )
    );
  }
}