import 'package:flutter/material.dart';
import 'badge.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Badge Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BootstrapBadge("Primary", "primary"),
              SizedBox(height: 10),
              BootstrapBadge("Secondary", "secondary"),
              SizedBox(height: 10),
              BootstrapBadge("Success", "success"),
              SizedBox(height: 10),
              BootstrapBadge("Warning", "warning"),
              SizedBox(height: 10),
              BootstrapBadge("Info", "info"),
              SizedBox(height: 10),
              BootstrapBadge("Danger", "danger"),
            ],
          ),
        ),
      ),
    );
  }
}
