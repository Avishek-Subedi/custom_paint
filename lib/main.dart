import 'package:custom_paint/pages/line_paint_page.dart';
import 'package:custom_paint/pages/rectangle_paint_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: CustomPage(),
  ));
}

class CustomPage extends StatelessWidget {
  const CustomPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: Rectangle(),
    );
  }
}
