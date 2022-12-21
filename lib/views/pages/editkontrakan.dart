part of 'pages.dart';

class Editkontrakan extends StatefulWidget {
  const Editkontrakan({ Key? key }) : super(key: key);

  @override
  _EditkontrakanState createState() => _EditkontrakanState();
}

class _EditkontrakanState extends State<Editkontrakan> {
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
              children: [
                Row(
                  children: <Widget>[
                    new GestureDetector(
                      onTap: () {
                        Navigator.pushAndRemoveUntil<dynamic>(
                          context, 
                          MaterialPageRoute<dynamic>(
                            builder: (context) => Managekontrakan()
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
                      "Edit Kontrakan",
                      style: TextStyle(
                        fontSize: 28, 
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Container(
                  padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Pilih Provinsi",
                        style: TextStyle(
                          fontSize: 16
                        )
                      )
                    ],
                  ),
                ),
                SizedBox(height: 6),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6)
                  ),
                  elevation: 8,
                  child: SizedBox(
                    width: 400,
                    height: 50,
                    child: Row(
                      children: [
                        DropdownButton<String>(
                          hint: Text("Provinsi"),
                          items: <String>['A', 'B', 'C', 'D'].map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (_) {},
                        )
                      ]
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Pilih Kota",
                        style: TextStyle(
                          fontSize: 16
                        )
                      )
                    ],
                  ),
                ),
                SizedBox(height: 6),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6)
                  ),
                  elevation: 8,
                  child: SizedBox(
                    height: 50,
                    child: Row(
                      children: [
                        DropdownButton<String>(
                          hint: Text("Kota"),
                          icon: Icon(Icons.arrow_drop_down),
                          iconSize: 30,
                          items: <String>['A', 'B', 'C', 'D'].map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (_) {},
                        )
                      ]
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Biaya Sewa Tahunan",
                        style: TextStyle(
                          fontSize: 16
                        )
                      )
                    ],
                  ),
                ),
                SizedBox(height: 6),
                Row(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)
                      ),
                      elevation: 8,
                      child: SizedBox(
                        width: 50,
                        height: 60,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Rp.",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16
                              )
                            )
                          ]
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)
                        ),
                        elevation: 8,
                        child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              labelText: "Masukkan Biaya",
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(6)),
                                borderSide: BorderSide(width: 1, color: Colors.transparent),
                              ),
                            ),
                          ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Container(
                  padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Deskripsi",
                        style: TextStyle(
                          fontSize: 16
                        )
                      )
                    ],
                  ),
                ),
                SizedBox(height: 6),
                Row(
                  children: [
                    Container(
                      width: 344,
                      height: 200,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)
                        ),
                        elevation: 8,
                        child: TextFormField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              label: Text(
                                "\nMasukkan deskripsi dari kontrakan anda termasuk alamat, fasilitas dan ukuran kontrakan.",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  height: 1.3
                                )
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(6)),
                                borderSide: BorderSide(width: 1, color: Colors.transparent),
                              ),
                            ),
                          ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Container(
                  padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Upload Foto Kontrakan",
                        style: TextStyle(
                          fontSize: 16
                        )
                      )
                    ],
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)
                      ),
                      elevation: 8,
                      child: SizedBox(
                        width: 200,
                        height: 45,
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: ElevatedButton.icon(
                            onPressed: () {
                              print("UPLOAD FOTO TAPPED");
                            },
                            icon: Icon(
                              Icons.file_upload_outlined,
                              color: Colors.grey.shade600
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                            ),
                            label: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Upload Foto",
                                style: TextStyle(
                                  color: Colors.grey.shade600
                                )
                              ),
                            )
                          ),
                        )
                      ),
                    )
                  ],
                ),
                SizedBox(height: 50),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      print("SUBMIT TAPPED");
                      Navigator.pushAndRemoveUntil<dynamic>(
                        context, 
                        MaterialPageRoute<dynamic>(
                          builder: (context) => Managekontrakan()
                        ), 
                        (route) => false
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff0042C1),
                      elevation: 0,
                      textStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)
                      )
                    ),
                    child: Text("SIMPAN PERUBAHAN")
                  )
                )
              ],
            )
          )
        )
      )
    );
  }
}