import 'package:flutter/material.dart';
import 'radio.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Radio Buttons'),
        ),
        body: BootstrapRadio(),
      ),
    );
  }
}
