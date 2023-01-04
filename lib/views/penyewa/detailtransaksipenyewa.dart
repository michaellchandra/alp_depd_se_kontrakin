part of '../pages/pages.dart';

class Detailtransaksipenyewa extends StatefulWidget {
  const Detailtransaksipenyewa({ Key? key }) : super(key: key);

  @override
  _DetailtransaksipenyewaState createState() => _DetailtransaksipenyewaState();
}

class _DetailtransaksipenyewaState extends State<Detailtransaksipenyewa> {
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
                            builder: (context) => Riwayattransaksi()
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
                      "Detail Transaksi",
                      style: TextStyle(
                        fontSize: 28, 
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                      child: Expanded(
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                            ),
                            children: [
                              TextSpan(
                                text: "Transaksi ID: ",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal
                                )
                              ),
                              TextSpan(
                                text: "#D-135",
                              )
                            ]
                          )
                        )
                      ),
                    )
                  ],
                ),
                SizedBox(height: 16),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6)
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: Image(
                      image: NetworkImage(
                        "https://cf.bstatic.com/xdata/images/hotel/max1280x900/314234927.jpg?k=21291418450e2c1802e02864677b7cf811321797b1d36aaa55e1019133f82698&o=&hp=1"
                      )
                    )
                  )
                ),
                SizedBox(height: 15),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                  ),
                  elevation: 8,
                  child: Container(
                    width: double.infinity,
                    height: 200,
                    padding: EdgeInsets.fromLTRB(24, 30, 24, 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              "Tersisa",
                              style: TextStyle(
                                fontSize: 15
                              )
                            ),
                            Spacer(),
                            Text(
                              "8 Bulan 15 Hari",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff0042C1)
                              )
                            ),
                          ]
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              "Yang Menyewakan",
                              style: TextStyle(
                                fontSize: 15
                              )
                            ),
                            Spacer(),
                            Text(
                              "Era Group",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff0042C1)
                              )
                            ),
                          ]
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              "Tanggal Sewa",
                              style: TextStyle(
                                fontSize: 15
                              )
                            ),
                            Spacer(),
                            Text(
                              "03 Januari 2022",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff0042C1)
                              )
                            ),
                          ]
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              "Pembayaran",
                              style: TextStyle(
                                fontSize: 15
                              )
                            ),
                            Spacer(),
                            Text(
                              "18 Bulan",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff0042C1)
                              )
                            ),
                          ]
                        ),
                      ]
                    )
                  )
                ),
                SizedBox(height: 15),
              ]
            ),
          )
        )
      )
    );
  }
}