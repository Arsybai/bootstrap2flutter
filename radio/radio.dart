import 'package:flutter/material.dart';

class BootstrapRadio extends StatefulWidget {
  @override
  _BootstrapRadioState createState() => _BootstrapRadioState();
}

class _BootstrapRadioState extends State<BootstrapRadio> {
  // Initialize selectedValue with a default value
  String selectedValue = 'Option 1';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Radio button for Option 1
        RadioListTile<String>(
          title: Text('Option 1'),
          value: 'Option 1',
          groupValue: selectedValue,
          onChanged: (value) {
            setState(() {
              selectedValue = value;
            });
          },
        ),
        // Radio button for Option 2
        RadioListTile<String>(
          title: Text('Option 2'),
          value: 'Option 2',
          groupValue: selectedValue,
          onChanged: (value) {
            setState(() {
              selectedValue = value;
            });
          },
        ),
        // Radio button for Option 3
        RadioListTile<String>(
          title: Text('Option 3'),
          value: 'Option 3',
          groupValue: selectedValue,
          onChanged: (value) {
            setState(() {
              selectedValue = value;
            });
          },
        ),
      ],
    );
  }
}
