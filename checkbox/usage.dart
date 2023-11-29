import 'package:flutter/material.dart';
import 'checkbox.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Checkbox'),
        ),
        body: Center(
          child: BootstrapCheckbox(
            label: 'Remember me',
          ),
        ),
      ),
    );
  }
}
