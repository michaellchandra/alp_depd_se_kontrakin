part of 'pages.dart';

class Detailkontrakan extends StatefulWidget {
  const Detailkontrakan({Key? key}) : super(key: key);

  @override
  _DetailkontrakanState createState() => _DetailkontrakanState();
}

class _DetailkontrakanState extends State<Detailkontrakan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomPaint(
            painter: BluePainter4(),
            child: Container(
                width: double.infinity,
                height: double.infinity,
                padding: EdgeInsets.fromLTRB(24, 80, 24, 0),
                child: SingleChildScrollView(
                  child: Column(children: <Widget>[
                    Row(
                      children: <Widget>[
                        new GestureDetector(
                          onTap: () {
                            Navigator.pushAndRemoveUntil<dynamic>(
                                context,
                                MaterialPageRoute<dynamic>(
                                    builder: (context) => Dashboard()),
                                (route) => false);
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
                                image: NetworkImage(
                                    "https://cf.bstatic.com/xdata/images/hotel/max1280x900/314234927.jpg?k=21291418450e2c1802e02864677b7cf811321797b1d36aaa55e1019133f82698&o=&hp=1")))),
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
                                          Text("Jawa Timur",
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
                                          Text("Surabaya",
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
                            height: 160,
                            padding: EdgeInsets.fromLTRB(24, 30, 24, 30),
                            child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(children: <Widget>[
                                    Text("Yang Menyewakan",
                                        style: TextStyle(fontSize: 15)),
                                    Spacer(),
                                    Text("Era Group",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff0042C1))),
                                  ]),
                                  Row(children: <Widget>[
                                    Text("Minimal Sewa",
                                        style: TextStyle(fontSize: 15)),
                                    Spacer(),
                                    Text("1 Tahun",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff0042C1))),
                                  ]),
                                  Row(children: <Widget>[
                                    Text("Biaya Sewa",
                                        style: TextStyle(fontSize: 15)),
                                    Spacer(),
                                    Text("Rp 500.000,-",
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
                                    Text(
                                        "1 jam dari Bandara Juanda menggunakan tol.\nFasilitas Tambahan :\n\u2022 Gratis Nasi\n\u2022 Listrik 150kWh/bulan\n\u2022 24 jam CCTV aktif",
                                        style: TextStyle(height: 1.3))
                                  ],
                                )
                              ],
                            ))),
                    SizedBox(height: 15),
                    Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        elevation: 8,
                        child: Container(
                            width: double.infinity,
                            height: 140,
                            padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text("Pemilik Kontrakan",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16)),
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
                                    Text("Michael Chandra",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 24)),
                                  ],
                                ),
                                SizedBox(height: 8),
                                Row(
                                  children: [
                                    Expanded(
                                        child: RichText(
                                            text: TextSpan(
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.normal),
                                                children: [
                                          TextSpan(text: "Nomor Telepon "),
                                          TextSpan(
                                              text: "086172838213",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                        ])))
                                  ],
                                ),
                              ],
                            ))),
                    SizedBox(height: 30),
                    Container(
                      padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Status Kontrakan"),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: double.infinity,
                      height: 50,
                      padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                      child: Row(
                        children: [
                          Text("Aktif",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green)),
                          Spacer(),
                          SizedBox(
                              width: 120,
                              height: 40,
                              child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.red.shade900,
                                      elevation: 0,
                                      textStyle: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8))),
                                  child: Text("MATIKAN")))
                        ],
                      ),
                    ),
                    SizedBox(height: 50),
                    SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushAndRemoveUntil<dynamic>(
                                  context,
                                  MaterialPageRoute<dynamic>(
                                      builder: (context) => Editkontrakan()),
                                  (route) => false);
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
                                  Duration.zero, () => showAlert(context));
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red.shade900,
                                elevation: 0,
                                textStyle: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6))),
                            child: Text("HAPUS KONTRAKAN"))),
                    SizedBox(height: 50),
                  ]),
                ))));
  }
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
                                  Navigator.pushAndRemoveUntil<dynamic>(
                                      context,
                                      MaterialPageRoute<dynamic>(
                                          builder: (context) =>
                                              Dashboard()),
                                      (route) => false);
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
