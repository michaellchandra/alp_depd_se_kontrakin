import 'dart:convert';
import 'dart:io';

import 'package:alp_depd_se_kontrakin/models/kontrakan.dart';
import 'package:alp_depd_se_kontrakin/models/province.dart';
import 'package:alp_depd_se_kontrakin/models/city.dart';
import 'package:alp_depd_se_kontrakin/models/transaksi.dart';
import 'package:alp_depd_se_kontrakin/models/transaksidetails.dart';
import 'package:alp_depd_se_kontrakin/views/network/kontrakanservice.dart';
import 'package:alp_depd_se_kontrakin/views/pages/checkauth.dart';
import 'package:alp_depd_se_kontrakin/views/widgets/Kontrakan_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lazy_loading_list/lazy_loading_list.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';

import '../network/transaksiservice.dart';
import '../network/cityservice.dart';
import '../widgets/uiloading.dart';

part 'login.dart';
part 'register.dart';
part 'pilihrole.dart';
part 'splash.dart';
part 'dashboard.dart';
part 'listtransaksi.dart';
part 'profile.dart';
part 'carikontrakan.dart';
part 'managekontrakan.dart';
part 'detailkontrakan.dart';
part 'tambahkontrakan.dart';
part 'editkontrakan.dart';
part 'botnav.dart';
part 'detailtransaksi.dart';
part '../penyewa/dashboardpenyewa.dart';
part '../penyewa/profilepenyewa.dart';
part '../penyewa/wishlistkontrakan.dart';
part '../penyewa/riwayattransaksi.dart';
part '../penyewa/detailtransaksipenyewa.dart';
part '../penyewa/detailkontrakanpenyewa.dart';
part '../penyewa/carikontrakanpenyewa.dart';
part '../penyewa/detailwishlistkontrakan.dart';
part '../network/api.dart';

class BluePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;
    Paint paint = Paint();

    Path mainBackground = Path();
    mainBackground.addRect(Rect.fromLTRB(0, 0, width, height));
    paint.color = Colors.white;
    canvas.drawPath(mainBackground, paint);

    Path ovalPath = Path();

    ovalPath.moveTo(0, height * 0.9);

    ovalPath.quadraticBezierTo(width * 0.2, height * 0.9, width * 0.3, height);

    ovalPath.lineTo(0, height);

    ovalPath.close();

    paint.color = const Color(0xff0042C1);
    canvas.drawPath(ovalPath, paint);

    Path ovalPath2 = Path();

    ovalPath2.moveTo(width * 0.7, 0);

    ovalPath2.quadraticBezierTo(
        width * 0.7, height * 0.15, width, height * 0.15);

    ovalPath2.lineTo(width, 0);

    ovalPath2.close();

    paint.color = const Color(0xff0042C1).withOpacity(0.3);
    canvas.drawPath(ovalPath2, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}

class BluePainter2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;
    Paint paint = Paint();

    Path mainBackground = Path();
    mainBackground.addRect(Rect.fromLTRB(0, 0, width, height));
    paint.color = Colors.white;
    canvas.drawPath(mainBackground, paint);

    Path ovalPath = Path();

    ovalPath.moveTo(0, height * 0.8);

    ovalPath.quadraticBezierTo(width * 0.5, height * 0.7, width * 0.7, height);

    ovalPath.lineTo(0, height);

    ovalPath.close();

    paint.color = const Color(0xff0042C1);
    canvas.drawPath(ovalPath, paint);

    Path ovalPath2 = Path();

    ovalPath2.moveTo(width * 0.5, 0);

    ovalPath2.quadraticBezierTo(
        width * 0.5, height * 0.25, width, height * 0.23);

    ovalPath2.lineTo(width, 0);

    ovalPath2.close();

    paint.color = const Color(0xff0042C1).withOpacity(0.3);
    canvas.drawPath(ovalPath2, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}

class BluePainter3 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;
    Paint paint = Paint();

    Path mainBackground = Path();
    mainBackground.addRect(Rect.fromLTRB(0, 0, width, height));
    paint.color = Colors.white;
    canvas.drawPath(mainBackground, paint);

    Path ovalPath = Path();

    ovalPath.moveTo(0, height * 0.8);

    ovalPath.quadraticBezierTo(width * 0.25, height * 0.9, width * 0.3, height);

    ovalPath.lineTo(0, height);

    ovalPath.close();

    paint.color = const Color(0xff0042C1).withOpacity(0.3);
    canvas.drawPath(ovalPath, paint);

    Path ovalPath2 = Path();

    ovalPath2.moveTo(width * 0.65, 0);

    ovalPath2.quadraticBezierTo(
        width * 0.7, height * 0.15, width, height * 0.15);

    ovalPath2.lineTo(width, 0);

    ovalPath2.close();

    paint.color = const Color(0xff0042C1).withOpacity(0.3);
    canvas.drawPath(ovalPath2, paint);

    Path ovalPath3 = Path();

    ovalPath3.moveTo(width * 0.3, 0);

    ovalPath3.quadraticBezierTo(width * 0.3, height * 0.15, 0, height * 0.15);

    ovalPath3.lineTo(0, 0);

    ovalPath3.close();

    paint.color = const Color(0xff0042C1);
    canvas.drawPath(ovalPath3, paint);

    Path ovalPath4 = Path();

    ovalPath4.moveTo(width * 0.8, height);

    ovalPath4.quadraticBezierTo(width * 0.8, height * 0.9, width, height * 0.9);

    ovalPath4.lineTo(width, height);

    ovalPath4.close();

    paint.color = const Color(0xff0042C1);
    canvas.drawPath(ovalPath4, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}

class BluePainter4 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;
    Paint paint = Paint();

    Path mainBackground = Path();
    mainBackground.addRect(Rect.fromLTRB(0, 0, width, height));
    paint.color = Colors.white;
    canvas.drawPath(mainBackground, paint);

    Path ovalPath3 = Path();

    ovalPath3.moveTo(width * 0.2, 0);

    ovalPath3.quadraticBezierTo(width * 0.2, height * 0.1, 0, height * 0.1);

    ovalPath3.lineTo(0, 0);

    ovalPath3.close();

    paint.color = const Color(0xff0042C1);
    canvas.drawPath(ovalPath3, paint);

    Path ovalPath4 = Path();

    ovalPath4.moveTo(width * 0.7, height);

    ovalPath4.quadraticBezierTo(
        width * 0.7, height * 0.85, width, height * 0.85);

    ovalPath4.lineTo(width, height);

    ovalPath4.close();

    paint.color = const Color(0xff0042C1).withOpacity(0.3);
    canvas.drawPath(ovalPath4, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}

class BluePainter5 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;
    Paint paint = Paint();

    Path mainBackground = Path();
    mainBackground.addRect(Rect.fromLTRB(0, 0, width, height));
    paint.color = Colors.white;
    canvas.drawPath(mainBackground, paint);

    Path ovalPath = Path();

    ovalPath.moveTo(0, height * 0.92);

    ovalPath.quadraticBezierTo(
        width * 0.47, height * 0.91, width * 0.5, height);

    ovalPath.lineTo(0, height);

    ovalPath.close();

    paint.color = const Color(0xff0042C1);
    canvas.drawPath(ovalPath, paint);

    Path ovalPath2 = Path();

    ovalPath2.moveTo(width * 0.7, 0);

    ovalPath2.quadraticBezierTo(
        width * 0.7, height * 0.15, width, height * 0.15);

    ovalPath2.lineTo(width, 0);

    ovalPath2.close();

    paint.color = const Color(0xff0042C1).withOpacity(0.3);
    canvas.drawPath(ovalPath2, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}

class BluePainter6 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;
    Paint paint = Paint();

    Path mainBackground = Path();
    mainBackground.addRect(Rect.fromLTRB(0, 0, width, height));
    paint.color = Colors.white;
    canvas.drawPath(mainBackground, paint);

    Path ovalPath3 = Path();

    ovalPath3.moveTo(width * 0.2, 0);

    ovalPath3.quadraticBezierTo(width * 0.2, height * 0.1, 0, height * 0.1);

    ovalPath3.lineTo(0, 0);

    ovalPath3.close();

    paint.color = const Color(0xff0042C1);
    canvas.drawPath(ovalPath3, paint);

    Path ovalPath2 = Path();

    ovalPath2.moveTo(width * 0.7, 0);

    ovalPath2.quadraticBezierTo(
        width * 0.7, height * 0.15, width, height * 0.15);

    ovalPath2.lineTo(width, 0);

    ovalPath2.close();

    paint.color = const Color(0xff0042C1).withOpacity(0.3);
    canvas.drawPath(ovalPath2, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
