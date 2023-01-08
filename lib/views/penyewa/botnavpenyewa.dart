part of '../pages/pages.dart';


class Botnavpenyewa extends StatefulWidget {
  final int index;
  Botnavpenyewa({Key? key, required this.index, required this.userID}) : super(key: key);

  var userID;

  @override
  _BotnavpenyewaState createState() => _BotnavpenyewaState();
}

class _BotnavpenyewaState extends State<Botnavpenyewa> {
  int _currentIndex = 0;
  var userID;

  @override
  void initState() {
    _currentIndex = widget.index;
    userID = widget.userID;
    super.initState();
  }

  late final tabs = [
      Dashboardpenyewa(userID: userID), 
      Carikontrakanpenyewa(userID: userID),
      Profile(id: userID,),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xff0042C1),
        unselectedItemColor: Colors.grey.withOpacity(0.8),
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey[100],
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Browse"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: "Profile")
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
