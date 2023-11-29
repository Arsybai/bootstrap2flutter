import 'package:flutter/material.dart';
import 'path/to/gutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Bootstrap Grid'),
        ),
        body: MyGrid(),
      ),
    );
  }
}

class MyGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BootstrapGutter.buildBootstrapGrid(); // Call the function from BootstrapGutter class
  }
}
