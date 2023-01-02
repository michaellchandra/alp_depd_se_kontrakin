import 'dart:convert';

import 'package:alp_depd_se_kontrakin/views/pages/pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CheckAuth extends StatefulWidget {
  @override
  _CheckAuthState createState() => _CheckAuthState();
}

class _CheckAuthState extends State<CheckAuth> {
  bool isAuth = false;
  bool isPenyewa = true;
  int userId = 0;

  @override
  void initState() {
    super.initState();
    _checkIfLoggedIn();
  }

  void _checkIfLoggedIn() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    var token = localStorage.getString('token');
    var role = localStorage.getString('role');
    if (token != null && role != null) {
      if (mounted) {
        setState(() {
          isAuth = true;
          if (role.compareTo('"owner"') == 0) {
            isPenyewa = false;
          }
          var user = jsonDecode(localStorage.getString('user') ?? '');
          userId = user['id'];
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget child;
    if (isAuth && isPenyewa) {
      child = Botnav(
        index: 0,
        userID: userId,
      );
    } else if (isAuth && isPenyewa == false) {
      child = Botnav(
        index: 2,
        userID: userId,
      );
    } else {
      child = Pilihrole();
    }

    return Scaffold(
      body: child,
    );
  }
}
