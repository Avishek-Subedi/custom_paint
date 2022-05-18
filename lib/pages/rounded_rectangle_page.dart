import 'package:flutter/material.dart';

class RoundedRectangle extends StatelessWidget {
  const RoundedRectangle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 300,
        width: 300,
        color: Colors.white,
        child: CustomPaint(
          painter: RoundedRectanglePainter(),
          // child: Text("Custom  Paint "),
        ),
      ),
    );
  }
}

class RoundedRectanglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
