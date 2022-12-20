part of 'pages.dart';

class Tambahkontrakan extends StatefulWidget {
  const Tambahkontrakan({ Key? key }) : super(key: key);

  @override
  _TambahkontrakanState createState() => _TambahkontrakanState();
}

class _TambahkontrakanState extends State<Tambahkontrakan> {
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
                      "Tambah Kontrakan",
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
                
              ],
            )
          )
        )
      )
    );
  }
}