import 'package:flutter/material.dart';

// A utility class for creating a Bootstrap-like grid with gutter spacing.
class BootstrapGutter {
  // Builds a GridView with Bootstrap-like spacing.
  static Widget buildBootstrapGrid() {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,          // Set the number of columns in the grid
        crossAxisSpacing: 16.0,     // Set the horizontal spacing between columns (Bootstrap gutter)
        mainAxisSpacing: 16.0,      // Set the vertical spacing between rows (Bootstrap gutter)
      ),
      itemCount: 10,                // Set the number of items in the grid
      itemBuilder: (BuildContext context, int index) {
        return Container(
          color: Colors.blue,       // Set the background color of each grid item
          child: Center(
            child: Text(
              'Item $index',
              style: TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }
}
