import 'package:flutter/material.dart';

class Rectangle extends StatelessWidget {
  const Rectangle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          height: 300,
          color: Colors.white,
          width: 300,
          child: CustomPaint(
            painter: RPainter(),
          )),
    );
  }
}

class RPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint

    final paint = Paint()
      ..strokeWidth = 10
      ..color = Colors.blue
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    final a = Offset(size.width * 1 / 4, size.height * 1 / 4);
    final b = Offset(size.width * 3 / 4, size.height * 3 / 4);

    final rect = Rect.fromPoints(a, b);

    canvas.drawRect(rect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
