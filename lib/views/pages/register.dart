part of 'pages.dart';

class Register extends StatefulWidget {
  const Register({ Key? key }) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Card(
                            elevation: 0,
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {
                                Navigator.pushAndRemoveUntil<dynamic>(
                                  context, 
                                  MaterialPageRoute<dynamic>(
                                    builder: (context) => Pilihrole()
                                  ), 
                                  (route) => false
                                );
                              },
                              child: SizedBox(
                                width: 100,
                                height: 50,
                                child: Row(
                                  children: <Widget>[
                                    Icon(Icons.arrow_back_ios_new, size: 20),
                                    Expanded(
                                      child: Text("Kembali", textAlign: TextAlign.center,)
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ]
                      ),
                      SizedBox(height: 30),
                      Text(
                        "Salam Kenal!",
                        style: TextStyle(
                          fontSize: 15, 
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Silahkan Registrasi",
                        style: TextStyle(
                          fontSize: 28, 
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 45),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          labelText: "Nama Lengkap",
                          prefixIcon: Icon(Icons.person),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8))
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
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
                      SizedBox(height: 15),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          labelText: "Nomor Telepon",
                          prefixIcon: Icon(Icons.phone),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8))
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
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
                      SizedBox(height: 25),
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
                          child: Text("Register")
                        ),
                      ),
                      SizedBox(height: 20),
                      new GestureDetector(
                        onTap: () {
                          Navigator.pushAndRemoveUntil<dynamic>(
                            context, 
                            MaterialPageRoute<dynamic>(
                              builder: (context) => Login()
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
                              new TextSpan(text: "Sudah Punya Akun? "),
                              new TextSpan(
                                text: "Masuk Disini", 
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
      )
    );
  }
}