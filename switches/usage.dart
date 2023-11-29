import 'package:flutter/material.dart';
import 'switches.dart'; // Import the switches.dart file

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Switch Style'),
        ),
        body: Center(
          child: BootstrapSwitch(), // Use BootstrapSwitch widget
        ),
      ),
    );
  }
}
