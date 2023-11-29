import 'package:flutter/material.dart';
import 'button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Bootstrap Buttons Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BootstrapButton("Primary", "primary", () {
                // Primary button pressed
                print("Primary button pressed");
              }),
              SizedBox(height: 10),
              BootstrapButton("Secondary", "secondary", () {
                // Secondary button pressed
                print("Secondary button pressed");
              }),
              SizedBox(height: 10),
              BootstrapButton("Success", "success", () {
                // Success button pressed
                print("Success button pressed");
              }),
              SizedBox(height: 10),
              // Add more buttons for other types...
            ],
          ),
        ),
      ),
    );
  }
}
