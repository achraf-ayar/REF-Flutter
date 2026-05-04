import 'package:flutter/material.dart';

class ShapePainter extends CustomPainter {
  double radius = 50;
  ShapePainter({required this.radius});

  void paint(Canvas canvas, Size size) {
    double xc = size.width / 2;
    double yc = size.height / 2;

    final paint = 
    Paint()
    ..color = Colors.deepOrange
    ..strokeWidth = 6
    ..style = PaintingStyle.stroke;

    canvas.drawCircle(Offset(xc, yc), radius, paint);
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
  
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}