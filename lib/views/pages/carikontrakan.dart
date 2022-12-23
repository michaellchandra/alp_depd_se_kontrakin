part of 'pages.dart';

class Carikontrakan extends StatefulWidget {
  const Carikontrakan({ Key? key }) : super(key: key);

  @override
  _CarikontrakanState createState() => _CarikontrakanState();
}

class _CarikontrakanState extends State<Carikontrakan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
        painter: BluePainter6(),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.fromLTRB(24, 80, 24, 50),
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
              
            ],
          )
        )
      )
    );
  }
}