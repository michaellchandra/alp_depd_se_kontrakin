part of 'pages.dart';

class Tambahkontrakan extends StatefulWidget {
  var userid;
  Tambahkontrakan({super.key, required this.userid});

  @override
  _TambahkontrakanState createState() => _TambahkontrakanState();
}

class _TambahkontrakanState extends State<Tambahkontrakan> {
  var id;

  @override
    void initState() {
      super.initState();
      id = widget.userid;
  }

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

  final _keyState = GlobalKey<FormState>();
  var address, city, province, price, desc;
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  TextEditingController cityController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController provinceController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController descController = TextEditingController();

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
            key: _scaffoldKey,
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
                        GestureDetector(
                          onTap:() {
                            Navigator.pop(context);
                          },
                          child: SizedBox(
                            height: 50,
                            child: Icon(Icons.arrow_back_ios, size: 20),
                          ),
                        ),
                        SizedBox(width: 25,),
                        Text(
                          "Tambah Kontrakan",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.left,
                        )
                      ],
                    ),
                    Container(
                      child: Form(
                        key: _keyState,
                        child: Column(
                          children: [
                              Container(
                                decoration: BoxDecoration(
                                  boxShadow: [BoxShadow(
                                    color: Colors.white,
                                    blurRadius: 2.0,
                                    spreadRadius: 0.4
                                  )]
                                ),
                                child: TextFormField(
                                  controller: provinceController,
                                  autovalidateMode: AutovalidateMode.onUserInteraction,
                                  validator: ((value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter your province';
                                    }
                                    province = value;
                                    return null;
                                  }),
                                  decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.black)
                                    ),
                                    labelText: "Province",
                                    // labelStyle: TextStyle(
                                    //   color: 
                                    // )

                                  ),
                                ),
                              ),
                            Container(
                              decoration: BoxDecoration(
                                boxShadow: [BoxShadow(
                                  color: Colors.white,
                                  blurRadius: 2.0,
                                  spreadRadius: 0.4
                                )]
                              ),
                              child: TextFormField(
                                controller: cityController,
                                autovalidateMode: AutovalidateMode.onUserInteraction,
                                validator: ((value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter your city';
                                  }
                                  city = value;
                                  return null;
                                }),
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black)
                                  ),
                                  labelText: "City",
                                  // labelStyle: TextStyle(
                                  //   color: 
                                  // )

                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                boxShadow: [BoxShadow(
                                  color: Colors.white,
                                  blurRadius: 2.0,
                                  spreadRadius: 0.4
                                )]
                              ),
                              child: TextFormField(
                                controller: addressController,
                                autovalidateMode: AutovalidateMode.onUserInteraction,
                                validator: ((value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter your address';
                                  }
                                  address = value;
                                  return null;
                                }),
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black)
                                  ),
                                  labelText: "Address",
                                  // labelStyle: TextStyle(
                                  //   color: 
                                  // )

                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                boxShadow: [BoxShadow(
                                  color: Colors.white,
                                  blurRadius: 2.0,
                                  spreadRadius: 0.4
                                )]
                              ),
                              child: TextFormField(
                                controller: priceController,
                                autovalidateMode: AutovalidateMode.onUserInteraction,
                                validator: ((value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter your price';
                                  }
                                  price = value;
                                  return null;
                                }),
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black)
                                  ),
                                  labelText: "Price (Rp.)",
                                  // labelStyle: TextStyle(
                                  //   color: 
                                  // )

                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                boxShadow: [BoxShadow(
                                  color: Colors.white,
                                  blurRadius: 2.0,
                                  spreadRadius: 0.4
                                )]
                              ),
                              child: TextFormField(
                                controller: descController,
                                autovalidateMode: AutovalidateMode.onUserInteraction,
                                validator: ((value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter your description';
                                  }
                                  desc = value;
                                  return null;
                                }),
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black)
                                  ),
                                  labelText: "Description",
                                  // labelStyle: TextStyle(
                                  //   color: 
                                  // )

                                ),
                              ),
                            ),
                            SizedBox(height: 16,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  elevation: 8,
                                  child: SizedBox(
                                    width: 200,
                                    height: 45,
                                    child: Directionality(
                                      textDirection: TextDirection.rtl,
                                      child: ElevatedButton.icon(
                                        onPressed: (){
                                          myAlert();
                                        },
                                        icon: Icon(Icons.file_upload_outlined, color: Colors.grey),
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.white
                                        ),
                                        label: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text("Upload Foto",
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        )
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 16,),
                            image != null
                              ? Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.file(
                                    File(image!.path),
                                    fit: BoxFit.cover,
                                    width: MediaQuery.of(context).size.width,
                                    height: 300,
                                  ),
                                ),
                              )
                            : Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                                    child: Text("No Image")
                                  ),
                                ],
                              ),
                            SizedBox(height: 24),
                            SizedBox(
                              width: double.infinity,
                              height: 50,
                              child: ElevatedButton(
                                onPressed: (() {
                                  if (_keyState.currentState?.validate() ?? true) {
                                    _addKontrakan();
                                  }
                                }),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xff0042C1),
                                  elevation: 0,
                                  textStyle: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6)
                                  )
                                ),
                                child: Text("SUBMIT"),
                              )
                            )
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
  void _addKontrakan() async {

    KontrakanService.addKontrakan(Kontrakan(address: address, city: city, province: province, pricePerYear: int.parse(price), description: desc, userId: id), selectedImage);
    Navigator.pop(context) ;

  }
}
