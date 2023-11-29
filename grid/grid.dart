import 'package:flutter/material.dart';

class BootstrapGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // The main container that holds the entire grid system
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          // Row 1
          Row(
            children: [
              // Column 1
              Expanded(
                child: Container(
                  color: Colors.blue,
                  height: 100.0,
                  child: Center(child: Text("Column 1")),
                ),
              ),
              // Column 2
              Expanded(
                child: Container(
                  color: Colors.green,
                  height: 100.0,
                  child: Center(child: Text("Column 2")),
                ),
              ),
              // Column 3
              Expanded(
                child: Container(
                  color: Colors.orange,
                  height: 100.0,
                  child: Center(child: Text("Column 3")),
                ),
              ),
            ],
          ),
          SizedBox(height: 16.0), // Add spacing between rows
          // Row 2
          Row(
            children: [
              // Column 1
              Expanded(
                child: Container(
                  color: Colors.red,
                  height: 100.0,
                  child: Center(child: Text("Column 1")),
                ),
              ),
              // Column 2
              Expanded(
                child: Container(
                  color: Colors.purple,
                  height: 100.0,
                  child: Center(child: Text("Column 2")),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}