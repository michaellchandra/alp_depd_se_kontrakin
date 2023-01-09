part of 'pages.dart';

class Detailkontrakan extends StatefulWidget {
  Detailkontrakan(this.kontrakan, {this.userID, Key? key}) : super(key: key);
  var userID;
  Kontrakan kontrakan;

  @override
  _DetailkontrakanState createState() => _DetailkontrakanState();
}

class _DetailkontrakanState extends State<Detailkontrakan> {

  var id;

  @override
    void initState() {
      super.initState();
      id = widget.userID;
  }
  
  final _keyState = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
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
                  child: Column(children: <Widget>[
                    Row(
                      children: <Widget>[
                        new GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: SizedBox(
                              height: 50,
                              child: Icon(Icons.arrow_back_ios_new, size: 20)),
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
                            borderRadius: BorderRadius.circular(6)),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(6),
                            child: Image(
                                image: NetworkImage("https://kontrakin.imtstack.com/storage/" + widget.kontrakan.image!)))),
                    SizedBox(height: 15),
                    Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
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
                                    Text("Lokasi",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold))
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
                                          Text("Provinsi",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.normal,
                                                  color: Colors.grey)),
                                          Spacer(),
                                          Text(widget.kontrakan.province!,
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xff0042C1))),
                                        ],
                                      ),
                                      SizedBox(height: 10),
                                      Row(
                                        children: [
                                          Text("Kota",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.normal,
                                                  color: Colors.grey)),
                                          Spacer(),
                                          Text(widget.kontrakan.city!,
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xff0042C1))),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ))),
                    SizedBox(height: 15),
                    Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        elevation: 8,
                        child: Container(
                            width: double.infinity,
                            height: 80,
                            padding: EdgeInsets.fromLTRB(20, 16, 20, 16),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(children: <Widget>[
                                    Text(
                                      "Minimum Sewa",
                                      style: TextStyle(fontSize: 15)
                                    ),
                                    Spacer(),
                                    Text(widget.kontrakan.minimumRent.toString()+' Bulan',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff0042C1))),
                                  ]),
                                  Spacer(),
                                  Row(children: <Widget>[
                                    Text("Biaya Sewa",
                                        style: TextStyle(fontSize: 15)),
                                    Spacer(),
                                    Text('Rp '+widget.kontrakan.pricePerYear.toString(),
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff0042C1))),
                                  ]),
                                ]))),
                    SizedBox(height: 15),
                    Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        elevation: 8,
                        child: Container(
                            width: double.infinity,
                            height: 200,
                            padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text("Deskripsi Tambahan Dari Pemilik",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15)),
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
                                    Flexible(child: new Text(
                                        widget.kontrakan.description!,
                                        style: TextStyle(height: 1.3)))
                                    
                                  ],
                                )
                              ],
                            ))),
                            SizedBox(height: 50),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(

                                  padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                                  child: Container(
                                    child: RichText(
                                      text: TextSpan(
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black
                                        ),
                                        children: [
                                          TextSpan(
                                            text: "Status Kontrakan\n",
                                            style: TextStyle(
                                              height: 1.6
                                            )
                                          ),
                                          TextSpan(
                                            text: widget.kontrakan.active.toString() == "0" 
                                            ? "Tidak Aktif"
                                            : "Aktif",
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: widget.kontrakan.active.toString() == "0"
                                              ? Color(0xffBE0202)
                                              : Colors.green,
                                              height: 1.6
                                            )
                                          )
                                        ]
                                      ),
                                    )
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                  child: SizedBox(
                                    width: 140,
                                    height: 45,
                                    child: 
                                    widget.kontrakan.active == 0 ?
                                      ElevatedButton(
                                        onPressed: () {
                                            KontrakanService.setActiveKontrakan(widget.kontrakan.id!);
                                            
                                        },
                                        style: ElevatedButton.styleFrom(
                                              backgroundColor: Color(0xff0042C1),
                                              elevation: 0,
                                              textStyle: TextStyle(
                                                  fontSize: 14, fontWeight: FontWeight.bold),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(6))),
                                        child: Text('Aktifkan'))
                                    : 
                                    ElevatedButton(
                                      onPressed: () {
                                        KontrakanService.setNotActiveKontrakan(widget.kontrakan.id!);
                                        
                                      },
                                      style: ElevatedButton.styleFrom(
                                            backgroundColor: Color(0xffBE0202),
                                            elevation: 0,
                                            textStyle: TextStyle(
                                                fontSize: 14, fontWeight: FontWeight.bold),
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(6))),
                                      child: Text("Matikan"))
                                  ),
                                ),
                                // Text("Status Kontrakan",
                                //         style: TextStyle(fontSize: 15)),
                                //     Text(widget.kontrakan.active.toString() == "0" ? "Tidak Aktif" : "Aktif",
                                //         style: TextStyle(
                                //             fontSize: 16,
                                //             fontWeight: FontWeight.bold,
                                //             color: Color(0xff0042C1))),
                              ],
                            ), 
                    SizedBox(height: 50),
                      // SizedBox(
                      //     width: double.infinity,
                      //     height: 50,
                      //     child: 
                      //     widget.kontrakan.active == 0 ?
                      //       ElevatedButton(
                      //         onPressed: () {
                      //           KontrakanService.setActiveKontrakan(widget.kontrakan.id!);
                                
                      //         },
                      //         style: ElevatedButton.styleFrom(
                      //             backgroundColor: Colors.orange.shade900,
                      //             elevation: 0,
                      //             textStyle: TextStyle(
                      //                 fontSize: 14, fontWeight: FontWeight.bold),
                      //             shape: RoundedRectangleBorder(
                      //                 borderRadius: BorderRadius.circular(6))),
                      //         child: Text('Aktifkan'))
                      //     : 
                      //     ElevatedButton(
                      //       onPressed: () {
                      //         KontrakanService.setNotActiveKontrakan(widget.kontrakan.id!);
                              
                      //       },
                      //       style: ElevatedButton.styleFrom(
                      //           backgroundColor: Colors.orange.shade900,
                      //           elevation: 0,
                      //           textStyle: TextStyle(
                      //               fontSize: 14, fontWeight: FontWeight.bold),
                      //           shape: RoundedRectangleBorder(
                      //               borderRadius: BorderRadius.circular(6))),
                      //       child: Text("Matikan"))
                      //   ),
                    
                    
                    // SizedBox(height: 16),     
                    // SizedBox(height: 50),
                    SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push<dynamic>(
                                  context,
                                  MaterialPageRoute<dynamic>(
                                      builder: (context) => Editkontrakan(widget.kontrakan, id: widget.userID,)),
                                  );
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange.shade900,
                                elevation: 0,
                                textStyle: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6))),
                            child: Text("EDIT DETAIL KONTRAKAN"))),
                    SizedBox(height: 16),
                    SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                            onPressed: () {
                              Future.delayed(
                                Duration.zero, () => showAlert(context)
                              );
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red.shade900,
                                elevation: 0,
                                textStyle: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6))),
                            child: Text("HAPUS KONTRAKAN"))),
                  ]),
                ))));
  }
  
void _deleteKontrakan() async {
    KontrakanService.deleteKontrakan(widget.kontrakan.id!);
    print("deletedetail"+widget.kontrakan.id.toString());
    Navigator.pushAndRemoveUntil<dynamic>(
      context,
      MaterialPageRoute<dynamic>(
        builder: (context) => Managekontrakan(userId: id)),
        (Route<dynamic> route) =>false
    );

  }
  void showAlert(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) => AlertDialog(
            content: Container(
                width: 450,
                height: 200,
                padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Apakah Anda Yakin?",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                            child: Text(
                          "Anda akan menghapus kontrakan ini, setelah dihapus kontrakan tidak dapat dikembalikan",
                          textAlign: TextAlign.center,
                        ))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(width: 1),
                        SizedBox(
                            width: 110,
                            height: 30,
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xff0042C1),
                                    elevation: 0,
                                    textStyle: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(6))),
                                child: Text("KEMBALI"))),
                        SizedBox(
                            width: 110,
                            height: 30,
                            child: ElevatedButton(
                                onPressed: () {
                                  if (_keyState.currentState?.validate() ?? true) {
                                    _deleteKontrakan();
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.red.shade900,
                                    elevation: 0,
                                    textStyle: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(6))),
                                child: Text("SAYA YAKIN"))),
                        SizedBox(width: 1),
                      ],
                    )
                  ],
                )),
          ));
  
}

}

