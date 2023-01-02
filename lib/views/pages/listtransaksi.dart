part of 'pages.dart';

class Listtransaksi extends StatefulWidget {
  var lessorID;
  Listtransaksi({super.key, required this.lessorID});

  @override
  _ListtransaksiState createState() => _ListtransaksiState();

}

class _ListtransaksiState extends State<Listtransaksi> {
  List<dynamic> listPending = [];
  List<dynamic> listOngoing = [];
  List<dynamic> listFinished = [];
  var lessorID;

  @override
  void initState() {
    super.initState();
    lessorID = widget.lessorID;
    getPending();
    getOngoing();
    getFinished();
  }

  Future<dynamic> getPending() async{
    await TransaksiService.getLessorPending(lessorID).then((value) {
      setState(() {
        listPending = value;
      });
    });
    print(listPending.toString());
  }
  Future<dynamic> getOngoing() async{
    await TransaksiService.getLessorOnGoing(lessorID).then((value) {
      setState(() {
        listOngoing = value;
      });
    });
    print(listOngoing.toString());
  }
  Future<dynamic> getFinished() async{
    await TransaksiService.getLessorFinished(lessorID).then((value) {
      setState(() {
        listFinished = value;
      });
    });
    print(listFinished.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomPaint(
            painter: BluePainter4(),
            child: Stack(
              children: [
                Container(
                    width: double.infinity,
                    height: double.infinity,
                    padding: EdgeInsets.fromLTRB(24, 80, 24, 120),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              new GestureDetector(
                                onTap: () {
                                  Navigator.pushAndRemoveUntil<dynamic>(
                                      context,
                                      MaterialPageRoute<dynamic>(
                                          builder: (context) => Botnav(index: 0, userID: lessorID,)),
                                      (route) => false);
                                },
                                child: SizedBox(
                                    height: 50,
                                    child: Icon(Icons.arrow_back_ios_new,
                                        size: 20)),
                              ),
                              SizedBox(width: 16),
                              Text(
                                "List Transaksi",
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                          SizedBox(height: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                                child: Text(
                                  "Pending",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(height: 8),
                              Container(
                                width: 400,
                                child : ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: listPending.length,
                                  itemBuilder: ((context, index) {
                                    return LazyLoadingList(
                                      loadMore: (){}, 
                                      child: 
                                      Card(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(8)),
                                        elevation:   8,
                                        child: SizedBox(
                                          width: 400,
                                          height: 80,
                                          child: Row(
                                            children: <Widget>[
                                              SizedBox(width: 16),
                                              Icon(Icons.person_outline, size: 50),
                                              SizedBox(width: 16),
                                              Expanded(
                                                child: RichText(
                                                  text: new TextSpan(
                                                      style: new TextStyle(
                                                          fontSize: 16,
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                      children: <TextSpan>[
                                                        new TextSpan(
                                                            text: listPending[index].name+"\n",
                                                            style: TextStyle(
                                                                height: 1.3,)),
                                                        new TextSpan(
                                                            text: "Sewa "+ listPending[index].rentDuration.toString() +" Bulan ",
                                                            style: TextStyle(
                                                                color: Colors.black,
                                                                fontSize: 12,
                                                                fontWeight: FontWeight
                                                                    .normal)),
                                                        new TextSpan(
                                                            text: "LUNAS",
                                                            style: TextStyle(
                                                                color:
                                                                    Color(0xff0042C1),
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight.bold)),
                                                      ]),
                                                ),
                                              ),
                                              SizedBox(width: 16),
                                              new GestureDetector(
                                                onTap: () {
                                                  _launchURL(listPending[index].phone);
                                                },
                                                child: SizedBox(
                                                  width: 80,
                                                  height: 80,
                                                  child: DecoratedBox(
                                                      decoration: const BoxDecoration(
                                                          color: Colors.grey),
                                                      child: Align(
                                                        alignment: Alignment.center,
                                                        child: Text("HUBUNGI",
                                                            textAlign:
                                                                TextAlign.center,
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight.bold)),
                                                      )),
                                                ),
                                              ),
                                              new GestureDetector(
                                                onTap: () {
                                                  _setApprove(listPending[index].id);
                                                },
                                                child: ClipRRect(
                                                  borderRadius: BorderRadius.only(
                                                    topRight: Radius.circular(8),
                                                    bottomRight: Radius.circular(8),
                                                  ),
                                                  child: SizedBox(
                                                    width: 80,
                                                    height: 80,
                                                    child: DecoratedBox(
                                                        decoration:
                                                            const BoxDecoration(
                                                                color: Color(
                                                                    0xff0042C1)),
                                                        child: Align(
                                                          alignment: Alignment.center,
                                                          child: Text("APPROVE",
                                                              textAlign:
                                                                  TextAlign.center,
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight.bold,
                                                                  color:
                                                                      Colors.white)),
                                                        )),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )),
                                  
                                      index: index, 
                                      hasMore: true);
                                  }),
                                )
                              ),
                              
                              SizedBox(height: 24),
                              Container(
                                padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                                child: Text(
                                  "On Going",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(height: 8),
                              Container(
                                width: 400,
                                child : ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: listOngoing.length,
                                  itemBuilder: ((context, index) {
                                    return LazyLoadingList(
                                      loadMore: (){}, 
                                      child:
                              Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                  elevation: 8,
                                  child: SizedBox(
                                    width: 400,
                                    height: 80,
                                    child: Row(
                                      children: <Widget>[
                                        SizedBox(width: 16),
                                        Icon(Icons.person_outline, size: 50),
                                        SizedBox(width: 16),
                                        Expanded(
                                          child: RichText(
                                            text: new TextSpan(
                                                style: new TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
                                                children: <TextSpan>[
                                                  new TextSpan(
                                                      text: listOngoing[index].name+"\n",
                                                      style: TextStyle(
                                                          height: 1.3)),
                                                  new TextSpan(
                                                      text: "Sewa Sampai ",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 12,
                                                          fontWeight: FontWeight
                                                              .normal)),
                                                  new TextSpan(
                                                      text: listOngoing[index].endDate,
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xff0042C1),
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                ]),
                                          ),
                                        ),
                                        SizedBox(width: 16),
                                        new GestureDetector(
                                          onTap: () {
                                            Navigator.pushAndRemoveUntil(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Detailtransaksi(listOngoing[index], lessorid: lessorID,)),
                                                  (Route<dynamic> route) =>
                                              false);
                                          },
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(8),
                                              bottomRight: Radius.circular(8),
                                            ),
                                            child: SizedBox(
                                              width: 80,
                                              height: 80,
                                              child: DecoratedBox(
                                                  decoration:
                                                      const BoxDecoration(
                                                          color: Color(
                                                              0xff0042C1)),
                                                  child: Align(
                                                    alignment: Alignment.center,
                                                    child: Text("DETAILS",
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color:
                                                                Colors.white)),
                                                  )),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )),
                                  index: index, 
                                  hasMore: true);
                                  }),
                                )
                              ),
                              SizedBox(height: 24),
                              Container(
                                padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                                child: Text(
                                  "Finished",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(height: 8),
                              Container(
                                width: 400,
                                child : ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: listFinished.length,
                                  itemBuilder: ((context, index) {
                                    return LazyLoadingList(
                                      loadMore: (){}, 
                                      child:
                              Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                  elevation: 8,
                                  child: SizedBox(
                                    width: 400,
                                    height: 80,
                                    child: Row(
                                      children: <Widget>[
                                        SizedBox(width: 16),
                                        Icon(Icons.person_outline, size: 50),
                                        SizedBox(width: 16),
                                        Expanded(
                                          child: RichText(
                                            text: new TextSpan(
                                                style: new TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
                                                children: <TextSpan>[
                                                  new TextSpan(
                                                      text:
                                                          listFinished[index].name+"\n",
                                                      style: TextStyle(
                                                          height: 1.3)),
                                                  new TextSpan(
                                                      text: "Terakhir Sewa ",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 12,
                                                          fontWeight: FontWeight
                                                              .normal)),
                                                  new TextSpan(
                                                      text: listFinished[index].endDate,
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xff0042C1),
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                ]),
                                          ),
                                        ),
                                        SizedBox(width: 16),
                                        new GestureDetector(
                                          onTap: () {
                                            _launchURL(listFinished[index].phone);
                                          },
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(8),
                                              bottomRight: Radius.circular(8),
                                            ),
                                            child: SizedBox(
                                              width: 80,
                                              height: 80,
                                              child: DecoratedBox(
                                                  decoration:
                                                      const BoxDecoration(
                                                          color: Colors.grey),
                                                  child: Align(
                                                    alignment: Alignment.center,
                                                    child: Text("HUBUNGI",
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color:
                                                                Colors.black)),
                                                  )),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )),
                                  
                                  index: index, 
                                  hasMore: true);
                                  }),
                                )
                              ),
                              
                            ],
                          )
                        ],
                      ),
                    ))
              ],
            )));
  }

  _launchURL(String nomorwa) async {
    var url = 'https://wa.me/62'+nomorwa;
      if (await launch(url)) {
      await canLaunch(url);
      } else {
        throw 'Could not launch $url';
      }
  }
  _setApprove(int id) async{
    print("setapprove"+id.toString());
    TransaksiService.setApprove(id);
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
            builder: (context) =>
                Listtransaksi(lessorID: lessorID,)),
            (Route<dynamic> route) =>
        false);
  }
}
