part of 'pages.dart';

class Tambahkontrakan extends StatefulWidget {
  var userid;
  Tambahkontrakan({super.key, required this.userid});

  @override
  _TambahkontrakanState createState() => _TambahkontrakanState();
}

class _TambahkontrakanState extends State<Tambahkontrakan> {
  var id;

  

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
  dynamic provData;
  dynamic provID;
  dynamic selectedProv;
  bool isProvSelected = false;
  Future<List<Province>> getProvince() async{
    dynamic listProvince;
    await CityService.getProvince().then((value) {
      setState(() {
        listProvince = value;
      });
    });
    return listProvince;
  }

  dynamic cityData;
  dynamic selectedCity;
  Future<List<City>> getCity(dynamic provId) async{
    dynamic listCity;
    await CityService.getCity(provID).then((value) {
      setState(() {
        listCity = value;
      });
    });
    return listCity;
  }

  final _keyState = GlobalKey<FormState>();
  var address, city, province, price, desc, minimumRent;
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  TextEditingController cityController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController provinceController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController descController = TextEditingController();

  @override
  void initState() {
    super.initState();
    id = widget.userid;
    provData = getProvince();
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
                              SizedBox(height: 16,),
                              Container(
                                decoration: BoxDecoration(
                                  boxShadow: [BoxShadow(
                                    color: Colors.white,
                                    blurRadius: 2.0,
                                    spreadRadius: 0.4
                                  )]
                                ),
                                child: FutureBuilder<List<Province>>(
                                future: provData,
                                builder: (context, snapshot){
                                  if(snapshot.hasData){
                                    return DropdownButton(
                                      isExpanded: true,
                                      value: selectedProv,
                                      icon: Icon(Icons.arrow_drop_down),
                                      iconSize: 30,
                                      elevation: 16,
                                      style: TextStyle(color: Colors.black),
                                      hint: selectedProv == null
                                      ? Text('Pilih provinsi')
                                      : Text(selectedProv.provinceName),
                                      items: snapshot.data!.map<DropdownMenuItem<Province>>(
                                        (Province value){
                                          return DropdownMenuItem(
                                            value: value,
                                            child: Text(value.provinceName.toString())
                                          );
                                        }
                                      ).toList(),
                                      onChanged: (newValue){
                                        setState(() {
                                          selectedProv = newValue;
                                          provID = selectedProv.id;
                                          isProvSelected = true;
                                        });
                                        selectedCity = null;
                                        cityData = getCity(provID);

                                      }
                                    );
                                  }else if(snapshot.hasError){
                                    return Text("Tidak ada data.");
                                  }
                                  return UiLoading.loadingDD();
                                }
                              ),
                                // TextFormField(
                                //   controller: provinceController,
                                //   autovalidateMode: AutovalidateMode.onUserInteraction,
                                //   validator: ((value) {
                                //     if (value!.isEmpty) {
                                //       return 'Please enter your province';
                                //     }
                                //     province = value;
                                //     return null;
                                //   }),
                                //   decoration: InputDecoration(
                                //     fillColor: Colors.white,
                                //     enabledBorder: UnderlineInputBorder(
                                //       borderSide: BorderSide(color: Colors.black)
                                //     ),
                                //     labelText: "Province",
                                //     // labelStyle: TextStyle(
                                //     //   color: 
                                //     // )

                                //   ),
                                // ),
                              ),
                            SizedBox(height: 16,),
                            Container(
                              decoration: BoxDecoration(
                                boxShadow: [BoxShadow(
                                  color: Colors.white,
                                  blurRadius: 2.0,
                                  spreadRadius: 0.4
                                )]
                              ),
                              child: FutureBuilder<List<City>>(
                                future: cityData,
                                builder: (context, snapshot){
                                  if(snapshot.hasData){
                                    return DropdownButton(
                                      isExpanded: true,
                                      value: selectedCity,
                                      icon: Icon(Icons.arrow_drop_down),
                                      iconSize: 30,
                                      elevation: 16,
                                      style: TextStyle(color: Colors.black),
                                      hint: selectedCity == null
                                      ? Text('Pilih Kota')
                                      : Text(selectedCity.cityName),
                                      items: snapshot.data!.map<DropdownMenuItem<City>>(
                                        (City value){
                                          return DropdownMenuItem(
                                            value: value,
                                            child: Text(value.cityName.toString())
                                          );
                                        }
                                      ).toList(),
                                      onChanged: (newValue){
                                        setState(() {
                                          selectedCity = newValue;
                                        });

                                      }
                                    );
                                  }else if(snapshot.hasError){
                                    return Text("Tidak ada data.");
                                  }
                                  if (isProvSelected == false) {
                                    return Text("Pilih Provinsi dulu");
                                  } else {
                                    return UiLoading.loadingDD();
                                  }
                                }
                              ),
                              // TextFormField(
                              //   controller: cityController,
                              //   autovalidateMode: AutovalidateMode.onUserInteraction,
                              //   validator: ((value) {
                              //     if (value!.isEmpty) {
                              //       return 'Please enter your city';
                              //     }
                              //     city = value;
                              //     return null;
                              //   }),
                              //   decoration: InputDecoration(
                              //     fillColor: Colors.white,
                              //     enabledBorder: UnderlineInputBorder(
                              //       borderSide: BorderSide(color: Colors.black)
                              //     ),
                              //     labelText: "City",
                              //     // labelStyle: TextStyle(
                              //     //   color: 
                              //     // )

                              //   ),
                              // ),
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
                                  if (value.contains(new RegExp(r'[a-z]'))) {
                                    return 'Please input valid price';
                                  }
                                  price = value;
                                  return null;
                                }),
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black)
                                  ),
                                  labelText: "Price (Year)",
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
                            Container(
                              decoration: BoxDecoration(
                                boxShadow: [BoxShadow(
                                  color: Colors.white,
                                  blurRadius: 2.0,
                                  spreadRadius: 0.4
                                )]
                              ),
                              child: TextFormField(
                                autovalidateMode: AutovalidateMode.onUserInteraction,
                                validator: ((value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter your Minimum Rent Duration (Year)';
                                  }
                                  if (value.contains(new RegExp(r'[a-z]'))) {
                                    return 'Please input valid price';
                                  }
                                  minimumRent = value;
                                  return null;
                                }),
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black)
                                  ),
                                  labelText: "Minimum Rent (Year)",
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

    KontrakanService.addKontrakan(Kontrakan(address: address, city: selectedCity.cityName.toString(), province: selectedProv.provinceName.toString(), pricePerYear: int.parse(price), description: desc, userId: id, minimumRent: int.parse(minimumRent)), selectedImage);
    Navigator.pushAndRemoveUntil<dynamic>(
      context,
      MaterialPageRoute<dynamic>(
        builder: (context) => Managekontrakan(userId: id,)),
        (Route<dynamic> route) =>false
    );
  }
}
