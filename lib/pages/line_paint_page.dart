import 'package:flutter/material.dart';

class Line extends StatelessWidget {
  const Line({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          height: 300,
          color: Colors.white,
          width: 300,
          child: CustomPaint(
            painter: LinePainter(),
          )),
    );
  }
}

class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint

    final paint = Paint()
      ..strokeWidth = 10
      ..color = Colors.blue
      ..strokeCap = StrokeCap.round;

    canvas.drawLine(
      Offset(size.width * 1 / 6, size.height * 1 / 2),
      Offset(size.width * 5 / 6, size.height * 1 / 2),
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}
