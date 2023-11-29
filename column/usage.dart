import 'package:flutter/material.dart';
import 'columns_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Bootstrap Columns'),
        ),
        body: bootstrapColumns(), // Call the function here
      ),
    );
  }
}
