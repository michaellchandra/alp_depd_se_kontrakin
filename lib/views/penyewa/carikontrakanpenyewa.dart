part of '../pages/pages.dart';

class Carikontrakanpenyewa extends StatefulWidget {
  const Carikontrakanpenyewa({ Key? key }) : super(key: key);

  @override
  _CarikontrakanpenyewaState createState() => _CarikontrakanpenyewaState();
}

class _CarikontrakanpenyewaState extends State<Carikontrakanpenyewa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: CustomPaint(
        painter: BluePainter6(),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.fromLTRB(24, 80, 24, 0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                      child: Text(
                        "Cari",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: 400,
                  height: 60,
                  child: Expanded(
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)
                          ),
                          elevation: 8,
                          child: TextField(
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                hintText: "Cari Kontrakan",
                                icon: Container(padding: EdgeInsets.fromLTRB(10, 0, 0, 0) ,child: Icon(Icons.search)),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(6)),
                                  borderSide: BorderSide(width: 1, color: Colors.transparent),
                                ),
                              ),
                            ),
                        ),
                      ),
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                      child: Text(
                        "Pilih Lokasi Kontrakan",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        )
                      )
                    )
                  ]
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)
                      ),
                      elevation: 8,
                      child: SizedBox(
                        height: 50,
                        width: 160,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            DropdownButton<String>(
                              hint: Text("Pilih Provinsi"),
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
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)
                      ),
                      elevation: 8,
                      child: SizedBox(
                        height: 50,
                        width: 160,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            DropdownButton<String>(
                              hint: Text("Pilih Kota"),
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
                  ]
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)
                      ),
                      elevation: 8,
                      child: InkWell(
                        splashColor: Colors.blue.withAlpha(30),
                        onTap: () {
                          Navigator.pushAndRemoveUntil<dynamic>(
                            context,
                            MaterialPageRoute<dynamic>(
                              builder: (context) =>
                              Detailkontrakanpenyewa()
                            ),
                            (route) => false
                          );
                        },
                        child: SizedBox(
                          height: 255,
                          width: 335,
                          child: Column(
                            children: [
                              Container(
                                height: 140,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(6),
                                    topLeft: Radius.circular(6),
                                  ),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      "https://cf.bstatic.com/xdata/images/hotel/max1280x900/314234927.jpg?k=21291418450e2c1802e02864677b7cf811321797b1d36aaa55e1019133f82698&o=&hp=1"
                                    ),
                                    fit: BoxFit.fitWidth
                                  )
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.location_on_outlined),
                                        Text(
                                          "Sidoarjo",
                                          style: TextStyle(
                                            fontSize: 15
                                          )
                                        )
                                      ]
                                    ),
                                    SizedBox(height: 6),
                                    Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.fromLTRB(4,0,0,0),
                                          child: Expanded(
                                            child: Text(
                                              "Menteng Jakpus No. 19C",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16
                                              )
                                            ),
                                          )
                                        )
                                      ]
                                    ),
                                    SizedBox(height: 6),
                                    Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                                          child: Expanded(
                                            child: RichText(
                                              text: new TextSpan(
                                                style: new TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold
                                                ),
                                                children: <TextSpan>[
                                                  new TextSpan(
                                                    text: "Rp150.000.000 ",
                                                    style: TextStyle(
                                                      color: Color(0xffFF4C00),
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.bold
                                                    )
                                                  ),
                                                  new TextSpan(
                                                    text: "/ tahun",
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.normal
                                                    )
                                                  )
                                                ]
                                              )
                                            )
                                          ),
                                        ),
                                      ]
                                    )
                                  ],
                                ),
                              )
                            ]
                          )
                        ),
                      ),
                    ),
                  ]
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)
                      ),
                      elevation: 8,
                      child: InkWell(
                        splashColor: Colors.blue.withAlpha(30),
                        onTap: () {
                          Navigator.pushAndRemoveUntil<dynamic>(
                            context,
                            MaterialPageRoute<dynamic>(
                              builder: (context) =>
                              Detailkontrakanpenyewa()
                            ),
                            (route) => false
                          );
                        },
                        child: SizedBox(
                          height: 255,
                          width: 335,
                          child: Column(
                            children: [
                              Container(
                                height: 140,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(6),
                                    topLeft: Radius.circular(6),
                                  ),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      "https://cf.bstatic.com/xdata/images/hotel/max1280x900/314234927.jpg?k=21291418450e2c1802e02864677b7cf811321797b1d36aaa55e1019133f82698&o=&hp=1"
                                    ),
                                    fit: BoxFit.fitWidth
                                  )
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.location_on_outlined),
                                        Text(
                                          "Sidoarjo",
                                          style: TextStyle(
                                            fontSize: 15
                                          )
                                        )
                                      ]
                                    ),
                                    SizedBox(height: 6),
                                    Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.fromLTRB(4,0,0,0),
                                          child: Expanded(
                                            child: Text(
                                              "Menteng Jakpus No. 19C",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16
                                              )
                                            ),
                                          )
                                        )
                                      ]
                                    ),
                                    SizedBox(height: 6),
                                    Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                                          child: Expanded(
                                            child: RichText(
                                              text: new TextSpan(
                                                style: new TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold
                                                ),
                                                children: <TextSpan>[
                                                  new TextSpan(
                                                    text: "Rp150.000.000 ",
                                                    style: TextStyle(
                                                      color: Color(0xffFF4C00),
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.bold
                                                    )
                                                  ),
                                                  new TextSpan(
                                                    text: "/ tahun",
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.normal
                                                    )
                                                  )
                                                ]
                                              )
                                            )
                                          ),
                                        ),
                                      ]
                                    )
                                  ],
                                ),
                              )
                            ]
                          )
                        ),
                      ),
                    ),
                  ]
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)
                      ),
                      elevation: 8,
                      child: InkWell(
                        splashColor: Colors.blue.withAlpha(30),
                        onTap: () {
                          Navigator.pushAndRemoveUntil<dynamic>(
                            context,
                            MaterialPageRoute<dynamic>(
                              builder: (context) =>
                              Detailkontrakanpenyewa()
                            ),
                            (route) => false
                          );
                        },
                        child: SizedBox(
                          height: 255,
                          width: 335,
                          child: Column(
                            children: [
                              Container(
                                height: 140,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(6),
                                    topLeft: Radius.circular(6),
                                  ),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      "https://cf.bstatic.com/xdata/images/hotel/max1280x900/314234927.jpg?k=21291418450e2c1802e02864677b7cf811321797b1d36aaa55e1019133f82698&o=&hp=1"
                                    ),
                                    fit: BoxFit.fitWidth
                                  )
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.location_on_outlined),
                                        Text(
                                          "Sidoarjo",
                                          style: TextStyle(
                                            fontSize: 15
                                          )
                                        )
                                      ]
                                    ),
                                    SizedBox(height: 6),
                                    Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.fromLTRB(4,0,0,0),
                                          child: Expanded(
                                            child: Text(
                                              "Menteng Jakpus No. 19C",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16
                                              )
                                            ),
                                          )
                                        )
                                      ]
                                    ),
                                    SizedBox(height: 6),
                                    Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                                          child: Expanded(
                                            child: RichText(
                                              text: new TextSpan(
                                                style: new TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold
                                                ),
                                                children: <TextSpan>[
                                                  new TextSpan(
                                                    text: "Rp150.000.000 ",
                                                    style: TextStyle(
                                                      color: Color(0xffFF4C00),
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.bold
                                                    )
                                                  ),
                                                  new TextSpan(
                                                    text: "/ tahun",
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.normal
                                                    )
                                                  )
                                                ]
                                              )
                                            )
                                          ),
                                        ),
                                      ]
                                    )
                                  ],
                                ),
                              )
                            ]
                          )
                        ),
                      ),
                    ),
                  ]
                ),
              ],
            ),
          )
        )
      )
    );
  }
}