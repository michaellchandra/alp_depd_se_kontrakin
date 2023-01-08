part of '../pages/pages.dart';


class Detailcarikontrakan extends StatefulWidget {
  Detailcarikontrakan(this.kontrakan,{ Key? key , required this.userID}) : super(key: key);
  var userID;
  Kontrakan kontrakan;

  @override
  _DetailcarikontrakanState createState() => _DetailcarikontrakanState();
}

class _DetailcarikontrakanState extends State<Detailcarikontrakan> {
  

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
                        Navigator.pop(context);
                      },
                      child: SizedBox(
                        height: 50,
                        child: Icon(Icons.arrow_back_ios_new, size: 20)
                      ),
                    ),
                    SizedBox(width: 16),
                    Text(
                      "Detail Kontrakan",
                      style: TextStyle(
                        fontSize: 28, 
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6)
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: Image(
                      image: NetworkImage("https://kontrakin.imtstack.com/storage/" + widget.kontrakan.image!)
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
                    height: 120,
                    padding: EdgeInsets.fromLTRB(20, 16, 20, 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: [
                            Text(
                              "Lokasi",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                              )
                            )
                          ],
                        ),
                        const Divider(
                          height: 20,
                          thickness: 1.5,
                          indent: 0,
                          endIndent: 0,
                          color: Colors.grey,
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Provinsi",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.grey
                                    )
                                  ),
                                  Spacer(),
                                  Text(
                                    widget.kontrakan.province!,
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff0042C1)
                                    )
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Text(
                                    "Kota",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.grey
                                    )
                                  ),
                                  Spacer(),
                                  Text(
                                    widget.kontrakan.city!,
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff0042C1)
                                    )
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
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
                    height: 160,
                    padding: EdgeInsets.fromLTRB(24, 30, 24, 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
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
                              widget.kontrakan.lessorName!,
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
                              "Minimal Sewa",
                              style: TextStyle(
                                fontSize: 15
                              )
                            ),
                            Spacer(),
                            Text(
                              widget.kontrakan.minimumRent.toString(),
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
                              "Biaya Sewa",
                              style: TextStyle(
                                fontSize: 15
                              )
                            ),
                            Spacer(),
                            Text(CurrencyFormat.convertToIdr(widget.kontrakan.pricePerYear, 2),
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
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                  ),
                  elevation: 8,
                  child: Container(
                    width: double.infinity,
                    height: 200,
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Deskripsi Tambahan Dari Pemilik",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15
                              )
                            ),
                          ],
                        ),
                        const Divider(
                          height: 20,
                          thickness: 1.5,
                          indent: 0,
                          endIndent: 0,
                          color: Colors.grey,
                        ),
                        Row(
                          children: [
                            Text(
                              widget.kontrakan.description!,
                              style: TextStyle(
                                height: 1.3
                              )
                            )
                          ],
                        )
                      ],
                    )
                  )
                ),
                SizedBox(height: 15),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                  ),
                  elevation: 8,
                  child: SizedBox(
                    width: double.infinity,
                    height: 160,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                              child: Text(
                                "Pemilik Kontrakan",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16
                                )
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          height: 20,
                          thickness: 1.5,
                          indent: 20,
                          endIndent: 20,
                          color: Colors.grey,
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: Text(
                                widget.kontrakan.lessorName!,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24
                                )
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: Expanded(
                                child: RichText(
                                  text: TextSpan(
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.normal
                                    ),
                                    children: [
                                      TextSpan(
                                        text: "Nomor Telepon "
                                      ),
                                      TextSpan(
                                        text: widget.kontrakan.phone!,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold
                                        )
                                      ),
                                    ]
                                  )
                                )
                              ),
                            )
                          ],
                        ),
                        Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(
                              width: 336,
                              height: 30,
                              child: ElevatedButton(
                                onPressed: () {
                                  print("HUBUNGI PEMILIK KONTRAKAN TAPPED");
                                  _launchURL(widget.kontrakan.phone!);
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xff0042C1),
                                  elevation: 0,
                                  textStyle: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(6),
                                      bottomRight: Radius.circular(6),
                                    )
                                  )
                                ),
                                child: Text("Hubungi Pemilik Kontrakan")
                              )
                            )
                          ],
                        )
                      ],
                    )
                  )
                ),
                SizedBox(height: 30),
              ]
            ),
          )
        )
      )
    );
  }

  _setWishlist(int kontrakanID, int userID) async{
    print("setwishlist"+kontrakanID.toString());
    WishlistService.setWishlist(kontrakanID, userID);
  }
  _deletewishlistfromkontrakan(int userID, int kontrakanID) async{
    print("deletewishlist"+kontrakanID.toString());
    WishlistService.deletefromkontrakan(userID, kontrakanID);
  }

  _launchURL(String nomorwa) async {
    var url = 'https://wa.me/62'+nomorwa;
      if (await launch(url)) {
      await canLaunch(url);
      } else {
        throw 'Could not launch $url';
      }
  }
}