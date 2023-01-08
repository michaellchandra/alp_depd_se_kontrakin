part of 'pages.dart';

class Pilihrole extends StatefulWidget {
  const Pilihrole({Key? key}) : super(key: key);

  @override
  _PilihroleState createState() => _PilihroleState();
}

class _PilihroleState extends State<Pilihrole> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
        painter: BluePainter2(),
        child: Stack(
          children: [
            Container(
                width: double.infinity,
                height: double.infinity,
                padding: EdgeInsets.all(24),
                child: Align(
                  child: Form(
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 110),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Selamat Datang",
                              style: TextStyle(
                                fontSize: 15,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Kamu adalah?",
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                        SizedBox(height: 40),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          elevation: 8,
                          child: InkWell(
                            splashColor: Colors.blue.withAlpha(30),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute<dynamic>(
                                      builder: (context) => Register(role: "owner")),);
                            },
                            child: SizedBox(
                              width: 400,
                              height: 150,
                              child: Row(
                                children: <Widget>[
                                  SizedBox(width: 16),
                                  Icon(Icons.home_outlined, size: 75),
                                  SizedBox(width: 8),
                                  Expanded(
                                    child: RichText(
                                      text: new TextSpan(
                                          style: new TextStyle(
                                              fontSize: 20,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                          children: <TextSpan>[
                                            new TextSpan(
                                                text: "Pemilik Kontrakan\n",
                                                style: TextStyle(height: 1.3)),
                                            new TextSpan(
                                                text:
                                                    "Kamu pemilik dari kontrakan dan memberikan sewa bagi para pencari kontrakan",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.normal)),
                                          ]),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          elevation: 8,
                          child: InkWell(
                            splashColor: Colors.blue.withAlpha(30),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute<dynamic>(
                                      builder: (context) => Register(role: "notowner")),);
                            },
                            child: SizedBox(
                              width: 400,
                              height: 150,
                              child: Row(
                                children: <Widget>[
                                  SizedBox(width: 16),
                                  Icon(Icons.search, size: 75),
                                  SizedBox(width: 8),
                                  Expanded(
                                    child: RichText(
                                      text: new TextSpan(
                                          style: new TextStyle(
                                              fontSize: 20,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                          children: <TextSpan>[
                                            new TextSpan(
                                                text: "Pencari Kontrakan\n",
                                                style: TextStyle(height: 1.3)),
                                            new TextSpan(
                                                text:
                                                    "Kamu mencari kontrakan untuk dihuni, membayar sewa, dan menghubungi pemilik kontrakan",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.normal)),
                                          ]),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        Text(
                          "KONTRAKIN",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
