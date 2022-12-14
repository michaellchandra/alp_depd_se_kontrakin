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
              child: Align(
                child: Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Spacer(),
                      Text(
                        "Selamat Datang",
                        style: TextStyle(
                          fontSize: 15, 
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Silahkan Sign In",
                        style: TextStyle(
                          fontSize: 28, 
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 55),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          labelText: "Email",
                          prefixIcon: Icon(Icons.mail),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8))
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      TextFormField(
                        obscureText: isHide,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          labelText: "Password",
                          prefixIcon: Icon(Icons.lock),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8))
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
                      SizedBox(height: 30),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () async {
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff0042C1),
                            elevation: 0,
                            textStyle: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                            ),
                            padding: EdgeInsets.fromLTRB(24, 10, 24, 10),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6)
                            )
                          ),
                          child: Text("Sign In")
                        ),
                      ),
                      SizedBox(height: 20),
                      new GestureDetector(
                        onTap: () {
                          Navigator.pushAndRemoveUntil<dynamic>(
                            context, 
                            MaterialPageRoute<dynamic>(
                              builder: (context) => Register()
                            ), 
                            (route) => false
                          );
                        },
                        child: RichText(
                          text: new TextSpan(
                            style: new TextStyle(
                              fontSize: 14,
                              color: Colors.black
                            ),
                            children: <TextSpan>[
                              new TextSpan(text: "Belum Punya Akun? "),
                              new TextSpan(
                                text: "Registrasi Disini", 
                                style: TextStyle(
                                  color: Color(0xff0042C1),
                                  fontWeight: FontWeight.bold
                                )
                              ),
                            ]
                          ),
                        ),
                      ),
                      Spacer(),
                      Text(
                        "KONTRAKIN",
                        style: TextStyle(
                          color: Color(0xff0042C1),
                          fontWeight: FontWeight.bold
                        ),
                      )
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

