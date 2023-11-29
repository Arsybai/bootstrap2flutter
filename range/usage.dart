import 'package:flutter/material.dart';
import 'range.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Range Input'),
        ),
        body: Center(
          child: BootstrapRange(), // Use BootstrapRange widget
        ),
      ),
    );
  }
}
