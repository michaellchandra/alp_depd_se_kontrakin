part of '../pages/pages.dart';

class Detailtransaksi extends StatefulWidget {
  Detailtransaksi(this.transaksi, {this.lessorid, Key? key }) : super(key: key);
  Transaksi transaksi;
  var lessorid;

  @override
  _DetailtransaksiState createState() => _DetailtransaksiState();
}

class _DetailtransaksiState extends State<Detailtransaksi> {

  dynamic transaksi;
  var lolid;
  var remainingDate = "", id = 0, startDate = "", rentDuration = 0, lesseeName = "", lessorName = "", image = "";

  @override
  void initState() {
    super.initState();
    lolid = widget.transaksi.id;
    print("DetailTrans"+lolid.toString());
    getTransaction(lolid);
  }

  Future<dynamic> getTransaction(int haiid) async{
    await TransaksiService.getDetails(haiid).then((value) {
      setState(() {
        remainingDate = value.remainingDate!;
        id = value.id!;
        startDate = value.startDate!;
        rentDuration = value.rentDuration!;
        lesseeName = value.lesseeName!;
        lessorName = value.lessorName!;
        image = value.image!;
      });
    });
  }

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
                            builder: (context) => Listtransaksi(lessorID: widget.lessorid,)
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
                                text: id.toString(),
                              )
                            ]
                          )
                        )
                      
                    ),
                    
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                      
                        child: RichText(
                          text: TextSpan(
                            text: lesseeName,
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                            ),
                            
                          )
                        )
                      
                    ),
                    
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
                      image: NetworkImage("https://kontrakin.imtstack.com/storage/" + image)
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
                              remainingDate,
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
                              lessorName,
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
                              startDate,
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
                              rentDuration.toString()+" Tahun",
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