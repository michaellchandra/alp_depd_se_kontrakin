part of 'pages.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.of(context)
          .pushReplacement(CupertinoPageRoute(builder: (ctx) => CheckAuth()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomPaint(
      painter: BluePainter3(),
      child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "KONTRAKIN",
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
              ),
              Text(
                "solusi cepat nyari kontrakan",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 50),
              SpinKitSpinningLines(
                color: Color(0xff0042C1),
                size: 50,
              )
            ],
          )),
    ));
  }
}
