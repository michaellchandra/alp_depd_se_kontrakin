part of '../pages/pages.dart';

class Formkontrak extends StatefulWidget {
  Kontrakan? kontrakan;
  var userID;
  Formkontrak({super.key, required this.kontrakan, this.userID});

  @override
  _FormkontrakState createState() => _FormkontrakState();
}

class _FormkontrakState extends State<Formkontrak> {

  TextEditingController minimumRentController = TextEditingController();
  TextEditingController startDateController = TextEditingController();

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
                      Navigator.pop(context);
                    },
                    child: SizedBox(
                      height: 30,
                      child: Icon(Icons.arrow_back_ios, size: 20),
                    ),
                  ),
                  Spacer(),
                  Container(
                    child: Text(
                      "Form Kontrak",
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
                  controller: minimumRentController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: ((value) {
                    if (value!.isEmpty) {
                      return 'Please enter minimum rent (year)';
                    }
                    return null;
                  }),
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)
                    ),
                    labelText: "Minimum Rent (Year)",
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
                  controller: startDateController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: ((value) {
                    if (value!.isEmpty) {
                      return 'Please enter your start date (yyyy-mm-dd)';
                    }
                    return null;
                  }),
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)
                    ),
                    labelText: "Start Date (yyyy-mm-dd)",
                  ),
                ),
              ),
              SizedBox(height: 70),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    _setTransaksi(int.parse(widget.kontrakan!.userId.toString()), widget.userID, startDateController.text, int.parse(minimumRentController.text), int.parse(widget.kontrakan!.id.toString()));
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
                  child: Text("Kontrak")
                ),
              ),
            ]
          )
        )
      )
    );
  }
  void _setTransaksi(int lessorID, int lesseeID, String startDate, int rentDuration, int kontrakanID) async {
    TransaksiService.storeTransaksi(lessorID, lesseeID, startDate, rentDuration, kontrakanID);
    Navigator.push<dynamic>(
      context,
      MaterialPageRoute<dynamic>(
        builder: (context) => Botnavpenyewa(index: 1, userID: lesseeID)),
    );
  }
}