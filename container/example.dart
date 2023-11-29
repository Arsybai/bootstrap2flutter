import 'package:flutter/material.dart';
import 'path/to/container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            BootstrapContainer(
              fluidMaxWidth: double.infinity, // Extra small screens
              child: Container(
                color: Colors.red,
                child: Text("Content for container"),
              ),
            ),
            BootstrapContainer(
              fluidMaxWidth: 540.0, // Small screens
              child: Container(
                color: Colors.blue,
                child: Text("Content for container-sm"),
              ),
            ),
            BootstrapContainer(
              fluidMaxWidth: 720.0, // Medium screens
              child: Container(
                color: Colors.green,
                child: Text("Content for container-md"),
              ),
            ),
            BootstrapContainer(
              fluidMaxWidth: 960.0, // Large screens
              child: Container(
                color: Colors.orange,
                child: Text("Content for container-lg"),
              ),
            ),
            BootstrapContainer(
              fluidMaxWidth: 1140.0, // Extra large screens
              child: Container(
                color: Colors.purple,
                child: Text("Content for container-xl"),
              ),
            ),
            BootstrapContainer(
              fluidMaxWidth: 1320.0, // Extra extra large screens
              child: Container(
                color: Colors.yellow,
                child: Text("Content for container-xxl"),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
