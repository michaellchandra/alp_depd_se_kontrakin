part of 'pages.dart';

class Tambahkontrakan extends StatefulWidget {
  const Tambahkontrakan({Key? key}) : super(key: key);

  @override
  _TambahkontrakanState createState() => _TambahkontrakanState();
}

class _TambahkontrakanState extends State<Tambahkontrakan> {

  final _keyState = GlobalKey<FormState>();

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
                      children: [

                      ],
                    ),
                    Container(
                      child: Form(
                        key: _keyState,
                        child: Column(
                          children: [

                          ] ,
                        )
                      ),
                    )
                  ],
                )
              )
            )
        )
    );
  }
}
