part of 'pages.dart';

class Carikontrakan extends StatefulWidget {
  const Carikontrakan({ Key? key }) : super(key: key);

  @override
  _CarikontrakanState createState() => _CarikontrakanState();
}

class _CarikontrakanState extends State<Carikontrakan> {

  List<dynamic> listKontrakan = [];
  String query = '';
  Timer? debouncer;


  Future<dynamic> getData() async {
    await KontrakanService.getListKontrakan(query).then((value) {
      setState((){
        listKontrakan = value;
      });
    });
  }

  Future searchBook(String query) async => debounce(() async {
    listKontrakan = await KontrakanService.getListKontrakan(query);
    if (!mounted) return;

    setState((){
      this.query = query;
      this.listKontrakan = listKontrakan;
    });
  });
  
  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  void dispose() {
    debouncer?.cancel();
    super.dispose();
  }

  void debounce(
    VoidCallback callback, {
      Duration duration = const Duration(milliseconds: 1000),
    }
  ){
    if (debouncer != null){
      debouncer!.cancel();
    }
    debouncer = Timer(duration,callback);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: CustomPaint(
        painter: BluePainter6(),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.fromLTRB(24, 80, 24, 0),
          child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                      child: Text(
                        "Cari Kontrakan",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: 400,
                  height: 60,
                  child: Expanded(
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)
                          ),
                          elevation: 8,
                          child: TextField(
                              onChanged: (value) {
                                searchBook(value);
                              },
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                hintText: "Cari Kontrakan",
                                icon: Container(padding: EdgeInsets.fromLTRB(10, 0, 0, 0) ,child: Icon(Icons.search)),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(6)),
                                  borderSide: BorderSide(width: 1, color: Colors.transparent),
                                ),
                              ),
                            ),
                        ),
                      ),
                ),
                SizedBox(height: 30),
                Flexible(
                  child:  ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: listKontrakan.length,
                      itemBuilder: ((context, index) {
                        return LazyLoadingList(
                          initialSizeOfItems: 10,
                          loadMore: (){}, 
                          child: KontrakanCard(kontrakan: listKontrakan[index]),
                          index: index, 
                          hasMore: true);
                      }),
                    )
                )
              ],
            ),
          )
        )
    );
  }
}