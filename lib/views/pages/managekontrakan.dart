part of 'pages.dart';

class Managekontrakan extends StatefulWidget {
  var userId;
  Managekontrakan({super.key, required this.userId});

  @override
  _ManagekontrakanState createState() => _ManagekontrakanState();
}

class _ManagekontrakanState extends State<Managekontrakan> {
  var id;
  List<dynamic> listActiveKontrakan = [];
  List<dynamic> listNotActiveKontrakan = [];

  @override
  void initState() {
    super.initState();
    id = widget.userId;
    getActiveKontrakan();
    getNotActiveKontrakan();
  }

  Future<dynamic> getActiveKontrakan() async{
    await KontrakanService.getActiveKontrakan(id).then((value) {
      setState(() {
        listActiveKontrakan = value;
      });
    });
    print(listActiveKontrakan.toString());
  }
  Future<dynamic> getNotActiveKontrakan() async{
    await KontrakanService.getNotActiveKontrakan(id).then((value) {
      setState(() {
        listNotActiveKontrakan = value;
      });
    });
    print(listNotActiveKontrakan.toString());
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.pushAndRemoveUntil<dynamic>(
                              context,
                              MaterialPageRoute<dynamic>(
                                builder: (context) => Botnav(index: 2, userID: id)),
                                (Route<dynamic> route) =>false
                            );
                          },
                          child: Icon(Icons.arrow_back_ios_new, size: 20,),
                        ),
                        SizedBox(width: 25,),
                        Text(
                          "Manage Kontrakan",
                          style: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                        ),)
                      ],
                    ),
                    // Flexible(
                    //   child: FutureBuilder<List<Kontrakan>>(
                    //     future: getKontrakan(),
                    //     builder: (context, snapshot) {
                    //       if(snapshot.hasError){
                    //         return Center(
                    //           child: Text("Something went wrong!, ${snapshot.error}")
                    //         );
                    //       } else if (snapshot.hasData){
                    //         final kontrakan = snapshot.data!;
                    //         return Text(kontrakan.first.description.toString());
                    //       } else {
                    //         return CircularProgressIndicator();
                    //       }
                    //     },
                    //   )
                    // )
                    SizedBox(height: 16),
                    Text(
                          "Active",
                          style: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                        ),),
                    Flexible(
                      child : ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: listActiveKontrakan.length,
                        itemBuilder: ((context, index) {
                          return LazyLoadingList(
                            loadMore: (){}, 
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6)
                              ),
                              elevation: 8,
                              child: InkWell(
                                splashColor: Colors.blue.withAlpha(30),
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => Detailkontrakan(listActiveKontrakan[index])));
                                },
                                child: SizedBox(
                                  width: 400,
                                  height: 100,
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 100,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(6),
                                            bottomLeft: Radius.circular(6)
                                          ),
                                          image: DecorationImage(
                                            image: NetworkImage("https://kontrakin.imtstack.com/storage/" + listActiveKontrakan[index].image),
                                            fit: BoxFit.cover
                                          )
                                        ),
                                        
                                      ),
                                      SizedBox(width: 16,),
                                      Expanded(
                                        child: RichText(
                                          text: TextSpan(
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold
                                            ),
                                            children: [
                                              TextSpan(
                                                text: listActiveKontrakan[index].description.toString()+"\n",
                                                style: TextStyle(height: 1.3)
                                              ),
                                              TextSpan(
                                                text: "Kota " + listActiveKontrakan[index].city,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.normal
                                                )
                                              )
                                            ]
                                          ),
                                        ),
                                      ),
                                      ClipRRect(
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(6),
                                          bottomRight: Radius.circular(6)
                                        ),
                                        child: SizedBox(
                                          width: 6,
                                          height: 100,
                                          child: DecoratedBox(
                                            decoration: BoxDecoration(
                                              color: Color(0xff0042C1)
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            index: index, 
                            hasMore: true);
                        }),
                      )
                    ),
                    Text(
                          "Not Active",
                          style: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                        ),),
                    Flexible(
                      child : ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: listNotActiveKontrakan.length,
                        itemBuilder: ((context, index) {
                          return LazyLoadingList(
                            loadMore: (){}, 
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6)
                              ),
                              elevation: 8,
                              child: InkWell(
                                splashColor: Colors.blue.withAlpha(30),
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => Detailkontrakan(listNotActiveKontrakan[index], userID: id,)));
                                },
                                child: SizedBox(
                                  width: 400,
                                  height: 100,
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 100,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(6),
                                            bottomLeft: Radius.circular(6)
                                          ),
                                          image: DecorationImage(
                                            image: NetworkImage("https://kontrakin.imtstack.com/storage/" + listNotActiveKontrakan[index].image),
                                            fit: BoxFit.cover
                                          )
                                        ),
                                        
                                      ),
                                      SizedBox(width: 16,),
                                      Expanded(
                                        child: RichText(
                                          text: TextSpan(
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold
                                            ),
                                            children: [
                                              TextSpan(
                                                text: listNotActiveKontrakan[index].description.toString()+"\n",
                                                style: TextStyle(height: 1.3)
                                              ),
                                              TextSpan(
                                                text: listNotActiveKontrakan[index].city,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.normal
                                                )
                                              )
                                            ]
                                          ),
                                        ),
                                      ),
                                      ClipRRect(
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(6),
                                          bottomRight: Radius.circular(6)
                                        ),
                                        child: SizedBox(
                                          width: 6,
                                          height: 100,
                                          child: DecoratedBox(
                                            decoration: BoxDecoration(
                                              color: Colors.grey
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            index: index, 
                            hasMore: true);
                        }),
                      )
                    ),
                    SizedBox(height: 8,),
                    SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context) => Tambahkontrakan(userid: id)
                        )
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff0042C1),
                      elevation: 0,
                      textStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold
                      ),
                      padding: EdgeInsets.fromLTRB(24, 10, 24, 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)
                      )
                    ),
                    child: Text("TAMBAH KONTRAKAN")
                  ),
                    )
                  ],
                )
              )
            )
          );
  }
}
