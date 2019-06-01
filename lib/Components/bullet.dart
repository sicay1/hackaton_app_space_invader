import 'package:flutter/material.dart';

class Bullet extends CustomPainter {
  final double _rectWidth;
  final double _rectHeight;
  Bullet(this._rectWidth, this._rectHeight);

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawRect(
      new Rect.fromLTRB(0.0, 0.0, this._rectWidth, _rectHeight),
      new Paint()..color = new Color(0xFF000000),
    );
  }

  @override
  bool shouldRepaint(Bullet oldDelegate) {
    return false;
  }
}
