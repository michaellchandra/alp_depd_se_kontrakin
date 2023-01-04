part of 'pages.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool isHide = true;
  bool _isLoading = false;
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  String name = '', email = '', password = '';

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
                                              builder: (context) =>
                                                  Pilihrole()),
                                          (route) => false);
                                    },
                                    child: SizedBox(
                                      width: 100,
                                      height: 50,
                                      child: Row(
                                        children: <Widget>[
                                          Icon(Icons.arrow_back_ios_new,
                                              size: 20),
                                          Expanded(
                                              child: Text(
                                            "Kembali",
                                            textAlign: TextAlign.center,
                                          ))
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
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
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              decoration: InputDecoration(
                                labelText: "Nama Lengkap",
                                prefixIcon: Icon(Icons.person_outline),
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8))),
                              ),
                              validator: (nameValue) {
                                if (nameValue!.isEmpty) {
                                  return 'Please enter your full name';
                                }
                                name = nameValue;
                                return null;
                              }),
                          SizedBox(height: 15),
                          TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              decoration: InputDecoration(
                                labelText: "Email",
                                prefixIcon: Icon(Icons.mail_outline),
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8))),
                              ),
                              validator: (emailValue) {
                                if (emailValue!.isEmpty) {
                                  return 'Please enter your email';
                                }
                                email = emailValue;
                                return null;
                              }),
                          SizedBox(height: 15),
                          TextFormField(
                            keyboardType: TextInputType.number,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            decoration: InputDecoration(
                              labelText: "Nomor Telepon",
                              prefixIcon: Icon(Icons.phone_outlined),
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8))),
                            ),
                          ),
                          SizedBox(height: 15),
                          TextFormField(
                              obscureText: isHide,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              decoration: InputDecoration(
                                labelText: "Password",
                                prefixIcon: Icon(Icons.lock_outline),
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8))),
                                suffixIcon: new GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isHide = !isHide;
                                    });
                                  },
                                  child: Icon(isHide
                                      ? Icons.visibility
                                      : Icons.visibility_off),
                                ),
                              ),
                              validator: (passwordValue) {
                                if (passwordValue!.isEmpty) {
                                  return 'Please enter your password';
                                }
                                password = passwordValue;
                                return null;
                              }),
                          SizedBox(height: 25),
                          SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: ElevatedButton(
                                onPressed: () {
                                  if (_formKey.currentState?.validate() ??
                                      true) {
                                    _register();
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xff0042C1),
                                    elevation: 0,
                                    textStyle: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                    padding:
                                        EdgeInsets.fromLTRB(24, 10, 24, 10),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(6))),
                                child: Text("Register")),
                          ),
                          SizedBox(height: 20),
                          new GestureDetector(
                            onTap: () {
                              Navigator.pushAndRemoveUntil<dynamic>(
                                  context,
                                  MaterialPageRoute<dynamic>(
                                      builder: (context) => Login()),
                                  (route) => false);
                            },
                            child: RichText(
                              text: new TextSpan(
                                  style: new TextStyle(
                                      fontSize: 14, color: Colors.black),
                                  children: <TextSpan>[
                                    new TextSpan(text: "Sudah Punya Akun? "),
                                    new TextSpan(
                                        text: "Masuk Disini",
                                        style: TextStyle(
                                            color: Color(0xff0042C1),
                                            fontWeight: FontWeight.bold)),
                                  ]),
                            ),
                          ),
                          Spacer(),
                          Text(
                            "KONTRAKIN",
                            style: TextStyle(
                                color: Color(0xff0042C1),
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  )),
            ],
          ),
        ));
  }

  void _register() async {
    setState(() {
      _isLoading = true;
    });
    var data = {'name': name, 'email': email, 'password': password};

    var res = await Network().auth(data, '/register');
    var body = json.decode(res.body);
    if (body['success']) {
      SharedPreferences localStorage = await SharedPreferences.getInstance();
      localStorage.setString('token', json.encode(body['token']));
      localStorage.setString('user', json.encode(body['user']));
      localStorage.setString('role', json.encode(body['role']));
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Dashboard()),
      );
    } else {
      if (body['message']['name'] != null) {
        _showMsg(body['message']['name'][0].toString());
      } else if (body['message']['email'] != null) {
        _showMsg(body['message']['email'][0].toString());
      } else if (body['message']['password'] != null) {
        _showMsg(body['message']['password'][0].toString());
      }
    }

    setState(() {
      _isLoading = false;
    });
  }
}
