import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

part 'login.dart';
part 'register.dart';
part 'pilihrole.dart';

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

    ovalPath2.moveTo(width * 0.5, 0);

    ovalPath2.quadraticBezierTo(width * 0.5, height * 0.2, width, height * 0);
    
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

    ovalPath2.moveTo(width * 0.3, 0);

    ovalPath2.quadraticBezierTo(width * 1.3, height * 0.5, width, 0);
    
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