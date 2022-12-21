part of 'pages.dart';

class Botnav extends StatefulWidget {
  final int index;
  const Botnav({ Key? key, required this.index }) : super(key: key);

  @override
  _BotnavState createState() => _BotnavState();
}

class _BotnavState extends State<Botnav> {

  int _currentIndex = 0;

  @override
  void initState() {
    _currentIndex = widget.index;
    super.initState();
  }

  final tabs = [
    Dashboard(),
    Center(child: Text("Browse")),
    Profile()
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
            icon: Icon(Icons.home_rounded),
            label: "Home"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Browse"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Profile"
          )
        ],
        onTap: (index) {
          setState((){
            _currentIndex = index;
          });
        },
      ),
    );
  }
}