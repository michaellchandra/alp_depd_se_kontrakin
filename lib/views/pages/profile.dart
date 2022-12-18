part of 'pages.dart';

class Profile extends StatefulWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
        painter: BluePainter5(),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.all(24),
          child: Column(
            children: <Widget>[
              SizedBox(height: 60),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Profile",
                    style: TextStyle(
                      fontSize: 28, 
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 50,
                  ),
                  SizedBox(width: 24),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Selyandaru R.",
                        style: TextStyle(
                          fontSize: 24, 
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          
                        }, 
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          side: const BorderSide(
                            color: Color(0xff0042C1),
                          )
                        ),
                        child: Text(
                          "Edit Profile",
                          style: TextStyle(
                            color: Color(0xff0042C1)
                          ),
                        )
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 40),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Kontrakan",
                    style: TextStyle(
                      fontSize: 20, 
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              SizedBox(height: 8),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 4,
                child: InkWell(
                  splashColor: Colors.blue.withAlpha(30),
                  onTap: () {
                    Navigator.pushAndRemoveUntil<dynamic>(
                      context, 
                      MaterialPageRoute<dynamic>(
                        builder: (context) => Login()
                      ), 
                      (route) => false
                    );
                  },
                  child: SizedBox(
                    width: 400,
                    height: 65,
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: 16),
                        Icon(Icons.home, size: 40),
                        SizedBox(width: 16),
                        Text(
                          "Manage Kontrakan",
                          style: TextStyle(
                            fontSize: 18,
                          )
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 24),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Dukungan & Bantuan",
                    style: TextStyle(
                      fontSize: 20, 
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              SizedBox(height: 8),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 4,
                child: InkWell(
                  splashColor: Colors.blue.withAlpha(30),
                  onTap: () {
                    Navigator.pushAndRemoveUntil<dynamic>(
                      context, 
                      MaterialPageRoute<dynamic>(
                        builder: (context) => Login()
                      ), 
                      (route) => false
                    );
                  },
                  child: SizedBox(
                    width: 400,
                    height: 65,
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: 16),
                        Icon(Icons.phone, size: 40),
                        SizedBox(width: 16),
                        Text(
                          "Customer Service",
                          style: TextStyle(
                            fontSize: 18,
                          )
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 24),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Lainnya",
                    style: TextStyle(
                      fontSize: 20, 
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              SizedBox(height: 8),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 4,
                child: InkWell(
                  splashColor: Colors.blue.withAlpha(30),
                  onTap: () {
                    Navigator.pushAndRemoveUntil<dynamic>(
                      context, 
                      MaterialPageRoute<dynamic>(
                        builder: (context) => Login()
                      ), 
                      (route) => false
                    );
                  },
                  child: SizedBox(
                    width: 400,
                    height: 65,
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: 16),
                        Icon(Icons.settings, size: 40),
                        SizedBox(width: 16),
                        Text(
                          "Customer Service",
                          style: TextStyle(
                            fontSize: 18,
                          )
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 4,
                child: InkWell(
                  splashColor: Colors.blue.withAlpha(30),
                  onTap: () {
                    Navigator.pushAndRemoveUntil<dynamic>(
                      context, 
                      MaterialPageRoute<dynamic>(
                        builder: (context) => Login()
                      ), 
                      (route) => false
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red.shade800
                    ),
                    child: SizedBox(
                      width: 400,
                      height: 65,
                      child: Row(
                        children: <Widget>[
                          SizedBox(width: 16),
                          Icon(Icons.logout_outlined, size: 40, color: Colors.white),
                          SizedBox(width: 16),
                          Text(
                            "Sign Out",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white
                            )
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        )
      )
    );
  }
}