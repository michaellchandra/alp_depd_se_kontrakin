part of '../pages/pages.dart';

class Riwayattransaksi extends StatefulWidget {
  Riwayattransaksi({ Key? key, required this.userID }) : super(key: key);
  var userID;

  @override
  _RiwayattransaksiState createState() => _RiwayattransaksiState();
}

class _RiwayattransaksiState extends State<Riwayattransaksi> {
  List<dynamic> listOngoing = [];
  List<dynamic> listFinished = [];
  var lesseeID;

  @override
  void initState() {
    super.initState();
    lesseeID = widget.userID;
    getOngoing();
    getFinished();
  }

  Future<dynamic> getOngoing() async{
    await TransaksiService.getLesseeOnGoing(lesseeID).then((value) {
      setState(() {
        listOngoing = value;
      });
    });
    print(listOngoing.toString());
  }
  Future<dynamic> getFinished() async{
    await TransaksiService.getLesseeFinished(lesseeID).then((value) {
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
        child: Container(
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.fromLTRB(24, 80, 24, 120),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    new GestureDetector(
                      onTap: () {
                        Navigator.pushAndRemoveUntil<dynamic>(
                          context, 
                          MaterialPageRoute<dynamic>(
                            builder: (context) => Botnavpenyewa(index: 2, userID: widget.userID,)
                          ), 
                          (route) => false
                        );
                      },
                      child: SizedBox(
                        height: 50,
                        child: Icon(Icons.arrow_back_ios_new, size: 20)
                      ),
                    ),
                    SizedBox(width: 16),
                    Text(
                      "Riwayat Transaksi",
                      style: TextStyle(
                        fontSize: 28, 
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  children: <Widget>[
                    Text(
                      "On Going",
                      style: TextStyle(
                        fontSize: 20, 
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
                SizedBox(height: 16),
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
                    borderRadius: BorderRadius.circular(6),
                  ),
                  elevation: 8,
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<dynamic>(
                          builder: (context) => Detailtransaksipenyewa(listOngoing[index], userID: widget.userID)
                        ),
                      );
                    },
                    child: SizedBox(
                      width: 400,
                      height: 100,
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(6),
                                bottomLeft: Radius.circular(6)
                              ),
                              image: DecorationImage(
                                image: NetworkImage("https://kontrakin.imtstack.com/storage/" + listOngoing[index].image),
                                fit: BoxFit.cover
                              )
                            ),
                          ),
                          SizedBox(width: 16),
                          Expanded(
                            child: RichText(
                              text: new TextSpan(
                                style: new TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                                ),
                                children: <TextSpan>[
                                  new TextSpan(
                                    text: listOngoing[index].address+"\n",
                                    style: TextStyle(height: 1.3)
                                  ),
                                  new TextSpan(
                                    text: "Sewa Sampai ",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal
                                    )
                                  ),
                                  new TextSpan(
                                    text: listOngoing[index].endDate,
                                    style: TextStyle(
                                      color: Color(0xff0042C1),
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold
                                    )
                                  )
                                ]
                              )
                            )
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(6),
                              bottomRight: Radius.circular(6),
                            ),
                            child: SizedBox(
                              width: 6, 
                              height: 100,
                              child: DecoratedBox(
                                decoration: const BoxDecoration(
                                  color: Color(0xff0042C1)
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    )
                  )
                ),
                                  index: index, 
                                  hasMore: true);
                                  }),
                                )
                              ),
                SizedBox(height: 30),
                Row(
                  children: <Widget>[
                    Text(
                      "Finished",
                      style: TextStyle(
                        fontSize: 20, 
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
                SizedBox(height: 16),
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
                    borderRadius: BorderRadius.circular(6),
                  ),
                  elevation: 8,
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      Navigator.pushAndRemoveUntil<dynamic>(
                        context,
                        MaterialPageRoute<dynamic>(
                          builder: (context) => Detailtransaksipenyewa(listFinished[index], userID: widget.userID,)
                        ),
                        (route) => false
                      );
                    },
                    child: SizedBox(
                      width: 400,
                      height: 100,
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(6),
                                bottomLeft: Radius.circular(6)
                              ),
                              image: DecorationImage(
                                image: NetworkImage("https://kontrakin.imtstack.com/storage/" + listFinished[index].image),
                                fit: BoxFit.cover
                              )
                            ),
                          ),
                          SizedBox(width: 16),
                          Expanded(
                            child: RichText(
                              text: new TextSpan(
                                style: new TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                                ),
                                children: <TextSpan>[
                                  new TextSpan(
                                    text: listFinished[index].address+"\n",
                                    style: TextStyle(height: 1.3)
                                  ),
                                  new TextSpan(
                                    text: "Terakhir Sewa ",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal
                                    )
                                  ),
                                  new TextSpan(
                                    text: listFinished[index].endDate,
                                    style: TextStyle(
                                      color: Color(0xff0042C1),
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold
                                    )
                                  )
                                ]
                              )
                            )
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(6),
                              bottomRight: Radius.circular(6),
                            ),
                            child: SizedBox(
                              width: 6, 
                              height: 100,
                              child: DecoratedBox(
                                decoration: const BoxDecoration(
                                  color: Colors.grey
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    )
                  )
                ),
                index: index, 
                                  hasMore: true);
                                  }),
                                )
                              ),
              ]
            ),
          )
        )
      )
    );
  }
}