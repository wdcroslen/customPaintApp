import 'package:flutter/material.dart';
class FaceOutlinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4.0
      ..color = Colors.indigo;

    // Left eye
    canvas.drawRRect(
      RRect.fromRectAndRadius(Rect.fromLTWH(20, 40, 100, 100), Radius.circular(20)),
      paint,
    );
    // Right eye
    canvas.drawOval(
      Rect.fromLTWH(size.width - 120, 40, 100, 100),
      paint,
    );
    // Mouth
    final mouth = Path();
    mouth.moveTo(size.width * 0.8, size.height * 0.6);
    mouth.arcToPoint(
      Offset(size.width * 0.2, size.height * 0.6),
      radius: Radius.circular(150),
    );
    mouth.arcToPoint(
      Offset(size.width * 0.8, size.height * 0.6),
      radius: Radius.circular(200),
      clockwise: false,
    );

    canvas.drawPath(mouth, paint);
  }

  @override
  bool shouldRepaint(FaceOutlinePainter oldDelegate) => false;
}

class Sky extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.fill
      ..strokeWidth = 4.0
      ..color = Colors.lightBlue;

    canvas.drawRect(const Offset(0, 0) & size, paint);
    paint.color = Colors.white;
    paint.style = PaintingStyle.stroke;
    canvas.drawRect(const Offset(5, 5) & Size(size.width-10, size.height-10), paint);
  }

  @override
  bool shouldRepaint(Sky oldDelegate) => false;
}

class Spiral extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4.0
      ..color = Colors.black;

    for (int i=0; i<size.width; i+=9){
      canvas.drawRect(Offset(i.toDouble(), i.toDouble()) & Size(size.width-i*2, size.height-i*2), paint);
    }
  }

  @override
  bool shouldRepaint(Spiral oldDelegate) => false;
}