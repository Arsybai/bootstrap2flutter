import 'package:flutter/material.dart';
import 'select.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Bootstrap Select'),
        ),
        body: Center(
          child: BootstrapSelect(), // Use the BootstrapSelect widget
        ),
      ),
    );
  }
}
