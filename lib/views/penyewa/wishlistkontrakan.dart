part of '../pages/pages.dart';

class Wishlistkontrakan extends StatefulWidget {
  Wishlistkontrakan({ Key? key , this.userID}) : super(key: key);
  var userID;

  @override
  _WishlistkontrakanState createState() => _WishlistkontrakanState();
}

class _WishlistkontrakanState extends State<Wishlistkontrakan> {
  List<dynamic> listWishlist = [];
  var userID;

  @override
  void initState() {
    super.initState();
    userID = widget.userID;
    getWishlist(userID);
  }

  Future<dynamic> getWishlist(int userID) async{
    await WishlistService.getWishlist(userID).then((value) {
      setState(() {
        listWishlist = value;
      });
    });
    print(listWishlist.toString());
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
                            builder: (context) => Profilepenyewa(userID: widget.userID,)
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
                      "Wishlist Kontrakan",
                      style: TextStyle(
                        fontSize: 28, 
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Container(
                                width: 400,
                                child : ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: listWishlist.length,
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
                                          onTap: () {},
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
                                                      image: NetworkImage("https://kontrakin.imtstack.com/storage/" + listWishlist[index].image),
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
                                                          text: listWishlist[index].address+"\n",
                                                          style: TextStyle(height: 1.3)
                                                        ),
                                                      ]
                                                    )
                                                  )
                                                ),
                                                new GestureDetector(
                                                  onTap: () {
                                                    _deleteWishlist(listWishlist[index].id, widget.userID);
                                                    print("HAPUS TAPPED");
                                                  },
                                                  child: ClipRRect(
                                                    borderRadius: BorderRadius.only(
                                                      topRight: Radius.circular(6),
                                                      bottomRight: Radius.circular(6),
                                                    ),
                                                    child: SizedBox(
                                                      width: 50, 
                                                      height: 100,
                                                      child: DecoratedBox(
                                                        decoration: const BoxDecoration(
                                                          color: Color(0xffBE0202)
                                                        ),
                                                        child: Align(
                                                          alignment: Alignment.center,
                                                          child: Text(
                                                            "HAPUS",
                                                            style: TextStyle(
                                                              color: Colors.white,
                                                              fontWeight: FontWeight.bold
                                                            )
                                                          )
                                                        )
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
                SizedBox(height: 16),
              ]
            ),
          )
        )
      )
    );
  }
  _deleteWishlist(int id, int userID) async{
    print("deletewishlist"+id.toString());
    WishlistService.delete(id);
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
            builder: (context) =>
                Wishlistkontrakan(userID: userID,)),
            (Route<dynamic> route) =>
        false);
  }
}