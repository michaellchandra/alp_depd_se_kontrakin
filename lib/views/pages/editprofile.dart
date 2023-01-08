part of 'pages.dart';

class Editprofile extends StatefulWidget {
  const Editprofile({ Key? key }) : super(key: key);

  @override
  _EditprofileState createState() => _EditprofileState();
}

class _EditprofileState extends State<Editprofile> {

  XFile? image;

  var selectedImage;

  final ImagePicker picker = ImagePicker();

  Future getImage(ImageSource media) async {
    var img = await picker.pickImage(source: media);

    setState((() {
      image = img;
      selectedImage = File(img!.path);
    }));
  }

  void myAlert() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            title: Text('Please choose media to select'),
            content: Container(
              height: MediaQuery.of(context).size.height / 6,
              child: Column(
                children: [
                  ElevatedButton(
                    //if user click this button, user can upload image from gallery
                    onPressed: () {
                      Navigator.pop(context);
                      getImage(ImageSource.gallery);
                    },
                    style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff0042C1),
                                elevation: 0,
                                textStyle: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6))),
                    child: Row(
                      children: [
                        Icon(Icons.image),
                        SizedBox(width: 16),
                        Text('From Gallery'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    //if user click this button. user can upload image from camera
                    onPressed: () {
                      Navigator.pop(context);
                      getImage(ImageSource.camera);
                    },
                    style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff0042C1),
                                elevation: 0,
                                textStyle: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6))),
                    child: Row(
                      children: [
                        Icon(Icons.camera),
                        SizedBox(width: 16),
                        Text('From Camera'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      // Navigator.pushAndRemoveUntil<dynamic>(
                      //   context,
                      //   MaterialPageRoute<dynamic>(
                      //     builder: (context) => Profile()),
                      //   (route) =>false
                      // );
                      print("back pressed");
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
              SizedBox(height: 50),
              CircleAvatar(
                backgroundColor: Colors.grey.shade300,
                radius: 65,
                child: Container(
                  width: 120,
                  height: 120,
                  padding: EdgeInsets.fromLTRB(80, 80, 0, 0),
                  child: FloatingActionButton(
                    backgroundColor: Color(0xff0042C1),
                    onPressed: () {
                      print("edit pressed");
                      myAlert();
                    },
                    child: Icon(
                      Icons.create_rounded,
                      size: 18
                    ),
                  ),
                )
              ),
              SizedBox(height: 50),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [BoxShadow(
                    color: Colors.white,
                    blurRadius: 2.0,
                    spreadRadius: 0.4
                  )]
                ),
                child: TextFormField(
                  // controller: addressController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  // validator: ((value) {
                  //   if (value!.isEmpty) {
                  //     return 'Please enter your address';
                  //   }
                  //   address = value;
                  //   return null;
                  // }),
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)
                    ),
                    labelText: "Name",
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [BoxShadow(
                    color: Colors.white,
                    blurRadius: 2.0,
                    spreadRadius: 0.4
                  )]
                ),
                child: TextFormField(
                  // controller: addressController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  // validator: ((value) {
                  //   if (value!.isEmpty) {
                  //     return 'Please enter your address';
                  //   }
                  //   address = value;
                  //   return null;
                  // }),
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)
                    ),
                    labelText: "Email",
                  ),
                ),
              ),
              SizedBox(height: 70),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    print("simpan preseed");
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
}