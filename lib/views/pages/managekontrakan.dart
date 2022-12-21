part of 'pages.dart';

class Managekontrakan extends StatefulWidget {
  var userId;
  Managekontrakan({super.key, required this.userId});

  @override
  _ManagekontrakanState createState() => _ManagekontrakanState();
}

class _ManagekontrakanState extends State<Managekontrakan> {
  var id;
  List<dynamic> listKontrakan = [];

  @override
  void initState() {
    super.initState();
    id = widget.userId;
    getKontrakan();
  }

  Future<dynamic> getKontrakan() async{
    await KontrakanService.getKontrakan(id).then((value) {
      setState(() {
        listKontrakan = value;
      });
    });
    print(listKontrakan.toString());
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
                            Navigator.pop(context);
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
                    Flexible(
                      child : ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: listKontrakan.length,
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
                                onTap: (() {}),
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
                                            image: NetworkImage("https://kontrakin.imtstack.com/storage/" + listKontrakan[index].image),
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
                                                text: listKontrakan[index].description.toString()+"\n",
                                                style: TextStyle(height: 1.3)
                                              ),
                                              TextSpan(
                                                text: "Kota " + listKontrakan[index].city,
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
                    SizedBox(height: 8,),
                    SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context) => Tambahkontrakan()
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
