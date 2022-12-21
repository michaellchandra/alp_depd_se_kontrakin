part of 'pages.dart';

class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isHide = true;
  bool _isLoading = false;
  final _formKey = GlobalKey<FormState>();
  var email, password;
  final _scaffoldKey = GlobalKey<ScaffoldState>();


  _showMsg(msg) {
    final snackBar = SnackBar(
      content: Text(msg),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: _scaffoldKey,
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
                          prefixIcon: Icon(Icons.mail_outline),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8))
                          ),
                        ),
                        validator: (emailValue){
                            if(emailValue!.isEmpty){
                              return 'Please enter your email';
                            }
                            email = emailValue;
                            return null;
                          }
                      ),
                      SizedBox(height: 30),
                      TextFormField(
                        obscureText: isHide,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          labelText: "Password",
                          prefixIcon: Icon(Icons.lock_outline),
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
                        validator: (passwordValue){
                            if(passwordValue!.isEmpty){
                              return 'Please enter your password';
                            }
                            password = passwordValue;
                            return null;
                          }
                      ),
                      SizedBox(height: 30),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            // if (_formKey.currentState?.validate()??true) {
                            //   _login();
                            // }
                            Navigator.pushAndRemoveUntil<dynamic>(
                              context, 
                              MaterialPageRoute<dynamic>(
                                builder: (context) => Botnav(index: 0)
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

  void _login() async{
    setState(() {
      _isLoading = true;
    });
    var data = {
      'email' : email,
      'password' : password
    };

    var res = await Network().auth(data, '/login');
    var body = json.decode(res.body);
    if(body['success']){
      SharedPreferences localStorage = await SharedPreferences.getInstance();
      localStorage.setString('token', json.encode(body['token']));
      localStorage.setString('user', json.encode(body['user']));
      Navigator.pushReplacement(
          context,
          new MaterialPageRoute(
              builder: (context) => Dashboard()
          ),
      );
    }else{
      _showMsg(body['message']);
    }

    setState(() {
      _isLoading = false;
    });
  }
}

