import 'package:flutter/material.dart';

class BootstrapSelect extends StatefulWidget {
  @override
  _BootstrapSelectState createState() => _BootstrapSelectState();
}

class _BootstrapSelectState extends State<BootstrapSelect> {
  // Initialize the selected value with a default value
  String? selectedValue = 'Open this select menu';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: DropdownButton<String>(
        // Display the selected value
        value: selectedValue,
        icon: Icon(Icons.arrow_drop_down),
        iconSize: 24,
        elevation: 16,
        style: TextStyle(color: Colors.black),
        underline: Container(
          height: 2,
          color: Colors.blueAccent,
        ),
        // Callback when a new value is selected
        onChanged: (String? newValue) {
          setState(() {
            selectedValue = newValue; // Update the selected value
          });
        },
        // Define the dropdown items
        items: <String>['Open this select menu', 'One', 'Two', 'Three']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
