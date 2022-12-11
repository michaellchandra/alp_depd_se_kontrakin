part of 'pages.dart';

class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isHide = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
        painter: BluePainter(),
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              padding: EdgeInsets.all(24),
              child: Center(
                child: Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Sign In",
                        style: TextStyle(
                          fontSize: 25, 
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 35),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          labelText: "Email",
                          prefixIcon: Icon(Icons.mail),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(16))
                          )
                        ),
                      ),
                      SizedBox(height: 24),
                      TextFormField(
                        obscureText: isHide,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          labelText: "Password",
                          prefixIcon: Icon(Icons.lock),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(16))
                          ),
                          suffixIcon: new GestureDetector(
                            onTap: () {
                              setState(() {
                                isHide = !isHide;
                              });
                            },
                            child: Icon(
                                isHide ? Icons.visibility : Icons.visibility_off),
                          ),
                        ),
                      ),
                      SizedBox(height: 24),
                      ElevatedButton(
                        onPressed: () async {
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey,
                          elevation: 0,
                          textStyle: TextStyle(
                            fontSize: 18,
                          ),
                          padding: EdgeInsets.fromLTRB(24, 10, 24, 10),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4))),
                        child: Text("Sign In")
                      ),
                    ],
                  ),
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}

class BluePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;
    Paint paint = Paint();

    Path mainBackground = Path();
    mainBackground.addRect(Rect.fromLTRB(0, 0, width, height));
    paint.color = Colors.white;
    canvas.drawPath(mainBackground, paint);

    Path ovalPath = Path();

    ovalPath.moveTo(0, height * 0.8);

    ovalPath.quadraticBezierTo(width * 0.55, height * 0.7, width * 0.7, height);
    
    ovalPath.lineTo(0, height);

    ovalPath.close();

    paint.color = Colors.blueAccent;
    canvas.drawPath(ovalPath, paint);

    Path ovalPath2 = Path();

    ovalPath2.moveTo(width * 0.5, 0);

    ovalPath2.quadraticBezierTo(width * 0.5, height * 0.2, width, height * 0);
    
    ovalPath2.lineTo(width, 0);

    ovalPath2.close();

    paint.color = Colors.lightBlueAccent;
    canvas.drawPath(ovalPath2, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}