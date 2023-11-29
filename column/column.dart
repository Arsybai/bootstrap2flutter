import 'package:flutter/material.dart';

Widget bootstrapColumns() {
  return Column(
    children: [
      // First Row with two columns
      Row(
        children: [
          Expanded(
            child: Container(
              height: 100,
              color: Colors.blue,
              child: Center(
                child: Text('Column 1'),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 100,
              color: Colors.green,
              child: Center(
                child: Text('Column 2'),
              ),
            ),
          ),
        ],
      ),
      
      // Second Row with three columns
      Row(
        children: [
          Expanded(
            child: Container(
              height: 100,
              color: Colors.red,
              child: Center(
                child: Text('Column 1'),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 100,
              color: Colors.yellow,
              child: Center(
                child: Text('Column 2'),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 100,
              color: Colors.orange,
              child: Center(
                child: Text('Column 3'),
              ),
            ),
          ),
        ],
      ),
    ],
  );
}
