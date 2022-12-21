import 'package:alp_depd_se_kontrakin/views/pages/pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CheckAuth extends StatefulWidget{
  @override
  _CheckAuthState createState() => _CheckAuthState();
}

class _CheckAuthState extends State<CheckAuth>{
  bool isAuth = false;
  bool isPenyewa = true;

  @override
  void initState(){
    super.initState();
    _checkIfLoggedIn();
  }

  void _checkIfLoggedIn() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    var token = localStorage.getString('token');
    var role = localStorage.getString('role');
    print(role!+'hehe');
    if(token != null && role != null){
      if(mounted){
        setState(() {
          isAuth = true;
          print(role.toString());
          if(role.compareTo('"owner"')==0){
            isPenyewa = false;
            print('hahah');
          }
        });
      }
    }
  }

  @override
  Widget build(BuildContext context){
    Widget child;
    if(isAuth && isPenyewa){
      child = Botnav(index: 0,);
    }else if(isAuth && isPenyewa == false){
      child = Botnav(index: 1);
    } else{
      child = Pilihrole();
    }

    return Scaffold(
      body: child,
    );
  }
}