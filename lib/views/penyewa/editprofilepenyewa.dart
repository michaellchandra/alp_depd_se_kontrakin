part of '../pages/pages.dart';

class Editprofilepenyewa extends StatefulWidget {
  const Editprofilepenyewa({ Key? key }) : super(key: key);

  @override
  _EditprofilepenyewaState createState() => _EditprofilepenyewaState();
}

class _EditprofilepenyewaState extends State<Editprofilepenyewa> {

  var userId = 0;

  final _keyState = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();

  void getUser() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    var user = jsonDecode(localStorage.getString('user')!);

    userId = user['id'];

    nameController.text = user['name'].toString();
    emailController.text  = user['email'].toString();
    phoneNumberController.text = user['phone'].toString();
  }

  @override
  void initState(){
    super.initState();
    getUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: CustomPaint(
        painter: BluePainter5(),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.fromLTRB(24, 80, 24, 30),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
                      Navigator.push<dynamic>(
                        context,
                        MaterialPageRoute<dynamic>(
                          builder: (context) => Botnavpenyewa(index: 2, userID: userId)),
                      );
                    },
                    child: SizedBox(
                      height: 30,
                      child: Icon(Icons.arrow_back_ios, size: 20),
                    ),
                  ),
                  Spacer(),
                  Container(
                    child: Text(
                      "Edit Profile",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Spacer()
                ],
              ),
              SizedBox(height: 40),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [BoxShadow(
                    color: Colors.white,
                    blurRadius: 2.0,
                    spreadRadius: 0.4
                  )]
                ),
                child: TextFormField(
                  controller: nameController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: ((value) {
                    if (value!.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  }),
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)
                    ),
                    labelText: "Name",
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [BoxShadow(
                    color: Colors.white,
                    blurRadius: 2.0,
                    spreadRadius: 0.4
                  )]
                ),
                child: TextFormField(
                  controller: emailController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: ((value) {
                    if (value!.isEmpty) {
                      return 'Please enter your email address';
                    }
                    return null;
                  }),
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)
                    ),
                    labelText: "Email",
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [BoxShadow(
                    color: Colors.white,
                    blurRadius: 2.0,
                    spreadRadius: 0.4
                  )]
                ),
                child: TextFormField(
                  controller: phoneNumberController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: ((value) {
                    if (value!.isEmpty) {
                      return 'Please enter your phone number';
                    }
                    if (value.contains(new RegExp(r'[a-z]'))) {
                      return 'Please input valid phone number';
                    }
                    return null;
                  }),
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)
                    ),
                    labelText: "Phone Number",
                  ),
                ),
              ),
              SizedBox(height: 70),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    if (_keyState.currentState?.validate() ?? true) {
                      _editProfile();
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff0042C1),
                    elevation: 0,
                    textStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                      padding: EdgeInsets.fromLTRB(24, 10, 24, 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)
                      )
                  ),
                  child: Text("Simpan Perubahan")
                ),
              ),
            ]
          )
        )
      )
    );
  }
  void _editProfile() async {
    Network.editProfile(userId, nameController.text.toString(), emailController.text.toString(), int.parse(phoneNumberController.text));
    Navigator.pushAndRemoveUntil<dynamic>(
      context,
      MaterialPageRoute<dynamic>(
        builder: (context) => Botnav(index: 2, userID: userId)
      ),
      (route) => false
    );
  }
}